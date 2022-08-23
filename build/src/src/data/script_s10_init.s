.module script_s10_init

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step, ___bank_scene_26, _scene_26, ___bank_scene_17, _scene_17

.area _CODE_255

ACTOR = -4

___bank_script_s10_init = 255
.globl ___bank_script_s10_init
.CURRENT_SCRIPT_BANK == ___bank_script_s10_init

_script_s10_init::
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
        VM_SET_CONST_INT8       _fade_frames_per_step, 7
        VM_FADE_IN              1

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\007\002It's Hale. She's been a\nfriend for awhile now. I\ndon't remember where I"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\007\002met her though. It's like\nshe's always been there."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
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
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 1$, 0
        VM_JUMP                 2$
1$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\001\007\002Detective, thank you\nfor coming."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

2$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 3$, 0
        VM_JUMP                 4$
3$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\002\007\002Detective, thank you\nfor coming."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

4$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 5$, 0
        VM_JUMP                 6$
5$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\003\007\002Detective, thank you\nfor coming."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

6$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 7$, 0
        VM_JUMP                 8$
7$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\004\007\002Detective, thank you\nfor coming."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

8$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 9$, 0
        VM_JUMP                 10$
9$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\005\007\002Detective, thank you\nfor coming."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

10$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 11$, 0
        VM_JUMP                 12$
11$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\006\007\002Detective, thank you\nfor coming."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

12$:

        ; Variable Set To False
        VM_SET_CONST            VAR_S10_LOCAL_0, 0

        ; While $L0$ == 0
13$:
        VM_RPN
            .R_REF      VAR_S10_LOCAL_0
            .R_INT16    0
            .R_OPERATOR .EQ
            .R_STOP
        VM_IF_CONST .GT         .ARG0, 0, 14$, 1
        VM_JUMP                 15$
14$:
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_SKILL_PUGILISM, 1, 16$, 0
        ; Text Menu
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001\007\002\260 Is everything okay?\n\002\001\007\002It's late - what is it?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_S10_LOCAL_1, .UI_MENU_CANCEL_B, 2
            .MENUITEM           1, 1, 1, 2, 0, 2
            .MENUITEM           1, 2, 1, 2, 1, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 17$
16$:
        ; Text Menu
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001\007\002\247 This better be good.\n\002\001\007\002What's happened?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_S10_LOCAL_1, .UI_MENU_CANCEL_B, 2
            .MENUITEM           1, 1, 1, 2, 0, 2
            .MENUITEM           1, 2, 1, 2, 1, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

17$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_S10_LOCAL_1, 1, 18$, 0
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 20$, 0
        VM_JUMP                 21$
20$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\001\007\002We've had a terrible\ntragedy. I felt in my bones\nsomething would happen "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\001\007\002tonight. You see..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

21$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 22$, 0
        VM_JUMP                 23$
22$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\002\007\002We've had a terrible\ntragedy. I felt in my bones\nsomething would happen "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\002\007\002tonight. You see..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

23$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 24$, 0
        VM_JUMP                 25$
24$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\003\007\002We've had a terrible\ntragedy. I felt in my bones\nsomething would happen "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\003\007\002tonight. You see..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

25$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 26$, 0
        VM_JUMP                 27$
26$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\004\007\002We've had a terrible\ntragedy. I felt in my bones\nsomething would happen "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\004\007\002tonight. You see..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

27$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 28$, 0
        VM_JUMP                 29$
28$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\005\007\002We've had a terrible\ntragedy. I felt in my bones\nsomething would happen "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\005\007\002tonight. You see..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

29$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 30$, 0
        VM_JUMP                 31$
30$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\006\007\002We've had a terrible\ntragedy. I felt in my bones\nsomething would happen "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\006\007\002tonight. You see..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

31$:

        ; Variable Set To True
        VM_SET_CONST            VAR_S10_LOCAL_0, 1

        VM_JUMP                 19$
18$:
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_SKILL_FORBEARANCE, 1, 32$, 0
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_SKILL_PUGILISM, 1, 34$, 0
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\007\002I can't do this with\nmy current skills.."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 35$
34$:
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 36$, 0
        VM_JUMP                 37$
36$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\001\007\002I'm so sorry,\nDetective. I'm sorry to \nbring you out here so"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\001\007\002late. But it's important,\nI promise. You see..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

37$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 38$, 0
        VM_JUMP                 39$
38$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\002\007\002I'm so sorry,\nDetective. I'm sorry to \nbring you out here so"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\002\007\002late. But it's important,\nI promise. You see..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

39$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 40$, 0
        VM_JUMP                 41$
40$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\003\007\002I'm so sorry,\nDetective. I'm sorry to \nbring you out here so"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\003\007\002late. But it's important,\nI promise. You see..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

41$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 42$, 0
        VM_JUMP                 43$
42$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\004\007\002I'm so sorry,\nDetective. I'm sorry to \nbring you out here so"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\004\007\002late. But it's important,\nI promise. You see..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

43$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 44$, 0
        VM_JUMP                 45$
44$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\005\007\002I'm so sorry,\nDetective. I'm sorry to \nbring you out here so"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\005\007\002late. But it's important,\nI promise. You see..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

45$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 46$, 0
        VM_JUMP                 47$
46$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\006\007\002I'm so sorry,\nDetective. I'm sorry to \nbring you out here so"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\006\007\002late. But it's important,\nI promise. You see..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

47$:

        ; Variable Set To True
        VM_SET_CONST            VAR_S10_LOCAL_0, 1

        ; Variable Decrement By 1
        VM_RPN
            .R_REF      VAR_FRIENDSHIPHALE
            .R_INT8     1
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_FRIENDSHIPHALE, .ARG0
        VM_POP                  1

35$:

        VM_JUMP                 33$
32$:
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 48$, 0
        VM_JUMP                 49$
48$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\001\007\002Oh... oh detective!\nThank you! I was so scared"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\001\007\you were angry! I'm \nso glad you're not. It's\njust simply awful. See..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

49$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 50$, 0
        VM_JUMP                 51$
50$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\002\007\002Oh... oh detective!\nThank you! I was so scared"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\002\007\you were angry! I'm \nso glad you're not. It's\njust simply awful. See..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

51$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 52$, 0
        VM_JUMP                 53$
52$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\003\007\002Oh... oh detective!\nThank you! I was so scared"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\003\007\you were angry! I'm \nso glad you're not. It's\njust simply awful. See..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

53$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 54$, 0
        VM_JUMP                 55$
54$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\004\007\002Oh... oh detective!\nThank you! I was so scared"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\004\007\you were angry! I'm \nso glad you're not. It's\njust simply awful. See..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

55$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 56$, 0
        VM_JUMP                 57$
56$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\005\007\002Oh... oh detective!\nThank you! I was so scared"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\005\007\you were angry! I'm \nso glad you're not. It's\njust simply awful. See..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

57$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 58$, 0
        VM_JUMP                 59$
58$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\006\007\002Oh... oh detective!\nThank you! I was so scared"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\006\007\you were angry! I'm \nso glad you're not. It's\njust simply awful. See..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

59$:

        ; Variable Set To True
        VM_SET_CONST            VAR_S10_LOCAL_0, 1

        ; Variable Increment By 1
        VM_RPN
            .R_REF      VAR_FRIENDSHIPHALE
            .R_INT8     1
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET                  VAR_FRIENDSHIPHALE, .ARG0
        VM_POP                  1

33$:

19$:

        VM_IDLE
        VM_JUMP                 13$
15$:
        ; Sound Play Crash
        VM_SOUND_PLAY           30, 4, 0x01, 0xF2, 0x13, 0x80, 0x00
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 60$, 0
        VM_JUMP                 61$
60$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\001\007\002There's been a murder!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

61$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 62$, 0
        VM_JUMP                 63$
62$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\002\007\002There's been a murder!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

63$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 64$, 0
        VM_JUMP                 65$
64$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\003\007\002There's been a murder!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

65$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 66$, 0
        VM_JUMP                 67$
66$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\004\007\002There's been a murder!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

67$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 68$, 0
        VM_JUMP                 69$
68$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\005\007\002There's been a murder!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

69$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 70$, 0
        VM_JUMP                 71$
70$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\006\007\002There's been a murder!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

71$:

        ; Wait N Frames
        VM_PUSH_CONST           60
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\007\002I have to admit, I\nwasn't expecting that..."
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
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 72$, 0
        VM_JUMP                 73$
72$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\001\007\002Oh, Detective, you must\nhelp us! Please!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

73$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 74$, 0
        VM_JUMP                 75$
74$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\002\007\002Oh, Detective, you must\nhelp us! Please!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

75$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 76$, 0
        VM_JUMP                 77$
76$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\003\007\002Oh, Detective, you must\nhelp us! Please!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

77$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 78$, 0
        VM_JUMP                 79$
78$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\004\007\002Oh, Detective, you must\nhelp us! Please!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

79$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 80$, 0
        VM_JUMP                 81$
80$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\005\007\002Oh, Detective, you must\nhelp us! Please!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

81$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 82$, 0
        VM_JUMP                 83$
82$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\006\007\002Oh, Detective, you must\nhelp us! Please!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

83$:

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\007\002Hmmm... a curious thing,\na murder. A life once lived,\nnow gone. Violence, secrets."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
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
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 84$, 0
        VM_JUMP                 85$
84$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\001\007\002Will you help us?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

85$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 86$, 0
        VM_JUMP                 87$
86$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\002\007\002Will you help us?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

87$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 88$, 0
        VM_JUMP                 89$
88$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\003\007\002Will you help us?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

89$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 90$, 0
        VM_JUMP                 91$
90$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\004\007\002Will you help us?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

91$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 92$, 0
        VM_JUMP                 93$
92$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\005\007\002Will you help us?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

93$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 94$, 0
        VM_JUMP                 95$
94$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\006\007\002Will you help us?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

95$:

        ; Text Menu
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001\007\002Yes, I will.\n\002\001\007\002No, I won't."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_S10_LOCAL_0, ^/(.UI_MENU_LAST_0 | .UI_MENU_CANCEL_B)/, 2
            .MENUITEM           1, 1, 1, 2, 0, 2
            .MENUITEM           1, 2, 1, 2, 1, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_S10_LOCAL_0, 0, 96$, 0
        VM_JUMP                 97$
96$:
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 98$, 0
        VM_JUMP                 99$
98$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\001\007\002O-oh. Really? Oh ...\nOh no! Oh detective..."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

99$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 100$, 0
        VM_JUMP                 101$
100$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\002\007\002O-oh. Really? Oh ...\nOh no! Oh detective..."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

101$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 102$, 0
        VM_JUMP                 103$
102$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\003\007\002O-oh. Really? Oh ...\nOh no! Oh detective..."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

103$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 104$, 0
        VM_JUMP                 105$
104$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\004\007\002O-oh. Really? Oh ...\nOh no! Oh detective..."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

105$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 106$, 0
        VM_JUMP                 107$
106$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\005\007\002O-oh. Really? Oh ...\nOh no! Oh detective..."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

107$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 108$, 0
        VM_JUMP                 109$
108$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\006\007\002O-oh. Really? Oh ...\nOh no! Oh detective..."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

109$:

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            ACTOR, 0
        VM_SET_CONST            ^/(ACTOR + 1)/, 0
        VM_SET_CONST            ^/(ACTOR + 2)/, 0
        VM_ACTOR_SET_POS        ACTOR
        VM_ACTOR_SET_DIR        ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_26

97$:

        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 110$, 0
        VM_JUMP                 111$
110$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\001\007\002Oh, I'm so happy, \ndetective! Thank you!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

111$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 112$, 0
        VM_JUMP                 113$
112$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\002\007\002Oh, I'm so happy, \ndetective! Thank you!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

113$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 114$, 0
        VM_JUMP                 115$
114$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\003\007\002Oh, I'm so happy, \ndetective! Thank you!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

115$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 116$, 0
        VM_JUMP                 117$
116$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\004\007\002Oh, I'm so happy, \ndetective! Thank you!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

117$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 118$, 0
        VM_JUMP                 119$
118$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\005\007\002Oh, I'm so happy, \ndetective! Thank you!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

119$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 120$, 0
        VM_JUMP                 121$
120$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\006\007\002Oh, I'm so happy, \ndetective! Thank you!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

121$:

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\007\002Well, this is what I do\nafter all."
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
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 122$, 0
        VM_JUMP                 123$
122$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\001\007\002I suppose I should show \nyou where it happened...\nCome this way..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
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
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\002\007\002I suppose I should show \nyou where it happened...\nCome this way..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
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
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\003\007\002I suppose I should show \nyou where it happened...\nCome this way..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
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
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\004\007\002I suppose I should show \nyou where it happened...\nCome this way..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
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
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\005\007\002I suppose I should show \nyou where it happened...\nCome this way..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
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
        .asciz "\001\001\003\2\001\007\002HALE\003\2\002\002\001\001\006\007\002I suppose I should show \nyou where it happened...\nCome this way..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

133$:

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            ACTOR, 0
        VM_SET_CONST            ^/(ACTOR + 1)/, 0
        VM_SET_CONST            ^/(ACTOR + 2)/, 0
        VM_ACTOR_SET_POS        ACTOR
        VM_ACTOR_SET_DIR        ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_17

        ; Stop Script
        VM_STOP
