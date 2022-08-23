.module script_s24_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

ACTOR = -4

___bank_script_s24_init = 255
.globl ___bank_script_s24_init
.CURRENT_SCRIPT_BANK == ___bank_script_s24_init

_script_s24_init::
        VM_LOCK

        ; Local Actor
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0

        ; Actor Hide
        VM_SET_CONST            ACTOR, 0
        VM_ACTOR_SET_HIDDEN     ACTOR, 1
        VM_ACTOR_DEACTIVATE     ACTOR

        ; Wait 1 Frame
        VM_PUSH_CONST           1
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METALL, 0, 1$, 0
        VM_JUMP                 2$
1$:
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY, 0, 3$, 0
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 5$, 0
        VM_JUMP                 6$
5$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002RORY\003\2\002\002\001\001\001\007\002What can I do for\nyou, Detective?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

6$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 7$, 0
        VM_JUMP                 8$
7$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002RORY\003\2\002\002\001\001\002\007\002What can I do for\nyou, Detective?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

8$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 9$, 0
        VM_JUMP                 10$
9$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002RORY\003\2\002\002\001\001\003\007\002What can I do for\nyou, Detective?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

10$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 11$, 0
        VM_JUMP                 12$
11$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002RORY\003\2\002\002\001\001\004\007\002What can I do for\nyou, Detective?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

12$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 13$, 0
        VM_JUMP                 14$
13$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002RORY\003\2\002\002\001\001\005\007\002What can I do for\nyou, Detective?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

14$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 15$, 0
        VM_JUMP                 16$
15$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002RORY\003\2\002\002\001\001\006\007\002What can I do for\nyou, Detective?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

16$:

        VM_JUMP                 4$
3$:
        ; Call Script: RoryMeetInitial
        VM_CALL_FAR             ___bank_script_rorymeetinitial, _script_rorymeetinitial

4$:

        ; Call Script: RoryMeet
        VM_PUSH_CONST           VAR_METHALE ; Variable .ARG8
        VM_PUSH_CONST           VAR_METHALE ; Variable .ARG7
        VM_PUSH_CONST           VAR_METHALE ; Variable .ARG6
        VM_PUSH_CONST           VAR_METHALE ; Variable .ARG5
        VM_PUSH_CONST           VAR_METHALE ; Variable .ARG4
        VM_PUSH_CONST           VAR_METHALE ; Variable .ARG3
        VM_PUSH_CONST           VAR_S24_LOCAL_0 ; Variable .ARG2
        VM_CALL_FAR             ___bank_script_rorymeet, _script_rorymeet
        VM_POP                  7

2$:

        ; Stop Script
        VM_STOP
