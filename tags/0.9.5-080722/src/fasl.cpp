/*
    Ypsilon Scheme System
    Copyright (c) 2004-2008 Y.FUJITA / LittleWing Company Limited.
    See license.txt for terms and conditions of use
*/

#include "core.h"
#include "vm.h"
#include "fasl.h"
#include "arith.h"

fasl_printer_t::fasl_printer_t(VM* vm, scm_port_t port) {
    m_vm = vm;
    m_port = port;
    m_lites = make_hashtable(vm->m_heap, SCM_HASHTABLE_TYPE_EQ, lookup_mutable_hashtable_size(0));
    int depth = 1024;
    m_stack = (scm_obj_t*)malloc(sizeof(scm_obj_t) * depth);
    m_stack_limit = m_stack + depth;
    m_sp = m_stack;
}

fasl_printer_t::~fasl_printer_t() {
    free(m_stack);
}

void
fasl_printer_t::scan(scm_obj_t obj)
{
loop:
    if (obj == scm_nil) return;
    if (SYMBOLP(obj) || STRINGP(obj)) {
        if (get_hashtable(m_lites, obj) != scm_undef) return;
        m_vm->m_heap->write_barrier(obj);
        int nsize = put_hashtable(m_lites, obj, MAKEFIXNUM(m_lites->datum->live));
        if (nsize) rehash_hashtable(m_vm->m_heap, m_lites, nsize);
        return;
    }
    if (PAIRP(obj)) {
        scan(CAR(obj));
        obj = CDR(obj);
        goto loop;
    }
    if (VECTORP(obj)) {
        scm_vector_t vector = (scm_vector_t)obj;
        int count = HDR_VECTOR_COUNT(vector->hdr);
        if (count == 0) return;
        scm_obj_t* elts = vector->elts;
        for (int i = 0; i < count; i++) scan(elts[i]);
        return;
    }
    if (CHARP(obj) || BVECTORP(obj) || BOOLP(obj) || FIXNUMP(obj) || FLONUMP(obj) || BIGNUMP(obj) || RATIONALP(obj) || COMPLEXP(obj)) return;
    fatal("%s:%u datum not supported in fasl", __FILE__, __LINE__);
}

void
fasl_printer_t::put_list(scm_obj_t obj)
{
    int count = 0;
    while (PAIRP(obj)) {
        push(CAR(obj));
        obj = CDR(obj);
        count++;
    }
    if (obj == scm_nil) {
        emit_u8(FASL_TAG_PLIST);
        emit_u32(count);
    } else {
        emit_u8(FASL_TAG_DLIST);
        emit_u32(count);
        put_datum(obj);
    }
    while (count--) {
        obj = pop();
        assert(obj);
        put_datum(obj);
    }
}

void
fasl_printer_t::put_datum(scm_obj_t obj)
{
    if (obj == scm_nil) {
        emit_u8(FASL_TAG_NIL);
        return;
    }
    if (obj == scm_true) {
        emit_u8(FASL_TAG_T);
        return;
    }
    if (obj == scm_false) {
        emit_u8(FASL_TAG_F);
        return;
    }
    if (SYMBOLP(obj) || STRINGP(obj)) {
        scm_obj_t id = get_hashtable(m_lites, obj);
        emit_u8(FASL_TAG_LOOKUP);
        emit_u32((uint32_t)FIXNUM(id));
        return;
    }
    if (FIXNUMP(obj)) {
        assert(sizeof(intptr_t) == sizeof(uint32_t));
        emit_u8(FASL_TAG_FIXNUM);
        emit_u32((uint32_t)FIXNUM(obj));
        return;
    }
    if (PAIRP(obj)) {
        put_list(obj);
        return;
    }
    if (VECTORP(obj)) {
        scm_vector_t vector = (scm_vector_t)obj;
        int count = HDR_VECTOR_COUNT(vector->hdr);
        emit_u8(FASL_TAG_VECTOR);
        emit_u32(count);
        scm_obj_t* elts = vector->elts;
        for (int i = 0; i < count; i++) put_datum(elts[i]);
        return;
    }
    if (BVECTORP(obj)) {
        scm_bvector_t bv = (scm_bvector_t)obj;
        int count = bv->count;
        emit_u8(FASL_TAG_BVECTOR);
        emit_u32(count);
        for (int i = 0; i < count; i++) emit_u8(bv->elts[i]);
        return;
    }
    if (FLONUMP(obj)) {
        union {
            double      f64;
            uint64_t    u64;
        } n;
        scm_flonum_t flonum = (scm_flonum_t)obj;
        n.f64 = flonum->value;
        emit_u8(FASL_TAG_FLONUM);
        emit_u64(n.u64);
        return;
    }
    if (CHARP(obj)) {
        scm_char_t ch = (scm_char_t)obj;
        emit_u8(FASL_TAG_CHAR);
        emit_u32(CHAR(ch));
        return;
    }
    if (BIGNUMP(obj)) {
        scm_bignum_t bn = (scm_bignum_t)obj;
        assert(sizeof(bn->elts[0]) == sizeof(uint32_t));
        int sign = bn_get_sign(bn); // 0 or 1 or -1
        int count = bn_get_count(bn);
        emit_u8(FASL_TAG_BIGNUM);
        emit_u32(sign);
        emit_u32(count);
        for (int i = 0; i < count; i++) emit_u32(bn->elts[i]);
        return;
    }
    if (RATIONALP(obj)) {
        scm_rational_t rat = (scm_rational_t)obj;
        emit_u8(FASL_TAG_RATIONAL);
        put_datum(rat->nume);
        put_datum(rat->deno);
        return;
    }
    if (COMPLEXP(obj)) {
        scm_complex_t comp = (scm_complex_t)obj;
        emit_u8(FASL_TAG_COMPLEX);
        put_datum(comp->real);
        put_datum(comp->imag);
        return;
    }
    fatal("%s:%u datum not supported in fasl", __FILE__, __LINE__);
}

void
fasl_printer_t::put_lites()
{
    scm_obj_t* lites = (scm_obj_t*)calloc(m_lites->datum->live, sizeof(scm_obj_t));
    try {
        hashtable_rec_t* ht_datum = m_lites->datum;
        int nsize = m_lites->datum->capacity;
        for (int i = 0; i < nsize; i++) {
            scm_obj_t key = ht_datum->elts[i];
            scm_obj_t value = ht_datum->elts[i + nsize];
            if (CELLP(key)) {
                assert(FIXNUM(value) < m_lites->datum->live);
                lites[FIXNUM(value)] = key;
            }
        }
        emit_u32(m_lites->datum->live);
        for (int i = 0; i < m_lites->datum->live; i++) {
            if (SYMBOLP(lites[i])) {
                scm_symbol_t symbol = (scm_symbol_t)lites[i];
                emit_u8(FASL_TAG_SYMBOL);
                emit_u32(i);
                int n = HDR_SYMBOL_SIZE(symbol->hdr);
                emit_u32(n);
                emit_string(symbol->name, n);
                continue;
            }
            if (STRINGP(lites[i])) {
                scm_string_t string = (scm_string_t)lites[i];
                emit_u8(FASL_TAG_STRING);
                emit_u32(i);
                int n = HDR_STRING_SIZE(string->hdr);
                emit_u32(n);
                emit_string(string->name, n);
                continue;
            }
        }
    } catch (...) {
        free(lites);
        throw;
    }
    free(lites);
}

void
fasl_printer_t::put(scm_obj_t obj)
{
    scoped_lock lock(m_lites->lock);
    scan(obj);
    port_puts(m_port, "\n#!fasl0\n");
    put_lites();
    put_datum(obj);
}

scm_obj_t
fasl_reader_t::get_datum()
{
    uint8_t octet = fetch_u8();
    switch (octet) {
    case FASL_EOF:
        return scm_eof;
    case FASL_TAG_LOOKUP: {
        uint32_t uid = fetch_u32();
        return m_lites[uid];
    }
    case FASL_TAG_FIXNUM: {
        intptr_t value = (intptr_t)fetch_u32();
        return MAKEFIXNUM(value);
    }
    case FASL_TAG_PLIST: {
        int count = fetch_u32();
        scm_obj_t lst = scm_nil;
        for (int i = 0; i < count; i++) {
            lst = make_pair(m_vm->m_heap, get_datum(), lst);
        }
        return lst;
    }
    case FASL_TAG_DLIST: {
        int count = fetch_u32();
        scm_obj_t lst = get_datum();
        for (int i = 0; i < count; i++) {
            lst = make_pair(m_vm->m_heap, get_datum(), lst);
        }
        return lst;
    }
    case FASL_TAG_VECTOR: {
        int count = fetch_u32();
        scm_vector_t vector = make_vector(m_vm->m_heap, count, scm_unspecified);
        scm_obj_t* elts = vector->elts;
        for (int i = 0; i < count; i++) elts[i] = get_datum();
        return vector;
    }
    case FASL_TAG_RATIONAL: {
        scm_obj_t nume = get_datum();
        scm_obj_t deno = get_datum();
        return make_rational(m_vm->m_heap, nume, deno);
    }

    case FASL_TAG_COMPLEX: {
        scm_obj_t real = get_datum();
        scm_obj_t imag = get_datum();
        return make_complex(m_vm->m_heap, real, imag);
    }
    case FASL_TAG_FLONUM: {
        union {
            double      f64;
            uint64_t    u64;
        } n;
        n.u64 = fetch_u64();
        return make_flonum(m_vm->m_heap, n.f64);
    }
    case FASL_TAG_BIGNUM: {
        int sign = (int)fetch_u32();
        int count = (int)fetch_u32();
        scm_bignum_t bn = make_bignum(m_vm->m_heap, count);
        assert(sizeof(bn->elts[0]) == sizeof(uint32_t));
        for (int i = 0; i < count; i++) bn->elts[i] = fetch_u32();
        bn_set_sign(bn, sign);
        return bn;
    }
    case FASL_TAG_BVECTOR: {
        uint32_t count = fetch_u32();
        scm_bvector_t bv = make_bvector(m_vm->m_heap, count);
        for (int i = 0; i < count; i++) bv->elts[i] = fetch_u8();
        return bv;
    }
    case FASL_TAG_CHAR:
        return MAKECHAR(fetch_u32());
    case FASL_TAG_NIL:
        return scm_nil;
    case FASL_TAG_T:
        return scm_true;
    case FASL_TAG_F:
        return scm_false;
    case FASL_TAG_SYMBOL:
    case FASL_TAG_STRING:
        break;
    }
    fatal("%s:%u invalid fasl format", __FILE__, __LINE__);
}

bool
fasl_reader_t::get_lites()
{
    int buflen = MAX_READ_STRING_LENGTH;
    char* buf = (char*)malloc(buflen + 1);
    if (port_lookahead_u8(m_port) == scm_eof) return true;
    int count = fetch_u32();
    m_lites = (scm_obj_t*)calloc(count, sizeof(scm_obj_t));
    for (int i = 0; i < count; i++) {
        uint8_t tag = fetch_u8();
        uint32_t uid = fetch_u32();
        uint32_t len = fetch_u32();
        if (len > buflen) {
            free(buf);
            buf = (char*)malloc(len + 1);
            buflen = len;
        }
        for (int i = 0; i < len; i++) buf[i] = fetch_u8();
        buf[len] = 0;
        if (tag == FASL_TAG_SYMBOL) m_lites[uid] = make_symbol(m_vm->m_heap, buf, len);
        else m_lites[uid] = make_string_literal(m_vm->m_heap, buf, len);
    }
    free(buf);
    return false;
}

scm_obj_t
fasl_reader_t::get()
{
    if (get_lites()) return scm_eof;
    return get_datum();
}