.module script_input_25

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, ___bank_scene_25, _scene_25, ___bank_scene_24, _scene_24

.area _CODE_255

ACTOR = -4

___bank_script_input_25 = 255
.globl ___bank_script_input_25
.CURRENT_SCRIPT_BANK == ___bank_script_input_25

_script_input_25::
        ; Local Actor
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0

        ; Text Menu
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001\007\002Talk to Rory\n\002\001\007\002Talk to Lindy\n\002\001\007\002Cancel"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_S23_LOCAL_0, ^/(.UI_MENU_LAST_0 | .UI_MENU_CANCEL_B)/, 3
            .MENUITEM           1, 1, 1, 3, 0, 2
            .MENUITEM           1, 2, 1, 3, 1, 3
            .MENUITEM           1, 3, 1, 3, 2, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_S23_LOCAL_0, 1, 1$, 0
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_S23_LOCAL_0, 2, 3$, 0
        VM_JUMP                 4$
3$:
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            ACTOR, 0
        VM_SET_CONST            ^/(ACTOR + 1)/, 0
        VM_SET_CONST            ^/(ACTOR + 2)/, 0
        VM_ACTOR_SET_POS        ACTOR
        VM_ACTOR_SET_DIR        ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_25

4$:

        VM_JUMP                 2$
1$:
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            ACTOR, 0
        VM_SET_CONST            ^/(ACTOR + 1)/, 0
        VM_SET_CONST            ^/(ACTOR + 2)/, 0
        VM_ACTOR_SET_POS        ACTOR
        VM_ACTOR_SET_DIR        ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_24

2$:

        ; Stop Script
        VM_STOP
