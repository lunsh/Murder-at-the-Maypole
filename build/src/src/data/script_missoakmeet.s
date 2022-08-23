.module script_missoakmeet

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, ___bank_scene_14, _scene_14

.area _CODE_255

ACTOR = -4

___bank_script_missoakmeet = 255
.globl ___bank_script_missoakmeet
.CURRENT_SCRIPT_BANK == ___bank_script_missoakmeet

_script_missoakmeet::
        ; Local Actor
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0

2$:
        ; Text Menu
        VM_PUSH_CONST           0
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001\007\002What happened here?\n\002\001\007\002Who do you suspect?\n\002\001\007\002What's your story?\n\002\001\007\002Nothing right now"
        VM_OVERLAY_CLEAR        0, 0, 20, 6, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 12, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               .ARG0, ^/(.UI_MENU_LAST_0 | .UI_MENU_CANCEL_B)/, 4
            .MENUITEM           1, 1, 1, 4, 0, 2
            .MENUITEM           1, 2, 1, 4, 1, 3
            .MENUITEM           1, 3, 1, 4, 2, 4
            .MENUITEM           1, 4, 1, 4, 3, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_INDIRECT         ^/(.ARG4 - 5)/, .ARG0
        VM_POP                  1

        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG4 - 4)/
        VM_IF_CONST .EQ         .ARG0, 0, 3$, 1
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
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002Come back anytime, my\nlove. Hohoho!"
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
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002Come back anytime, my\nlove. Hohoho!"
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
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002Come back anytime, my\nlove. Hohoho!"
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
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002Come back anytime, my\nlove. Hohoho!"
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
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002Come back anytime, my\nlove. Hohoho!"
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
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002Come back anytime, my\nlove. Hohoho!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

16$:

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            ACTOR, 0
        VM_SET_CONST            ^/(ACTOR + 1)/, 0
        VM_SET_CONST            ^/(ACTOR + 2)/, 0
        VM_ACTOR_SET_POS        ACTOR
        VM_ACTOR_SET_DIR        ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_14

4$:

        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG4 - 4)/
        VM_IF_CONST .EQ         .ARG0, 1, 17$, 1
        VM_JUMP                 18$
17$:
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 19$, 0
        VM_JUMP                 20$
19$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002I arrived at the party\nat Quentin's invitation\nat around 9pm. I mingled"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002around for awhile - \neveryone wanted a piece\nof my company. As the"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002daughter of an ancient \noak, I am highly sought\nafter, you see. I saw"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002Lindy for a spell at the\nmaypole at around 10:30.\nWe spoke of nothing of"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002consequence... oh.\nCuriously, I saw Hale\nclose to midnight. Where "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002did I see her? She seemed\nflustered. And that was it\nuntil Lindy screamed just"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002after midnight. She had\nfound the body. Poor\nQuentin. So many questions. "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

20$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 21$, 0
        VM_JUMP                 22$
21$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002I arrived at the party\nat Quentin's invitation\nat around 9pm. I mingled"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002around for awhile - \neveryone wanted a piece\nof my company. As the"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002daughter of an ancient \noak, I am highly sought\nafter, you see. I saw"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002Lindy for a spell at the\nmaypole at around 10:30.\nWe spoke of nothing of"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002consequence... oh.\nCuriously, I saw Hale\nclose to midnight. Where "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002did I see her? She seemed\nflustered. And that was it\nuntil Lindy screamed just"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002after midnight. She had\nfound the body. Poor\nQuentin. So many questions. "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

22$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 23$, 0
        VM_JUMP                 24$
23$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002I arrived at the party\nat Quentin's invitation\nat around 9pm. I mingled"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002around for awhile - \neveryone wanted a piece\nof my company. As the"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002daughter of an ancient \noak, I am highly sought\nafter, you see. I saw"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002Lindy for a spell at the\nmaypole at around 10:30.\nWe spoke of nothing of"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002consequence... oh.\nCuriously, I saw Hale\nclose to midnight. Where "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002did I see her? She seemed\nflustered. And that was it\nuntil Lindy screamed just"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002after midnight. She had\nfound the body. Poor\nQuentin. So many questions. "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

24$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 25$, 0
        VM_JUMP                 26$
25$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002I arrived at the party\nat Quentin's invitation\nat around 9pm. I mingled"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002around for awhile - \neveryone wanted a piece\nof my company. As the"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002daughter of an ancient \noak, I am highly sought\nafter, you see. I saw"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002Lindy for a spell at the\nmaypole at around 10:30.\nWe spoke of nothing of"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002consequence... oh.\nCuriously, I saw Hale\nclose to midnight. Where "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002did I see her? She seemed\nflustered. And that was it\nuntil Lindy screamed just"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002after midnight. She had\nfound the body. Poor\nQuentin. So many questions. "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

26$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 27$, 0
        VM_JUMP                 28$
27$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002I arrived at the party\nat Quentin's invitation\nat around 9pm. I mingled"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002around for awhile - \neveryone wanted a piece\nof my company. As the"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002daughter of an ancient \noak, I am highly sought\nafter, you see. I saw"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002Lindy for a spell at the\nmaypole at around 10:30.\nWe spoke of nothing of"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002consequence... oh.\nCuriously, I saw Hale\nclose to midnight. Where "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002did I see her? She seemed\nflustered. And that was it\nuntil Lindy screamed just"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002after midnight. She had\nfound the body. Poor\nQuentin. So many questions. "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

28$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 29$, 0
        VM_JUMP                 30$
29$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002I arrived at the party\nat Quentin's invitation\nat around 9pm. I mingled"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002around for awhile - \neveryone wanted a piece\nof my company. As the"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002daughter of an ancient \noak, I am highly sought\nafter, you see. I saw"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002Lindy for a spell at the\nmaypole at around 10:30.\nWe spoke of nothing of"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002consequence... oh.\nCuriously, I saw Hale\nclose to midnight. Where "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002did I see her? She seemed\nflustered. And that was it\nuntil Lindy screamed just"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002after midnight. She had\nfound the body. Poor\nQuentin. So many questions. "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

30$:

        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG7 - 4)/
        VM_IF_CONST .EQ         .ARG0, 0, 31$, 1
        VM_JUMP                 32$
31$:
        ; Call Script: ObtainEvidence
        VM_PUSH_CONST           VAR_EVIDENCEHALEFLUSTERED ; Variable .ARG2
        VM_CALL_FAR             ___bank_script_obtainevidence, _script_obtainevidence
        VM_POP                  1

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\007\002Evidence obtained:\nHale Flustered"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

32$:

18$:

        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG4 - 4)/
        VM_IF_CONST .EQ         .ARG0, 2, 33$, 1
        VM_JUMP                 34$
33$:
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 35$, 0
        VM_JUMP                 36$
35$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002What a question. I \ncouldn't say, not without\ngiving much away."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002If I had to put a name to\nlips, it would be Rory.\nYou should talk to him."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

36$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 37$, 0
        VM_JUMP                 38$
37$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002What a question. I \ncouldn't say, not without\ngiving much away."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002If I had to put a name to\nlips, it would be Rory.\nYou should talk to him."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

38$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 39$, 0
        VM_JUMP                 40$
39$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002What a question. I \ncouldn't say, not without\ngiving much away."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002If I had to put a name to\nlips, it would be Rory.\nYou should talk to him."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

40$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 41$, 0
        VM_JUMP                 42$
41$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002What a question. I \ncouldn't say, not without\ngiving much away."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002If I had to put a name to\nlips, it would be Rory.\nYou should talk to him."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

42$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 43$, 0
        VM_JUMP                 44$
43$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002What a question. I \ncouldn't say, not without\ngiving much away."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002If I had to put a name to\nlips, it would be Rory.\nYou should talk to him."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

44$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 45$, 0
        VM_JUMP                 46$
45$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002What a question. I \ncouldn't say, not without\ngiving much away."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002If I had to put a name to\nlips, it would be Rory.\nYou should talk to him."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

46$:

34$:

        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG4 - 4)/
        VM_IF_CONST .EQ         .ARG0, 3, 47$, 1
        VM_JUMP                 48$
47$:
        ; Dialogue With Name Tag/Large Avatar
        VM_PUSH_CONST           0
        VM_GET_INT8             .ARG0, _text_draw_speed
        VM_SET                  VAR_METRORY_1, .ARG0
        VM_POP                  1
        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 0, 49$, 0
        VM_JUMP                 50$
49$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002Ohoho! You are so sweet\nto ask. I don't have much\nof a story to tell."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002I am simply the daughter\nof an ancient oak, trying\nto impart even a fraction"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002of his wisdom upon the\nlittle folk. Any place I\ncan help my friends, I "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\001\007\002will do it! Yet these are\nstrange, strange times.\nIt does give me pause..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

50$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 1, 51$, 0
        VM_JUMP                 52$
51$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002Ohoho! You are so sweet\nto ask. I don't have much\nof a story to tell."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002I am simply the daughter\nof an ancient oak, trying\nto impart even a fraction"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002of his wisdom upon the\nlittle folk. Any place I\ncan help my friends, I "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\002\007\002will do it! Yet these are\nstrange, strange times.\nIt does give me pause..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

52$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 3, 53$, 0
        VM_JUMP                 54$
53$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002Ohoho! You are so sweet\nto ask. I don't have much\nof a story to tell."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002I am simply the daughter\nof an ancient oak, trying\nto impart even a fraction"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002of his wisdom upon the\nlittle folk. Any place I\ncan help my friends, I "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\003\007\002will do it! Yet these are\nstrange, strange times.\nIt does give me pause..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

54$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 7, 55$, 0
        VM_JUMP                 56$
55$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002Ohoho! You are so sweet\nto ask. I don't have much\nof a story to tell."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002I am simply the daughter\nof an ancient oak, trying\nto impart even a fraction"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002of his wisdom upon the\nlittle folk. Any place I\ncan help my friends, I "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\004\007\002will do it! Yet these are\nstrange, strange times.\nIt does give me pause..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

56$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 15, 57$, 0
        VM_JUMP                 58$
57$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002Ohoho! You are so sweet\nto ask. I don't have much\nof a story to tell."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002I am simply the daughter\nof an ancient oak, trying\nto impart even a fraction"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002of his wisdom upon the\nlittle folk. Any place I\ncan help my friends, I "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\005\007\002will do it! Yet these are\nstrange, strange times.\nIt does give me pause..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

58$:

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METRORY_1, 31, 59$, 0
        VM_JUMP                 60$
59$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002Ohoho! You are so sweet\nto ask. I don't have much\nof a story to tell."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002I am simply the daughter\nof an ancient oak, trying\nto impart even a fraction"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002of his wisdom upon the\nlittle folk. Any place I\ncan help my friends, I "
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\2\001\007\002MISS OAK\003\2\002\002\001\001\006\007\002will do it! Yet these are\nstrange, strange times.\nIt does give me pause..."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

60$:

48$:

        VM_JUMP                 2$
        VM_POP                  4
        VM_RET_FAR
