.module script_missoakmeetinitial

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_missoakmeetinitial = 255
.globl ___bank_script_missoakmeetinitial
.CURRENT_SCRIPT_BANK == ___bank_script_missoakmeetinitial

_script_missoakmeetinitial::
        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG2)/
        VM_IF_CONST .EQ         .ARG0, 0, 1$, 1
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 3$, 0
        VM_JUMP                 4$
3$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002Hohoho, yes, my pretty?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

4$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 5$, 0
        VM_JUMP                 6$
5$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002Hohoho, yes, my pretty?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

6$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 7$, 0
        VM_JUMP                 8$
7$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002Hohoho, yes, my pretty?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

8$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 9$, 0
        VM_JUMP                 10$
9$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002Hohoho, yes, my pretty?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

10$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 11$, 0
        VM_JUMP                 12$
11$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002Hohoho, yes, my pretty?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

12$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 13$, 0
        VM_JUMP                 14$
13$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002Hohoho, yes, my pretty?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

14$:

        VM_JUMP                 2$
1$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\007\002What an imposing lady."
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
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 15$, 0
        VM_JUMP                 16$
15$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002Hohohoho!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002HOHOHOHOHO!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002And who might you\nbe?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

16$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 17$, 0
        VM_JUMP                 18$
17$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002Hohohoho!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002HOHOHOHOHO!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002And who might you\nbe?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

18$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 19$, 0
        VM_JUMP                 20$
19$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002Hohohoho!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002HOHOHOHOHO!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002And who might you\nbe?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

20$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 21$, 0
        VM_JUMP                 22$
21$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002Hohohoho!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002HOHOHOHOHO!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002And who might you\nbe?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

22$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 23$, 0
        VM_JUMP                 24$
23$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002Hohohoho!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002HOHOHOHOHO!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002And who might you\nbe?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

24$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 25$, 0
        VM_JUMP                 26$
25$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002Hohohoho!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002HOHOHOHOHO!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002And who might you\nbe?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

26$:

        ; While $V1$ == 0
27$:
        VM_RPN
            .R_REF_IND  ^/(.ARG3)/
            .R_INT16    0
            .R_OPERATOR .EQ
            .R_STOP
        VM_IF_CONST .GT         .ARG0, 0, 28$, 1
        VM_JUMP                 29$
28$:
        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG4)/
        VM_IF_CONST .EQ         .ARG0, 1, 30$, 1
        ; Text Menu
        VM_PUSH_CONST           0
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001\007\002\260 From your dreams\n\002\001\007\002I'm the Detective."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               .ARG0, ^/(.UI_MENU_LAST_0 | .UI_MENU_CANCEL_B)/, 2
            .MENUITEM           1, 1, 1, 2, 0, 2
            .MENUITEM           1, 2, 1, 2, 1, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_INDIRECT         ^/(.ARG5 - 1)/, .ARG0
        VM_POP                  1

        VM_JUMP                 31$
30$:
        ; Text Menu
        VM_PUSH_CONST           0
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001\007\002\247 I need to ask questions.\n\002\001\007\002I'm the Detective."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               .ARG0, ^/(.UI_MENU_LAST_0 | .UI_MENU_CANCEL_B)/, 2
            .MENUITEM           1, 1, 1, 2, 0, 2
            .MENUITEM           1, 2, 1, 2, 1, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_INDIRECT         ^/(.ARG5 - 1)/, .ARG0
        VM_POP                  1

31$:

        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG5)/
        VM_IF_CONST .EQ         .ARG0, 1, 32$, 1
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 34$, 0
        VM_JUMP                 35$
34$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002Hmmm. You don't look\nmuch like a detective."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002What a shame. We could \nuse a good detective here. \nSee, there's been a murder."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

35$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 36$, 0
        VM_JUMP                 37$
36$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002Hmmm. You don't look\nmuch like a detective."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002What a shame. We could \nuse a good detective here. \nSee, there's been a murder."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

37$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 38$, 0
        VM_JUMP                 39$
38$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002Hmmm. You don't look\nmuch like a detective."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002What a shame. We could \nuse a good detective here. \nSee, there's been a murder."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

39$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 40$, 0
        VM_JUMP                 41$
40$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002Hmmm. You don't look\nmuch like a detective."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002What a shame. We could \nuse a good detective here. \nSee, there's been a murder."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

41$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 42$, 0
        VM_JUMP                 43$
42$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002Hmmm. You don't look\nmuch like a detective."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002What a shame. We could \nuse a good detective here. \nSee, there's been a murder."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

43$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 44$, 0
        VM_JUMP                 45$
44$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002Hmmm. You don't look\nmuch like a detective."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002What a shame. We could \nuse a good detective here. \nSee, there's been a murder."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

45$:

        ; Variable Set To True
        VM_PUSH_CONST           1
        VM_SET_INDIRECT         ^/(.ARG3 - 1)/, .ARG0
        VM_POP                  1

        VM_JUMP                 33$
32$:
        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG4)/
        VM_IF_CONST .EQ         .ARG0, 1, 46$, 1
        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG7)/
        VM_IF_CONST .EQ         .ARG0, 1, 48$, 1
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\007\002I can't do that with\nmy current skills..."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 49$
48$:
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 50$, 0
        VM_JUMP                 51$
50$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002HOHOHO! We'll have to\nsee about that, shall we?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002Alas, we have no time\nfor flirtatious ruination."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

51$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 52$, 0
        VM_JUMP                 53$
52$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002HOHOHO! We'll have to\nsee about that, shall we?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002Alas, we have no time\nfor flirtatious ruination."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

53$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 54$, 0
        VM_JUMP                 55$
54$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002HOHOHO! We'll have to\nsee about that, shall we?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002Alas, we have no time\nfor flirtatious ruination."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

55$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 56$, 0
        VM_JUMP                 57$
56$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002HOHOHO! We'll have to\nsee about that, shall we?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002Alas, we have no time\nfor flirtatious ruination."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

57$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 58$, 0
        VM_JUMP                 59$
58$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002HOHOHO! We'll have to\nsee about that, shall we?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002Alas, we have no time\nfor flirtatious ruination."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

59$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 60$, 0
        VM_JUMP                 61$
60$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002HOHOHO! We'll have to\nsee about that, shall we?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002Alas, we have no time\nfor flirtatious ruination."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

61$:

        ; Variable Increment By 1
        VM_RPN
            .R_REF_IND  ^/(.ARG6)/
            .R_INT8     1
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET_INDIRECT         ^/(.ARG6 - 1)/, .ARG0
        VM_POP                  1

        ; Variable Set To True
        VM_PUSH_CONST           1
        VM_SET_INDIRECT         ^/(.ARG3 - 1)/, .ARG0
        VM_POP                  1

49$:

        VM_JUMP                 47$
46$:
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 62$, 0
        VM_JUMP                 63$
62$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002Is that so? You don't\nlook like a cop. Also, you\ndon't scare me one bit."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002But perhaps you're trying to\nspark my interest instead. \nOhoho! Well, you have it."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002Let's discuss this more \nlater. For now I'll tell you\nwhat you want to know."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

63$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 64$, 0
        VM_JUMP                 65$
64$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002Is that so? You don't\nlook like a cop. Also, you\ndon't scare me one bit."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002But perhaps you're trying to\nspark my interest instead. \nOhoho! Well, you have it."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002Let's discuss this more \nlater. For now I'll tell you\nwhat you want to know."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

65$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 66$, 0
        VM_JUMP                 67$
66$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002Is that so? You don't\nlook like a cop. Also, you\ndon't scare me one bit."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002But perhaps you're trying to\nspark my interest instead. \nOhoho! Well, you have it."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002Let's discuss this more \nlater. For now I'll tell you\nwhat you want to know."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

67$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 68$, 0
        VM_JUMP                 69$
68$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002Is that so? You don't\nlook like a cop. Also, you\ndon't scare me one bit."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002But perhaps you're trying to\nspark my interest instead. \nOhoho! Well, you have it."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002Let's discuss this more \nlater. For now I'll tell you\nwhat you want to know."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

69$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 70$, 0
        VM_JUMP                 71$
70$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002Is that so? You don't\nlook like a cop. Also, you\ndon't scare me one bit."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002But perhaps you're trying to\nspark my interest instead. \nOhoho! Well, you have it."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002Let's discuss this more \nlater. For now I'll tell you\nwhat you want to know."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

71$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 72$, 0
        VM_JUMP                 73$
72$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002Is that so? You don't\nlook like a cop. Also, you\ndon't scare me one bit."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002But perhaps you're trying to\nspark my interest instead. \nOhoho! Well, you have it."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002Let's discuss this more \nlater. For now I'll tell you\nwhat you want to know."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

73$:

        ; Variable Decrement By 1
        VM_RPN
            .R_REF_IND  ^/(.ARG6)/
            .R_INT8     1
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET_INDIRECT         ^/(.ARG6 - 1)/, .ARG0
        VM_POP                  1

        ; Variable Set To True
        VM_PUSH_CONST           1
        VM_SET_INDIRECT         ^/(.ARG3 - 1)/, .ARG0
        VM_POP                  1

47$:

33$:

        VM_IDLE
        VM_JUMP                 27$
29$:
        ; Variable Set To True
        VM_PUSH_CONST           1
        VM_SET_INDIRECT         ^/(.ARG2 - 1)/, .ARG0
        VM_POP                  1

2$:

        VM_RET_FAR
