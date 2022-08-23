.module script_s6t2_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_s6t2_interact = 255
.globl ___bank_script_s6t2_interact
.CURRENT_SCRIPT_BANK == ___bank_script_s6t2_interact

_script_s6t2_interact::
        VM_LOCK

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\007\002Ahh, coffee. The nectar of\nlife, the burning, yearning\nliquid. My seller sources"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\007\002them from the southeast\ncoasts, where they are\nsweeter and richer - "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\007\002more expensive though.\nIt's worth it."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
