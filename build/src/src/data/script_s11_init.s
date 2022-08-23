.module script_s11_init

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step, ___bank_scene_12, _scene_12

.area _CODE_255

ACTOR = -4

___bank_script_s11_init = 255
.globl ___bank_script_s11_init
.CURRENT_SCRIPT_BANK == ___bank_script_s11_init

_script_s11_init::
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
        VM_IF_CONST .EQ         VAR_METX, 0, 3$, 0
        VM_JUMP                 4$
3$:
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
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002Oh... Hello."
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
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002Oh... Hello."
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
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002Oh... Hello."
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
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002Oh... Hello."
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
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002Oh... Hello."
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
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002Oh... Hello."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

16$:

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\007\002Who are you?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 17$, 0
        VM_JUMP                 18$
17$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002......."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

18$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 19$, 0
        VM_JUMP                 20$
19$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002......."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

20$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 21$, 0
        VM_JUMP                 22$
21$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002......."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

22$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 23$, 0
        VM_JUMP                 24$
23$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002......."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

24$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 25$, 0
        VM_JUMP                 26$
25$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002......."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

26$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 27$, 0
        VM_JUMP                 28$
27$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002......."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

28$:

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\007\002..........."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\007\002What a strange \ncreature. Still, I must ask\neveryone about the murder."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

4$:

30$:
        ; Text Menu
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001\007\002What happened here?\n\002\001\007\002Who do you suspect?\n\002\001\007\002What's your story?\n\002\001\007\002Nothing right now"
        VM_OVERLAY_CLEAR        0, 0, 20, 6, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 12, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_S11_LOCAL_0, ^/(.UI_MENU_LAST_0 | .UI_MENU_CANCEL_B)/, 4
            .MENUITEM           1, 1, 1, 4, 0, 2
            .MENUITEM           1, 2, 1, 4, 1, 3
            .MENUITEM           1, 3, 1, 4, 2, 4
            .MENUITEM           1, 4, 1, 4, 3, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_S11_LOCAL_0, 0, 31$, 0
        VM_JUMP                 32$
31$:
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 33$, 0
        VM_JUMP                 34$
33$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002....."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

34$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 35$, 0
        VM_JUMP                 36$
35$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002....."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

36$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 37$, 0
        VM_JUMP                 38$
37$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002....."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

38$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 39$, 0
        VM_JUMP                 40$
39$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002....."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

40$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 41$, 0
        VM_JUMP                 42$
41$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002....."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

42$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 43$, 0
        VM_JUMP                 44$
43$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002....."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

44$:

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            ACTOR, 0
        VM_SET_CONST            ^/(ACTOR + 1)/, 0
        VM_SET_CONST            ^/(ACTOR + 2)/, 0
        VM_ACTOR_SET_POS        ACTOR
        VM_ACTOR_SET_DIR        ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_12

32$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_S11_LOCAL_0, 1, 45$, 0
        VM_JUMP                 46$
45$:
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 47$, 0
        VM_JUMP                 48$
47$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002I felt something\nheavy in the air as\ntwilight bruised the sky"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002with blood. The evening, \nmerry, but the birds cried\ntheir warnings as they fled."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002Somewhere dark, a figure\narrived and the pain and\nanguish were made tangible."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002But the secrets are layer\nupon layer, and the sky\nlay blood upon ground."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

48$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 49$, 0
        VM_JUMP                 50$
49$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002I felt something\nheavy in the air as\ntwilight bruised the sky"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002with blood. The evening, \nmerry, but the birds cried\ntheir warnings as they fled."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002Somewhere dark, a figure\narrived and the pain and\nanguish were made tangible."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002But the secrets are layer\nupon layer, and the sky\nlay blood upon ground."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

50$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 51$, 0
        VM_JUMP                 52$
51$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002I felt something\nheavy in the air as\ntwilight bruised the sky"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002with blood. The evening, \nmerry, but the birds cried\ntheir warnings as they fled."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002Somewhere dark, a figure\narrived and the pain and\nanguish were made tangible."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002But the secrets are layer\nupon layer, and the sky\nlay blood upon ground."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

52$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 53$, 0
        VM_JUMP                 54$
53$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002I felt something\nheavy in the air as\ntwilight bruised the sky"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002with blood. The evening, \nmerry, but the birds cried\ntheir warnings as they fled."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002Somewhere dark, a figure\narrived and the pain and\nanguish were made tangible."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002But the secrets are layer\nupon layer, and the sky\nlay blood upon ground."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

54$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 55$, 0
        VM_JUMP                 56$
55$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002I felt something\nheavy in the air as\ntwilight bruised the sky"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002with blood. The evening, \nmerry, but the birds cried\ntheir warnings as they fled."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002Somewhere dark, a figure\narrived and the pain and\nanguish were made tangible."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002But the secrets are layer\nupon layer, and the sky\nlay blood upon ground."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

56$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 57$, 0
        VM_JUMP                 58$
57$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002I felt something\nheavy in the air as\ntwilight bruised the sky"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002with blood. The evening, \nmerry, but the birds cried\ntheir warnings as they fled."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002Somewhere dark, a figure\narrived and the pain and\nanguish were made tangible."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002But the secrets are layer\nupon layer, and the sky\nlay blood upon ground."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

58$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METX, 0, 59$, 0
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\007\002Thank you, that was...\nvery helpful."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 60$
59$:
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 61$, 0
        VM_JUMP                 62$
61$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002Do you understand?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

62$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 63$, 0
        VM_JUMP                 64$
63$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002Do you understand?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

64$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 65$, 0
        VM_JUMP                 66$
65$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002Do you understand?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

66$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 67$, 0
        VM_JUMP                 68$
67$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002Do you understand?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

68$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 69$, 0
        VM_JUMP                 70$
69$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002Do you understand?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

70$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 71$, 0
        VM_JUMP                 72$
71$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002Do you understand?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

72$:

        ; While $L4$ == 0
73$:
        VM_RPN
            .R_REF      VAR_S11_LOCAL_4
            .R_INT16    0
            .R_OPERATOR .EQ
            .R_STOP
        VM_IF_CONST .GT         .ARG0, 0, 74$, 1
        VM_JUMP                 75$
74$:
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_SKILL_PUGILISM, 1, 76$, 0
        ; Text Menu
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001\007\002\260 I can try to learn.\n\002\001\007\002No... I don't."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_S11_LOCAL_2, ^/(.UI_MENU_LAST_0 | .UI_MENU_CANCEL_B)/, 2
            .MENUITEM           1, 1, 1, 2, 0, 2
            .MENUITEM           1, 2, 1, 2, 1, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 77$
76$:
        ; Text Menu
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001\007\002\247 That's nonsense.\n\002\001\007\002No... I don't."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_S11_LOCAL_2, ^/(.UI_MENU_LAST_0 | .UI_MENU_CANCEL_B)/, 2
            .MENUITEM           1, 1, 1, 2, 0, 2
            .MENUITEM           1, 2, 1, 2, 1, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

77$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_S11_LOCAL_2, 1, 78$, 0
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 80$, 0
        VM_JUMP                 81$
80$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002Very few can. Hale\nat least listens to me...\nWe share coffee together"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002sometimes. But I wish I \nhad someone to understand\nme, too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

81$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 82$, 0
        VM_JUMP                 83$
82$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002Very few can. Hale\nat least listens to me...\nWe share coffee together"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002sometimes. But I wish I \nhad someone to understand\nme, too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

83$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 84$, 0
        VM_JUMP                 85$
84$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002Very few can. Hale\nat least listens to me...\nWe share coffee together"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002sometimes. But I wish I \nhad someone to understand\nme, too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

85$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 86$, 0
        VM_JUMP                 87$
86$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002Very few can. Hale\nat least listens to me...\nWe share coffee together"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002sometimes. But I wish I \nhad someone to understand\nme, too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

87$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 88$, 0
        VM_JUMP                 89$
88$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002Very few can. Hale\nat least listens to me...\nWe share coffee together"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002sometimes. But I wish I \nhad someone to understand\nme, too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

89$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 90$, 0
        VM_JUMP                 91$
90$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002Very few can. Hale\nat least listens to me...\nWe share coffee together"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002sometimes. But I wish I \nhad someone to understand\nme, too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

91$:

        ; Variable Set To True
        VM_SET_CONST            VAR_S11_LOCAL_4, 1

        VM_JUMP                 79$
78$:
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_SKILL_PUGILISM, 1, 92$, 0
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_SKILL_FORBEARANCE, 1, 94$, 0
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\007\002I can't do that with\nmy current skills..."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 95$
94$:
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 96$, 0
        VM_JUMP                 97$
96$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002The cedar trees\noverhead will share in\ntheir sullen secrets."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002I hear the whispers and\nperhaps soon you will\nunderstand too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002It pleases me to know\nyou are trying too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002... Even in these \ncircumstances."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

97$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 98$, 0
        VM_JUMP                 99$
98$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002The cedar trees\noverhead will share in\ntheir sullen secrets."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002I hear the whispers and\nperhaps soon you will\nunderstand too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002It pleases me to know\nyou are trying too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002... Even in these \ncircumstances."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

99$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 100$, 0
        VM_JUMP                 101$
100$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002The cedar trees\noverhead will share in\ntheir sullen secrets."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002I hear the whispers and\nperhaps soon you will\nunderstand too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002It pleases me to know\nyou are trying too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002... Even in these \ncircumstances."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

101$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 102$, 0
        VM_JUMP                 103$
102$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002The cedar trees\noverhead will share in\ntheir sullen secrets."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002I hear the whispers and\nperhaps soon you will\nunderstand too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002It pleases me to know\nyou are trying too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002... Even in these \ncircumstances."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

103$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 104$, 0
        VM_JUMP                 105$
104$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002The cedar trees\noverhead will share in\ntheir sullen secrets."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002I hear the whispers and\nperhaps soon you will\nunderstand too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002It pleases me to know\nyou are trying too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002... Even in these \ncircumstances."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

105$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 106$, 0
        VM_JUMP                 107$
106$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002The cedar trees\noverhead will share in\ntheir sullen secrets."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002I hear the whispers and\nperhaps soon you will\nunderstand too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002It pleases me to know\nyou are trying too."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002... Even in these \ncircumstances."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

107$:

        ; Variable Increment By 1
        VM_RPN
            .R_REF      VAR_FRIENDSHIPX
            .R_INT8     1
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET                  VAR_FRIENDSHIPX, .ARG0
        VM_POP                  1

        ; Variable Set To True
        VM_SET_CONST            VAR_S11_LOCAL_4, 1

95$:

        VM_JUMP                 93$
92$:
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 108$, 0
        VM_JUMP                 109$
108$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002The cedar trees overhead\nweep with wind. The light\nvanishes in a blink."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002Yet the whispering grows to\noverwhelm us. It will not\nbe silenced or ignored."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002Avoid them at your peril.\nTheir guidance would have\nbeen a valuable tool."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

109$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 110$, 0
        VM_JUMP                 111$
110$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002The cedar trees overhead\nweep with wind. The light\nvanishes in a blink."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002Yet the whispering grows to\noverwhelm us. It will not\nbe silenced or ignored."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002Avoid them at your peril.\nTheir guidance would have\nbeen a valuable tool."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

111$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 112$, 0
        VM_JUMP                 113$
112$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002The cedar trees overhead\nweep with wind. The light\nvanishes in a blink."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002Yet the whispering grows to\noverwhelm us. It will not\nbe silenced or ignored."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002Avoid them at your peril.\nTheir guidance would have\nbeen a valuable tool."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

113$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 114$, 0
        VM_JUMP                 115$
114$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002The cedar trees overhead\nweep with wind. The light\nvanishes in a blink."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002Yet the whispering grows to\noverwhelm us. It will not\nbe silenced or ignored."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002Avoid them at your peril.\nTheir guidance would have\nbeen a valuable tool."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

115$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 116$, 0
        VM_JUMP                 117$
116$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002The cedar trees overhead\nweep with wind. The light\nvanishes in a blink."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002Yet the whispering grows to\noverwhelm us. It will not\nbe silenced or ignored."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002Avoid them at your peril.\nTheir guidance would have\nbeen a valuable tool."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

117$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 118$, 0
        VM_JUMP                 119$
118$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002The cedar trees overhead\nweep with wind. The light\nvanishes in a blink."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002Yet the whispering grows to\noverwhelm us. It will not\nbe silenced or ignored."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002Avoid them at your peril.\nTheir guidance would have\nbeen a valuable tool."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

119$:

        ; Variable Decrement By 1
        VM_RPN
            .R_REF      VAR_FRIENDSHIPX
            .R_INT8     1
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_FRIENDSHIPX, .ARG0
        VM_POP                  1

        ; Variable Set To True
        VM_SET_CONST            VAR_S11_LOCAL_4, 1

93$:

79$:

        VM_IDLE
        VM_JUMP                 73$
75$:
        ; Variable Set To True
        VM_SET_CONST            VAR_METX, 1

60$:

46$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_S11_LOCAL_0, 2, 120$, 0
        VM_JUMP                 121$
120$:
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 122$, 0
        VM_JUMP                 123$
122$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002The world fills with\nomens but we are too blind\nto recognize them."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002Perhaps you will find what\nyou seek in the dirt, soon."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

123$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 124$, 0
        VM_JUMP                 125$
124$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002The world fills with\nomens but we are too blind\nto recognize them."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002Perhaps you will find what\nyou seek in the dirt, soon."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

125$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 126$, 0
        VM_JUMP                 127$
126$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002The world fills with\nomens but we are too blind\nto recognize them."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002Perhaps you will find what\nyou seek in the dirt, soon."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

127$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 128$, 0
        VM_JUMP                 129$
128$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002The world fills with\nomens but we are too blind\nto recognize them."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002Perhaps you will find what\nyou seek in the dirt, soon."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

129$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 130$, 0
        VM_JUMP                 131$
130$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002The world fills with\nomens but we are too blind\nto recognize them."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002Perhaps you will find what\nyou seek in the dirt, soon."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

131$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 132$, 0
        VM_JUMP                 133$
132$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002The world fills with\nomens but we are too blind\nto recognize them."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002Perhaps you will find what\nyou seek in the dirt, soon."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

133$:

121$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_S11_LOCAL_0, 3, 134$, 0
        VM_JUMP                 135$
134$:
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 136$, 0
        VM_JUMP                 137$
136$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002A man awakens on a\nhill, the smell of burning\nwood around him. He stands,"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002his hands covered in soot.\nAs he dreamt of the forest,\nthe forest dreamt of him."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\001\007\002Now it burns."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

137$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 138$, 0
        VM_JUMP                 139$
138$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002A man awakens on a\nhill, the smell of burning\nwood around him. He stands,"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002his hands covered in soot.\nAs he dreamt of the forest,\nthe forest dreamt of him."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\002\007\002Now it burns."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

139$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 140$, 0
        VM_JUMP                 141$
140$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002A man awakens on a\nhill, the smell of burning\nwood around him. He stands,"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002his hands covered in soot.\nAs he dreamt of the forest,\nthe forest dreamt of him."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\003\007\002Now it burns."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

141$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 142$, 0
        VM_JUMP                 143$
142$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002A man awakens on a\nhill, the smell of burning\nwood around him. He stands,"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002his hands covered in soot.\nAs he dreamt of the forest,\nthe forest dreamt of him."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\004\007\002Now it burns."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

143$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 144$, 0
        VM_JUMP                 145$
144$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002A man awakens on a\nhill, the smell of burning\nwood around him. He stands,"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002his hands covered in soot.\nAs he dreamt of the forest,\nthe forest dreamt of him."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\005\007\002Now it burns."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

145$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 146$, 0
        VM_JUMP                 147$
146$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002A man awakens on a\nhill, the smell of burning\nwood around him. He stands,"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002his hands covered in soot.\nAs he dreamt of the forest,\nthe forest dreamt of him."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002XED\003\2\002\002\001\001\006\007\002Now it burns."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

147$:

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\007\002I... see."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

135$:

        VM_JUMP                 30$
2$:

        ; Stop Script
        VM_STOP
