#!nobacktrace
;;; Ypsilon Scheme System
;;; Copyright (c) 2004-2009 Y.FUJITA / LittleWing Company Limited.
;;; See license.txt for terms and conditions of use.

(library (ypsilon gtk constants)

  (export GTK_ACCEL_LOCKED
          GTK_ACCEL_MASK
          GTK_ACCEL_VISIBLE
          GTK_ANCHOR_CENTER
          GTK_ANCHOR_E
          GTK_ANCHOR_EAST
          GTK_ANCHOR_N
          GTK_ANCHOR_NE
          GTK_ANCHOR_NORTH
          GTK_ANCHOR_NORTH_EAST
          GTK_ANCHOR_NORTH_WEST
          GTK_ANCHOR_NW
          GTK_ANCHOR_S
          GTK_ANCHOR_SE
          GTK_ANCHOR_SOUTH
          GTK_ANCHOR_SOUTH_EAST
          GTK_ANCHOR_SOUTH_WEST
          GTK_ANCHOR_SW
          GTK_ANCHOR_W
          GTK_ANCHOR_WEST
          GTK_APP_PAINTABLE
          GTK_ARROWS_BOTH
          GTK_ARROWS_END
          GTK_ARROWS_START
          GTK_ARROW_DOWN
          GTK_ARROW_LEFT
          GTK_ARROW_NONE
          GTK_ARROW_RIGHT
          GTK_ARROW_UP
          GTK_ASSISTANT_PAGE_CONFIRM
          GTK_ASSISTANT_PAGE_CONTENT
          GTK_ASSISTANT_PAGE_INTRO
          GTK_ASSISTANT_PAGE_PROGRESS
          GTK_ASSISTANT_PAGE_SUMMARY
          GTK_BUILDER_ERROR_DUPLICATE_ID
          GTK_BUILDER_ERROR_INVALID_ATTRIBUTE
          GTK_BUILDER_ERROR_INVALID_TAG
          GTK_BUILDER_ERROR_INVALID_TYPE_FUNCTION
          GTK_BUILDER_ERROR_INVALID_VALUE
          GTK_BUILDER_ERROR_MISSING_ATTRIBUTE
          GTK_BUILDER_ERROR_MISSING_PROPERTY_VALUE
          GTK_BUILDER_ERROR_UNHANDLED_TAG
          GTK_BUILDER_ERROR_VERSION_MISMATCH
          GTK_BUTTONBOX_CENTER
          GTK_BUTTONBOX_DEFAULT_STYLE
          GTK_BUTTONBOX_EDGE
          GTK_BUTTONBOX_END
          GTK_BUTTONBOX_SPREAD
          GTK_BUTTONBOX_START
          GTK_BUTTONS_CANCEL
          GTK_BUTTONS_CLOSE
          GTK_BUTTONS_NONE
          GTK_BUTTONS_OK
          GTK_BUTTONS_OK_CANCEL
          GTK_BUTTONS_YES_NO
          GTK_CALENDAR_NO_MONTH_CHANGE
          GTK_CALENDAR_SHOW_DAY_NAMES
          GTK_CALENDAR_SHOW_DETAILS
          GTK_CALENDAR_SHOW_HEADING
          GTK_CALENDAR_SHOW_WEEK_NUMBERS
          GTK_CALENDAR_WEEK_START_MONDAY
          GTK_CAN_DEFAULT
          GTK_CAN_FOCUS
          GTK_CELL_RENDERER_ACCEL_MODE_GTK
          GTK_CELL_RENDERER_ACCEL_MODE_OTHER
          GTK_CELL_RENDERER_FOCUSED
          GTK_CELL_RENDERER_INSENSITIVE
          GTK_CELL_RENDERER_MODE_ACTIVATABLE
          GTK_CELL_RENDERER_MODE_EDITABLE
          GTK_CELL_RENDERER_MODE_INERT
          GTK_CELL_RENDERER_PRELIT
          GTK_CELL_RENDERER_SELECTED
          GTK_CELL_RENDERER_SORTED
          GTK_CENTIMETERS
          GTK_COMPOSITE_CHILD
          GTK_CORNER_BOTTOM_LEFT
          GTK_CORNER_BOTTOM_RIGHT
          GTK_CORNER_TOP_LEFT
          GTK_CORNER_TOP_RIGHT
          GTK_CURVE_TYPE_FREE
          GTK_CURVE_TYPE_LINEAR
          GTK_CURVE_TYPE_SPLINE
          GTK_DELETE_CHARS
          GTK_DELETE_DISPLAY_LINES
          GTK_DELETE_DISPLAY_LINE_ENDS
          GTK_DELETE_PARAGRAPHS
          GTK_DELETE_PARAGRAPH_ENDS
          GTK_DELETE_WHITESPACE
          GTK_DELETE_WORDS
          GTK_DELETE_WORD_ENDS
          GTK_DIALOG_DESTROY_WITH_PARENT
          GTK_DIALOG_MODAL
          GTK_DIALOG_NO_SEPARATOR
          GTK_DIR_DOWN
          GTK_DIR_LEFT
          GTK_DIR_RIGHT
          GTK_DIR_TAB_BACKWARD
          GTK_DIR_TAB_FORWARD
          GTK_DIR_UP
          GTK_DOUBLE_BUFFERED
          GTK_DRAG_RESULT_ERROR
          GTK_DRAG_RESULT_GRAB_BROKEN
          GTK_DRAG_RESULT_NO_TARGET
          GTK_DRAG_RESULT_SUCCESS
          GTK_DRAG_RESULT_TIMEOUT_EXPIRED
          GTK_DRAG_RESULT_USER_CANCELLED
          GTK_ENTRY_ICON_PRIMARY
          GTK_ENTRY_ICON_SECONDARY
          GTK_EXPAND
          GTK_EXPANDER_COLLAPSED
          GTK_EXPANDER_EXPANDED
          GTK_EXPANDER_SEMI_COLLAPSED
          GTK_EXPANDER_SEMI_EXPANDED
          GTK_FILE_CHOOSER_ACTION_CREATE_FOLDER
          GTK_FILE_CHOOSER_ACTION_OPEN
          GTK_FILE_CHOOSER_ACTION_SAVE
          GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER
          GTK_FILE_CHOOSER_CONFIRMATION_ACCEPT_FILENAME
          GTK_FILE_CHOOSER_CONFIRMATION_CONFIRM
          GTK_FILE_CHOOSER_CONFIRMATION_SELECT_AGAIN
          GTK_FILL
          GTK_HAS_DEFAULT
          GTK_HAS_FOCUS
          GTK_HAS_GRAB
          GTK_ICON_LOOKUP_FORCE_SIZE
          GTK_ICON_LOOKUP_FORCE_SVG
          GTK_ICON_LOOKUP_GENERIC_FALLBACK
          GTK_ICON_LOOKUP_NO_SVG
          GTK_ICON_LOOKUP_USE_BUILTIN
          GTK_ICON_SIZE_BUTTON
          GTK_ICON_SIZE_DIALOG
          GTK_ICON_SIZE_DND
          GTK_ICON_SIZE_INVALID
          GTK_ICON_SIZE_LARGE_TOOLBAR
          GTK_ICON_SIZE_MENU
          GTK_ICON_SIZE_SMALL_TOOLBAR
          GTK_ICON_VIEW_DROP_ABOVE
          GTK_ICON_VIEW_DROP_BELOW
          GTK_ICON_VIEW_DROP_INTO
          GTK_ICON_VIEW_DROP_LEFT
          GTK_ICON_VIEW_DROP_RIGHT
          GTK_ICON_VIEW_NO_DROP
          GTK_IMAGE_ANIMATION
          GTK_IMAGE_EMPTY
          GTK_IMAGE_GICON
          GTK_IMAGE_ICON_NAME
          GTK_IMAGE_ICON_SET
          GTK_IMAGE_IMAGE
          GTK_IMAGE_PIXBUF
          GTK_IMAGE_PIXMAP
          GTK_IMAGE_STOCK
          GTK_IM_PREEDIT_CALLBACK
          GTK_IM_PREEDIT_NONE
          GTK_IM_PREEDIT_NOTHING
          GTK_IM_STATUS_CALLBACK
          GTK_IM_STATUS_NONE
          GTK_IM_STATUS_NOTHING
          GTK_INCHES
          GTK_IN_DESTRUCTION
          GTK_JUSTIFY_CENTER
          GTK_JUSTIFY_FILL
          GTK_JUSTIFY_LEFT
          GTK_JUSTIFY_RIGHT
          GTK_MAPPED
          GTK_MENU_DIR_CHILD
          GTK_MENU_DIR_NEXT
          GTK_MENU_DIR_PARENT
          GTK_MENU_DIR_PREV
          GTK_MESSAGE_ERROR
          GTK_MESSAGE_INFO
          GTK_MESSAGE_OTHER
          GTK_MESSAGE_QUESTION
          GTK_MESSAGE_WARNING
          GTK_MOVEMENT_BUFFER_ENDS
          GTK_MOVEMENT_DISPLAY_LINES
          GTK_MOVEMENT_DISPLAY_LINE_ENDS
          GTK_MOVEMENT_HORIZONTAL_PAGES
          GTK_MOVEMENT_LOGICAL_POSITIONS
          GTK_MOVEMENT_PAGES
          GTK_MOVEMENT_PARAGRAPHS
          GTK_MOVEMENT_PARAGRAPH_ENDS
          GTK_MOVEMENT_VISUAL_POSITIONS
          GTK_MOVEMENT_WORDS
          GTK_NOTEBOOK_TAB_FIRST
          GTK_NOTEBOOK_TAB_LAST
          GTK_NO_REPARENT
          GTK_NO_SHOW_ALL
          GTK_NO_WINDOW
          GTK_NUMBER_UP_LAYOUT_BOTTOM_TO_TOP_LEFT_TO_RIGHT
          GTK_NUMBER_UP_LAYOUT_BOTTOM_TO_TOP_RIGHT_TO_LEFT
          GTK_NUMBER_UP_LAYOUT_LEFT_TO_RIGHT_BOTTOM_TO_TOP
          GTK_NUMBER_UP_LAYOUT_LEFT_TO_RIGHT_TOP_TO_BOTTOM
          GTK_NUMBER_UP_LAYOUT_RIGHT_TO_LEFT_BOTTOM_TO_TOP
          GTK_NUMBER_UP_LAYOUT_RIGHT_TO_LEFT_TOP_TO_BOTTOM
          GTK_NUMBER_UP_LAYOUT_TOP_TO_BOTTOM_LEFT_TO_RIGHT
          GTK_NUMBER_UP_LAYOUT_TOP_TO_BOTTOM_RIGHT_TO_LEFT
          GTK_ORIENTATION_HORIZONTAL
          GTK_ORIENTATION_VERTICAL
          GTK_PACK_DIRECTION_BTT
          GTK_PACK_DIRECTION_LTR
          GTK_PACK_DIRECTION_RTL
          GTK_PACK_DIRECTION_TTB
          GTK_PACK_END
          GTK_PACK_START
          GTK_PAGE_ORIENTATION_LANDSCAPE
          GTK_PAGE_ORIENTATION_PORTRAIT
          GTK_PAGE_ORIENTATION_REVERSE_LANDSCAPE
          GTK_PAGE_ORIENTATION_REVERSE_PORTRAIT
          GTK_PAGE_SET_ALL
          GTK_PAGE_SET_EVEN
          GTK_PAGE_SET_ODD
          GTK_PARENT_SENSITIVE
          GTK_PATH_CLASS
          GTK_PATH_PRIO_APPLICATION
          GTK_PATH_PRIO_GTK
          GTK_PATH_PRIO_HIGHEST
          GTK_PATH_PRIO_LOWEST
          GTK_PATH_PRIO_RC
          GTK_PATH_PRIO_THEME
          GTK_PATH_WIDGET
          GTK_PATH_WIDGET_CLASS
          GTK_PIXELS
          GTK_POLICY_ALWAYS
          GTK_POLICY_AUTOMATIC
          GTK_POLICY_NEVER
          GTK_POS_BOTTOM
          GTK_POS_LEFT
          GTK_POS_RIGHT
          GTK_POS_TOP
          GTK_PRINT_DUPLEX_HORIZONTAL
          GTK_PRINT_DUPLEX_SIMPLEX
          GTK_PRINT_DUPLEX_VERTICAL
          GTK_PRINT_ERROR_GENERAL
          GTK_PRINT_ERROR_INTERNAL_ERROR
          GTK_PRINT_ERROR_INVALID_FILE
          GTK_PRINT_ERROR_NOMEM
          GTK_PRINT_PAGES_ALL
          GTK_PRINT_PAGES_CURRENT
          GTK_PRINT_PAGES_RANGES
          GTK_PRINT_QUALITY_DRAFT
          GTK_PRINT_QUALITY_HIGH
          GTK_PRINT_QUALITY_LOW
          GTK_PRINT_QUALITY_NORMAL
          GTK_PROGRESS_BOTTOM_TO_TOP
          GTK_PROGRESS_CONTINUOUS
          GTK_PROGRESS_DISCRETE
          GTK_PROGRESS_LEFT_TO_RIGHT
          GTK_PROGRESS_RIGHT_TO_LEFT
          GTK_PROGRESS_TOP_TO_BOTTOM
          GTK_RC_BASE
          GTK_RC_BG
          GTK_RC_FG
          GTK_RC_STYLE
          GTK_RC_TEXT
          GTK_REALIZED
          GTK_RECEIVES_DEFAULT
          GTK_RECENT_CHOOSER_ERROR_INVALID_URI
          GTK_RECENT_CHOOSER_ERROR_NOT_FOUND
          GTK_RECENT_MANAGER_ERROR_INVALID_ENCODING
          GTK_RECENT_MANAGER_ERROR_INVALID_URI
          GTK_RECENT_MANAGER_ERROR_NOT_FOUND
          GTK_RECENT_MANAGER_ERROR_NOT_REGISTERED
          GTK_RECENT_MANAGER_ERROR_READ
          GTK_RECENT_MANAGER_ERROR_UNKNOWN
          GTK_RECENT_MANAGER_ERROR_WRITE
          GTK_RECENT_SORT_CUSTOM
          GTK_RECENT_SORT_LRU
          GTK_RECENT_SORT_MRU
          GTK_RECENT_SORT_NONE
          GTK_RELIEF_HALF
          GTK_RELIEF_NONE
          GTK_RELIEF_NORMAL
          GTK_RESERVED_1
          GTK_RESERVED_2
          GTK_RESIZE_IMMEDIATE
          GTK_RESIZE_PARENT
          GTK_RESIZE_QUEUE
          GTK_RESPONSE_ACCEPT
          GTK_RESPONSE_APPLY
          GTK_RESPONSE_CANCEL
          GTK_RESPONSE_CLOSE
          GTK_RESPONSE_DELETE_EVENT
          GTK_RESPONSE_HELP
          GTK_RESPONSE_NO
          GTK_RESPONSE_NONE
          GTK_RESPONSE_OK
          GTK_RESPONSE_REJECT
          GTK_RESPONSE_YES
          GTK_SCROLL_END
          GTK_SCROLL_ENDS
          GTK_SCROLL_HORIZONTAL_ENDS
          GTK_SCROLL_HORIZONTAL_PAGES
          GTK_SCROLL_HORIZONTAL_STEPS
          GTK_SCROLL_JUMP
          GTK_SCROLL_NONE
          GTK_SCROLL_PAGES
          GTK_SCROLL_PAGE_BACKWARD
          GTK_SCROLL_PAGE_DOWN
          GTK_SCROLL_PAGE_FORWARD
          GTK_SCROLL_PAGE_LEFT
          GTK_SCROLL_PAGE_RIGHT
          GTK_SCROLL_PAGE_UP
          GTK_SCROLL_START
          GTK_SCROLL_STEPS
          GTK_SCROLL_STEP_BACKWARD
          GTK_SCROLL_STEP_DOWN
          GTK_SCROLL_STEP_FORWARD
          GTK_SCROLL_STEP_LEFT
          GTK_SCROLL_STEP_RIGHT
          GTK_SCROLL_STEP_UP
          GTK_SELECTION_BROWSE
          GTK_SELECTION_EXTENDED
          GTK_SELECTION_MULTIPLE
          GTK_SELECTION_NONE
          GTK_SELECTION_SINGLE
          GTK_SENSITIVE
          GTK_SENSITIVITY_AUTO
          GTK_SENSITIVITY_OFF
          GTK_SENSITIVITY_ON
          GTK_SHADOW_ETCHED_IN
          GTK_SHADOW_ETCHED_OUT
          GTK_SHADOW_IN
          GTK_SHADOW_NONE
          GTK_SHADOW_OUT
          GTK_SHRINK
          GTK_SORT_ASCENDING
          GTK_SORT_DESCENDING
          GTK_SPIN_END
          GTK_SPIN_HOME
          GTK_SPIN_PAGE_BACKWARD
          GTK_SPIN_PAGE_FORWARD
          GTK_SPIN_STEP_BACKWARD
          GTK_SPIN_STEP_FORWARD
          GTK_SPIN_USER_DEFINED
          GTK_STATE_ACTIVE
          GTK_STATE_INSENSITIVE
          GTK_STATE_NORMAL
          GTK_STATE_PRELIGHT
          GTK_STATE_SELECTED
          GTK_TEXT_BUFFER_TARGET_INFO_BUFFER_CONTENTS
          GTK_TEXT_BUFFER_TARGET_INFO_RICH_TEXT
          GTK_TEXT_BUFFER_TARGET_INFO_TEXT
          GTK_TEXT_DIR_LTR
          GTK_TEXT_DIR_NONE
          GTK_TEXT_DIR_RTL
          GTK_TEXT_WINDOW_BOTTOM
          GTK_TEXT_WINDOW_LEFT
          GTK_TEXT_WINDOW_PRIVATE
          GTK_TEXT_WINDOW_RIGHT
          GTK_TEXT_WINDOW_TEXT
          GTK_TEXT_WINDOW_TOP
          GTK_TEXT_WINDOW_WIDGET
          GTK_TOOLBAR_BOTH
          GTK_TOOLBAR_BOTH_HORIZ
          GTK_TOOLBAR_ICONS
          GTK_TOOLBAR_SPACE_EMPTY
          GTK_TOOLBAR_SPACE_LINE
          GTK_TOOLBAR_TEXT
          GTK_TOPLEVEL
          GTK_TREE_MODEL_ITERS_PERSIST
          GTK_TREE_MODEL_LIST_ONLY
          GTK_TREE_VIEW_COLUMN_AUTOSIZE
          GTK_TREE_VIEW_COLUMN_FIXED
          GTK_TREE_VIEW_COLUMN_GROW_ONLY
          GTK_TREE_VIEW_DROP_AFTER
          GTK_TREE_VIEW_DROP_BEFORE
          GTK_TREE_VIEW_DROP_INTO_OR_AFTER
          GTK_TREE_VIEW_DROP_INTO_OR_BEFORE
          GTK_TREE_VIEW_GRID_LINES_BOTH
          GTK_TREE_VIEW_GRID_LINES_HORIZONTAL
          GTK_TREE_VIEW_GRID_LINES_NONE
          GTK_TREE_VIEW_GRID_LINES_VERTICAL
          GTK_UNIT_INCH
          GTK_UNIT_MM
          GTK_UNIT_PIXEL
          GTK_UNIT_POINTS
          GTK_UPDATE_ALWAYS
          GTK_UPDATE_CONTINUOUS
          GTK_UPDATE_DELAYED
          GTK_UPDATE_DISCONTINUOUS
          GTK_UPDATE_IF_VALID
          GTK_VISIBILITY_FULL
          GTK_VISIBILITY_NONE
          GTK_VISIBILITY_PARTIAL
          GTK_VISIBLE
          GTK_WIDGET_HELP_TOOLTIP
          GTK_WIDGET_HELP_WHATS_THIS
          GTK_WINDOW_POPUP
          GTK_WINDOW_TOPLEVEL
          GTK_WIN_POS_CENTER
          GTK_WIN_POS_CENTER_ALWAYS
          GTK_WIN_POS_CENTER_ON_PARENT
          GTK_WIN_POS_MOUSE
          GTK_WIN_POS_NONE
          GTK_WRAP_CHAR
          GTK_WRAP_NONE
          GTK_WRAP_WORD
          GTK_WRAP_WORD_CHAR)

  (import (rnrs))

  (define GTK_ANCHOR_CENTER 0)
  (define GTK_ANCHOR_NORTH 1)
  (define GTK_ANCHOR_NORTH_WEST 2)
  (define GTK_ANCHOR_NORTH_EAST 3)
  (define GTK_ANCHOR_SOUTH 4)
  (define GTK_ANCHOR_SOUTH_WEST 5)
  (define GTK_ANCHOR_SOUTH_EAST 6)
  (define GTK_ANCHOR_WEST 7)
  (define GTK_ANCHOR_EAST 8)
  (define GTK_ANCHOR_N GTK_ANCHOR_NORTH)
  (define GTK_ANCHOR_NW GTK_ANCHOR_NORTH_WEST)
  (define GTK_ANCHOR_NE GTK_ANCHOR_NORTH_EAST)
  (define GTK_ANCHOR_S GTK_ANCHOR_SOUTH)
  (define GTK_ANCHOR_SW GTK_ANCHOR_SOUTH_WEST)
  (define GTK_ANCHOR_SE GTK_ANCHOR_SOUTH_EAST)
  (define GTK_ANCHOR_W GTK_ANCHOR_WEST)
  (define GTK_ANCHOR_E GTK_ANCHOR_EAST)
  (define GTK_ARROWS_BOTH 0)
  (define GTK_ARROWS_START 1)
  (define GTK_ARROWS_END 2)
  (define GTK_ARROW_UP 0)
  (define GTK_ARROW_DOWN 1)
  (define GTK_ARROW_LEFT 2)
  (define GTK_ARROW_RIGHT 3)
  (define GTK_ARROW_NONE 4)
  (define GTK_EXPAND 1)
  (define GTK_SHRINK 2)
  (define GTK_FILL 4)
  (define GTK_BUTTONBOX_DEFAULT_STYLE 0)
  (define GTK_BUTTONBOX_SPREAD 1)
  (define GTK_BUTTONBOX_EDGE 2)
  (define GTK_BUTTONBOX_START 3)
  (define GTK_BUTTONBOX_END 4)
  (define GTK_BUTTONBOX_CENTER 5)
  (define GTK_CURVE_TYPE_LINEAR 0)
  (define GTK_CURVE_TYPE_SPLINE 1)
  (define GTK_CURVE_TYPE_FREE 2)
  (define GTK_DELETE_CHARS 0)
  (define GTK_DELETE_WORD_ENDS 1)
  (define GTK_DELETE_WORDS 2)
  (define GTK_DELETE_DISPLAY_LINES 3)
  (define GTK_DELETE_DISPLAY_LINE_ENDS 4)
  (define GTK_DELETE_PARAGRAPH_ENDS 5)
  (define GTK_DELETE_PARAGRAPHS 6)
  (define GTK_DELETE_WHITESPACE 7)
  (define GTK_DIR_TAB_FORWARD 0)
  (define GTK_DIR_TAB_BACKWARD 1)
  (define GTK_DIR_UP 2)
  (define GTK_DIR_DOWN 3)
  (define GTK_DIR_LEFT 4)
  (define GTK_DIR_RIGHT 5)
  (define GTK_EXPANDER_COLLAPSED 0)
  (define GTK_EXPANDER_SEMI_COLLAPSED 1)
  (define GTK_EXPANDER_SEMI_EXPANDED 2)
  (define GTK_EXPANDER_EXPANDED 3)
  (define GTK_ICON_SIZE_INVALID 0)
  (define GTK_ICON_SIZE_MENU 1)
  (define GTK_ICON_SIZE_SMALL_TOOLBAR 2)
  (define GTK_ICON_SIZE_LARGE_TOOLBAR 3)
  (define GTK_ICON_SIZE_BUTTON 4)
  (define GTK_ICON_SIZE_DND 5)
  (define GTK_ICON_SIZE_DIALOG 6)
  (define GTK_SENSITIVITY_AUTO 0)
  (define GTK_SENSITIVITY_ON 1)
  (define GTK_SENSITIVITY_OFF 2)
  (define GTK_TEXT_DIR_NONE 0)
  (define GTK_TEXT_DIR_LTR 1)
  (define GTK_TEXT_DIR_RTL 2)
  (define GTK_JUSTIFY_LEFT 0)
  (define GTK_JUSTIFY_RIGHT 1)
  (define GTK_JUSTIFY_CENTER 2)
  (define GTK_JUSTIFY_FILL 3)
  (define GTK_MENU_DIR_PARENT 0)
  (define GTK_MENU_DIR_CHILD 1)
  (define GTK_MENU_DIR_NEXT 2)
  (define GTK_MENU_DIR_PREV 3)
  (define GTK_PIXELS 0)
  (define GTK_INCHES 1)
  (define GTK_CENTIMETERS 2)
  (define GTK_MOVEMENT_LOGICAL_POSITIONS 0)
  (define GTK_MOVEMENT_VISUAL_POSITIONS 1)
  (define GTK_MOVEMENT_WORDS 2)
  (define GTK_MOVEMENT_DISPLAY_LINES 3)
  (define GTK_MOVEMENT_DISPLAY_LINE_ENDS 4)
  (define GTK_MOVEMENT_PARAGRAPHS 5)
  (define GTK_MOVEMENT_PARAGRAPH_ENDS 6)
  (define GTK_MOVEMENT_PAGES 7)
  (define GTK_MOVEMENT_BUFFER_ENDS 8)
  (define GTK_MOVEMENT_HORIZONTAL_PAGES 9)
  (define GTK_SCROLL_STEPS 0)
  (define GTK_SCROLL_PAGES 1)
  (define GTK_SCROLL_ENDS 2)
  (define GTK_SCROLL_HORIZONTAL_STEPS 3)
  (define GTK_SCROLL_HORIZONTAL_PAGES 4)
  (define GTK_SCROLL_HORIZONTAL_ENDS 5)
  (define GTK_ORIENTATION_HORIZONTAL 0)
  (define GTK_ORIENTATION_VERTICAL 1)
  (define GTK_CORNER_TOP_LEFT 0)
  (define GTK_CORNER_BOTTOM_LEFT 1)
  (define GTK_CORNER_TOP_RIGHT 2)
  (define GTK_CORNER_BOTTOM_RIGHT 3)
  (define GTK_PACK_START 0)
  (define GTK_PACK_END 1)
  (define GTK_PATH_PRIO_LOWEST 0)
  (define GTK_PATH_PRIO_GTK 4)
  (define GTK_PATH_PRIO_APPLICATION 8)
  (define GTK_PATH_PRIO_THEME 10)
  (define GTK_PATH_PRIO_RC 12)
  (define GTK_PATH_PRIO_HIGHEST 15)
  (define GTK_PATH_WIDGET 0)
  (define GTK_PATH_WIDGET_CLASS 1)
  (define GTK_PATH_CLASS 2)
  (define GTK_POLICY_ALWAYS 0)
  (define GTK_POLICY_AUTOMATIC 1)
  (define GTK_POLICY_NEVER 2)
  (define GTK_POS_LEFT 0)
  (define GTK_POS_RIGHT 1)
  (define GTK_POS_TOP 2)
  (define GTK_POS_BOTTOM 3)
  (define GTK_RELIEF_NORMAL 0)
  (define GTK_RELIEF_HALF 1)
  (define GTK_RELIEF_NONE 2)
  (define GTK_RESIZE_PARENT 0)
  (define GTK_RESIZE_QUEUE 1)
  (define GTK_RESIZE_IMMEDIATE 2)
  (define GTK_SCROLL_NONE 0)
  (define GTK_SCROLL_JUMP 1)
  (define GTK_SCROLL_STEP_BACKWARD 2)
  (define GTK_SCROLL_STEP_FORWARD 3)
  (define GTK_SCROLL_PAGE_BACKWARD 4)
  (define GTK_SCROLL_PAGE_FORWARD 5)
  (define GTK_SCROLL_STEP_UP 6)
  (define GTK_SCROLL_STEP_DOWN 7)
  (define GTK_SCROLL_PAGE_UP 8)
  (define GTK_SCROLL_PAGE_DOWN 9)
  (define GTK_SCROLL_STEP_LEFT 10)
  (define GTK_SCROLL_STEP_RIGHT 11)
  (define GTK_SCROLL_PAGE_LEFT 12)
  (define GTK_SCROLL_PAGE_RIGHT 13)
  (define GTK_SCROLL_START 14)
  (define GTK_SCROLL_END 15)
  (define GTK_SELECTION_NONE 0)
  (define GTK_SELECTION_SINGLE 1)
  (define GTK_SELECTION_BROWSE 2)
  (define GTK_SELECTION_MULTIPLE 3)
  (define GTK_SELECTION_EXTENDED GTK_SELECTION_MULTIPLE)
  (define GTK_SHADOW_NONE 0)
  (define GTK_SHADOW_IN 1)
  (define GTK_SHADOW_OUT 2)
  (define GTK_SHADOW_ETCHED_IN 3)
  (define GTK_SHADOW_ETCHED_OUT 4)
  (define GTK_STATE_NORMAL 0)
  (define GTK_STATE_ACTIVE 1)
  (define GTK_STATE_PRELIGHT 2)
  (define GTK_STATE_SELECTED 3)
  (define GTK_STATE_INSENSITIVE 4)
  (define GTK_TOOLBAR_ICONS 0)
  (define GTK_TOOLBAR_TEXT 1)
  (define GTK_TOOLBAR_BOTH 2)
  (define GTK_TOOLBAR_BOTH_HORIZ 3)
  (define GTK_UPDATE_CONTINUOUS 0)
  (define GTK_UPDATE_DISCONTINUOUS 1)
  (define GTK_UPDATE_DELAYED 2)
  (define GTK_VISIBILITY_NONE 0)
  (define GTK_VISIBILITY_PARTIAL 1)
  (define GTK_VISIBILITY_FULL 2)
  (define GTK_WIN_POS_NONE 0)
  (define GTK_WIN_POS_CENTER 1)
  (define GTK_WIN_POS_MOUSE 2)
  (define GTK_WIN_POS_CENTER_ALWAYS 3)
  (define GTK_WIN_POS_CENTER_ON_PARENT 4)
  (define GTK_WINDOW_TOPLEVEL 0)
  (define GTK_WINDOW_POPUP 1)
  (define GTK_WRAP_NONE 0)
  (define GTK_WRAP_CHAR 1)
  (define GTK_WRAP_WORD 2)
  (define GTK_WRAP_WORD_CHAR 3)
  (define GTK_SORT_ASCENDING 0)
  (define GTK_SORT_DESCENDING 1)
  (define GTK_IM_PREEDIT_NOTHING 0)
  (define GTK_IM_PREEDIT_CALLBACK 1)
  (define GTK_IM_PREEDIT_NONE 2)
  (define GTK_IM_STATUS_NOTHING 0)
  (define GTK_IM_STATUS_CALLBACK 1)
  (define GTK_IM_STATUS_NONE 2)
  (define GTK_PACK_DIRECTION_LTR 0)
  (define GTK_PACK_DIRECTION_RTL 1)
  (define GTK_PACK_DIRECTION_TTB 2)
  (define GTK_PACK_DIRECTION_BTT 3)
  (define GTK_PRINT_PAGES_ALL 0)
  (define GTK_PRINT_PAGES_CURRENT 1)
  (define GTK_PRINT_PAGES_RANGES 2)
  (define GTK_PAGE_SET_ALL 0)
  (define GTK_PAGE_SET_EVEN 1)
  (define GTK_PAGE_SET_ODD 2)
  (define GTK_NUMBER_UP_LAYOUT_LEFT_TO_RIGHT_TOP_TO_BOTTOM 0)
  (define GTK_NUMBER_UP_LAYOUT_LEFT_TO_RIGHT_BOTTOM_TO_TOP 1)
  (define GTK_NUMBER_UP_LAYOUT_RIGHT_TO_LEFT_TOP_TO_BOTTOM 2)
  (define GTK_NUMBER_UP_LAYOUT_RIGHT_TO_LEFT_BOTTOM_TO_TOP 3)
  (define GTK_NUMBER_UP_LAYOUT_TOP_TO_BOTTOM_LEFT_TO_RIGHT 4)
  (define GTK_NUMBER_UP_LAYOUT_TOP_TO_BOTTOM_RIGHT_TO_LEFT 5)
  (define GTK_NUMBER_UP_LAYOUT_BOTTOM_TO_TOP_LEFT_TO_RIGHT 6)
  (define GTK_NUMBER_UP_LAYOUT_BOTTOM_TO_TOP_RIGHT_TO_LEFT 7)
  (define GTK_PAGE_ORIENTATION_PORTRAIT 0)
  (define GTK_PAGE_ORIENTATION_LANDSCAPE 1)
  (define GTK_PAGE_ORIENTATION_REVERSE_PORTRAIT 2)
  (define GTK_PAGE_ORIENTATION_REVERSE_LANDSCAPE 3)
  (define GTK_PRINT_QUALITY_LOW 0)
  (define GTK_PRINT_QUALITY_NORMAL 1)
  (define GTK_PRINT_QUALITY_HIGH 2)
  (define GTK_PRINT_QUALITY_DRAFT 3)
  (define GTK_PRINT_DUPLEX_SIMPLEX 0)
  (define GTK_PRINT_DUPLEX_HORIZONTAL 1)
  (define GTK_PRINT_DUPLEX_VERTICAL 2)
  (define GTK_UNIT_PIXEL 0)
  (define GTK_UNIT_POINTS 1)
  (define GTK_UNIT_INCH 2)
  (define GTK_UNIT_MM 3)
  (define GTK_TREE_VIEW_GRID_LINES_NONE 0)
  (define GTK_TREE_VIEW_GRID_LINES_HORIZONTAL 1)
  (define GTK_TREE_VIEW_GRID_LINES_VERTICAL 2)
  (define GTK_TREE_VIEW_GRID_LINES_BOTH 3)
  (define GTK_DRAG_RESULT_SUCCESS 0)
  (define GTK_DRAG_RESULT_NO_TARGET 1)
  (define GTK_DRAG_RESULT_USER_CANCELLED 2)
  (define GTK_DRAG_RESULT_TIMEOUT_EXPIRED 3)
  (define GTK_DRAG_RESULT_GRAB_BROKEN 4)
  (define GTK_DRAG_RESULT_ERROR 5)
  (define GTK_ACCEL_VISIBLE 1)
  (define GTK_ACCEL_LOCKED 2)
  (define GTK_ACCEL_MASK 7)
  (define GTK_IN_DESTRUCTION 1)
  (define GTK_RESERVED_1 4)
  (define GTK_RESERVED_2 8)
  (define GTK_RC_FG 1)
  (define GTK_RC_BG 2)
  (define GTK_RC_TEXT 4)
  (define GTK_RC_BASE 8)
  (define GTK_TOPLEVEL 16)
  (define GTK_NO_WINDOW 32)
  (define GTK_REALIZED 64)
  (define GTK_MAPPED 128)
  (define GTK_VISIBLE 256)
  (define GTK_SENSITIVE 512)
  (define GTK_PARENT_SENSITIVE 1024)
  (define GTK_CAN_FOCUS 2048)
  (define GTK_HAS_FOCUS 4096)
  (define GTK_CAN_DEFAULT 8192)
  (define GTK_HAS_DEFAULT 16384)
  (define GTK_HAS_GRAB 32768)
  (define GTK_RC_STYLE 65536)
  (define GTK_COMPOSITE_CHILD 131072)
  (define GTK_NO_REPARENT 262144)
  (define GTK_APP_PAINTABLE 524288)
  (define GTK_RECEIVES_DEFAULT 1048576)
  (define GTK_DOUBLE_BUFFERED 2097152)
  (define GTK_NO_SHOW_ALL 4194304)
  (define GTK_WIDGET_HELP_TOOLTIP 0)
  (define GTK_WIDGET_HELP_WHATS_THIS 1)
  (define GTK_DIALOG_MODAL 1)
  (define GTK_DIALOG_DESTROY_WITH_PARENT 2)
  (define GTK_DIALOG_NO_SEPARATOR 4)
  (define GTK_RESPONSE_NONE -1)
  (define GTK_RESPONSE_REJECT -2)
  (define GTK_RESPONSE_ACCEPT -3)
  (define GTK_RESPONSE_DELETE_EVENT -4)
  (define GTK_RESPONSE_OK -5)
  (define GTK_RESPONSE_CANCEL -6)
  (define GTK_RESPONSE_CLOSE -7)
  (define GTK_RESPONSE_YES -8)
  (define GTK_RESPONSE_NO -9)
  (define GTK_RESPONSE_APPLY -10)
  (define GTK_RESPONSE_HELP -11)
  (define GTK_ASSISTANT_PAGE_CONTENT 0)
  (define GTK_ASSISTANT_PAGE_INTRO 1)
  (define GTK_ASSISTANT_PAGE_CONFIRM 2)
  (define GTK_ASSISTANT_PAGE_SUMMARY 3)
  (define GTK_ASSISTANT_PAGE_PROGRESS 4)
  (define GTK_BUILDER_ERROR_INVALID_TYPE_FUNCTION 0)
  (define GTK_BUILDER_ERROR_UNHANDLED_TAG 1)
  (define GTK_BUILDER_ERROR_MISSING_ATTRIBUTE 2)
  (define GTK_BUILDER_ERROR_INVALID_ATTRIBUTE 3)
  (define GTK_BUILDER_ERROR_INVALID_TAG 4)
  (define GTK_BUILDER_ERROR_MISSING_PROPERTY_VALUE 5)
  (define GTK_BUILDER_ERROR_INVALID_VALUE 6)
  (define GTK_BUILDER_ERROR_VERSION_MISMATCH 7)
  (define GTK_BUILDER_ERROR_DUPLICATE_ID 8)
  (define GTK_IMAGE_EMPTY 0)
  (define GTK_IMAGE_PIXMAP 1)
  (define GTK_IMAGE_IMAGE 2)
  (define GTK_IMAGE_PIXBUF 3)
  (define GTK_IMAGE_STOCK 4)
  (define GTK_IMAGE_ICON_SET 5)
  (define GTK_IMAGE_ANIMATION 6)
  (define GTK_IMAGE_ICON_NAME 7)
  (define GTK_IMAGE_GICON 8)
  (define GTK_CALENDAR_SHOW_HEADING 1)
  (define GTK_CALENDAR_SHOW_DAY_NAMES 2)
  (define GTK_CALENDAR_NO_MONTH_CHANGE 4)
  (define GTK_CALENDAR_SHOW_WEEK_NUMBERS 8)
  (define GTK_CALENDAR_WEEK_START_MONDAY 16)
  (define GTK_CALENDAR_SHOW_DETAILS 32)
  (define GTK_CELL_RENDERER_SELECTED 1)
  (define GTK_CELL_RENDERER_PRELIT 2)
  (define GTK_CELL_RENDERER_INSENSITIVE 4)
  (define GTK_CELL_RENDERER_SORTED 8)
  (define GTK_CELL_RENDERER_FOCUSED 16)
  (define GTK_CELL_RENDERER_MODE_INERT 0)
  (define GTK_CELL_RENDERER_MODE_ACTIVATABLE 1)
  (define GTK_CELL_RENDERER_MODE_EDITABLE 2)
  (define GTK_TREE_MODEL_ITERS_PERSIST 1)
  (define GTK_TREE_MODEL_LIST_ONLY 2)
  (define GTK_TREE_VIEW_COLUMN_GROW_ONLY 0)
  (define GTK_TREE_VIEW_COLUMN_AUTOSIZE 1)
  (define GTK_TREE_VIEW_COLUMN_FIXED 2)
  (define GTK_CELL_RENDERER_ACCEL_MODE_GTK 0)
  (define GTK_CELL_RENDERER_ACCEL_MODE_OTHER 1)
  (define GTK_ENTRY_ICON_PRIMARY 0)
  (define GTK_ENTRY_ICON_SECONDARY 1)
  (define GTK_TREE_VIEW_DROP_BEFORE 0)
  (define GTK_TREE_VIEW_DROP_AFTER 1)
  (define GTK_TREE_VIEW_DROP_INTO_OR_BEFORE 2)
  (define GTK_TREE_VIEW_DROP_INTO_OR_AFTER 3)
  (define GTK_FILE_CHOOSER_ACTION_OPEN 0)
  (define GTK_FILE_CHOOSER_ACTION_SAVE 1)
  (define GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER 2)
  (define GTK_FILE_CHOOSER_ACTION_CREATE_FOLDER 3)
  (define GTK_FILE_CHOOSER_CONFIRMATION_CONFIRM 0)
  (define GTK_FILE_CHOOSER_CONFIRMATION_ACCEPT_FILENAME 1)
  (define GTK_FILE_CHOOSER_CONFIRMATION_SELECT_AGAIN 2)
  (define GTK_ICON_LOOKUP_NO_SVG 1)
  (define GTK_ICON_LOOKUP_FORCE_SVG 2)
  (define GTK_ICON_LOOKUP_USE_BUILTIN 4)
  (define GTK_ICON_LOOKUP_GENERIC_FALLBACK 8)
  (define GTK_ICON_LOOKUP_FORCE_SIZE 16)
  (define GTK_ICON_VIEW_NO_DROP 0)
  (define GTK_ICON_VIEW_DROP_INTO 1)
  (define GTK_ICON_VIEW_DROP_LEFT 2)
  (define GTK_ICON_VIEW_DROP_RIGHT 3)
  (define GTK_ICON_VIEW_DROP_ABOVE 4)
  (define GTK_ICON_VIEW_DROP_BELOW 5)
  (define GTK_MESSAGE_INFO 0)
  (define GTK_MESSAGE_WARNING 1)
  (define GTK_MESSAGE_QUESTION 2)
  (define GTK_MESSAGE_ERROR 3)
  (define GTK_MESSAGE_OTHER 4)
  (define GTK_BUTTONS_NONE 0)
  (define GTK_BUTTONS_OK 1)
  (define GTK_BUTTONS_CLOSE 2)
  (define GTK_BUTTONS_CANCEL 3)
  (define GTK_BUTTONS_YES_NO 4)
  (define GTK_BUTTONS_OK_CANCEL 5)
  (define GTK_NOTEBOOK_TAB_FIRST 0)
  (define GTK_NOTEBOOK_TAB_LAST 1)
  (define GTK_PRINT_ERROR_GENERAL 0)
  (define GTK_PRINT_ERROR_INTERNAL_ERROR 1)
  (define GTK_PRINT_ERROR_NOMEM 2)
  (define GTK_PRINT_ERROR_INVALID_FILE 3)
  (define GTK_PROGRESS_CONTINUOUS 0)
  (define GTK_PROGRESS_DISCRETE 1)
  (define GTK_PROGRESS_LEFT_TO_RIGHT 0)
  (define GTK_PROGRESS_RIGHT_TO_LEFT 1)
  (define GTK_PROGRESS_BOTTOM_TO_TOP 2)
  (define GTK_PROGRESS_TOP_TO_BOTTOM 3)
  (define GTK_RECENT_MANAGER_ERROR_NOT_FOUND 0)
  (define GTK_RECENT_MANAGER_ERROR_INVALID_URI 1)
  (define GTK_RECENT_MANAGER_ERROR_INVALID_ENCODING 2)
  (define GTK_RECENT_MANAGER_ERROR_NOT_REGISTERED 3)
  (define GTK_RECENT_MANAGER_ERROR_READ 4)
  (define GTK_RECENT_MANAGER_ERROR_WRITE 5)
  (define GTK_RECENT_MANAGER_ERROR_UNKNOWN 6)
  (define GTK_RECENT_SORT_NONE 0)
  (define GTK_RECENT_SORT_MRU 1)
  (define GTK_RECENT_SORT_LRU 2)
  (define GTK_RECENT_SORT_CUSTOM 3)
  (define GTK_RECENT_CHOOSER_ERROR_NOT_FOUND 0)
  (define GTK_RECENT_CHOOSER_ERROR_INVALID_URI 1)
  (define GTK_UPDATE_ALWAYS 0)
  (define GTK_UPDATE_IF_VALID 1)
  (define GTK_SPIN_STEP_FORWARD 0)
  (define GTK_SPIN_STEP_BACKWARD 1)
  (define GTK_SPIN_PAGE_FORWARD 2)
  (define GTK_SPIN_PAGE_BACKWARD 3)
  (define GTK_SPIN_HOME 4)
  (define GTK_SPIN_END 5)
  (define GTK_SPIN_USER_DEFINED 6)
  (define GTK_TEXT_BUFFER_TARGET_INFO_BUFFER_CONTENTS -1)
  (define GTK_TEXT_BUFFER_TARGET_INFO_RICH_TEXT -2)
  (define GTK_TEXT_BUFFER_TARGET_INFO_TEXT -3)
  (define GTK_TEXT_WINDOW_PRIVATE 0)
  (define GTK_TEXT_WINDOW_WIDGET 1)
  (define GTK_TEXT_WINDOW_TEXT 2)
  (define GTK_TEXT_WINDOW_LEFT 3)
  (define GTK_TEXT_WINDOW_RIGHT 4)
  (define GTK_TEXT_WINDOW_TOP 5)
  (define GTK_TEXT_WINDOW_BOTTOM 6)
  (define GTK_TOOLBAR_SPACE_EMPTY 0)
  (define GTK_TOOLBAR_SPACE_LINE 1)

  ) ;[end]
