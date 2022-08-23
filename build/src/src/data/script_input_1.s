.module script_input_1

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

ACTOR = -4

___bank_script_input_1 = 255
.globl ___bank_script_input_1
.CURRENT_SCRIPT_BANK == ___bank_script_input_1

_script_input_1::
        ; Local Actor
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0

        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; If Actor At Position
        VM_ACTOR_GET_POS        ACTOR
        VM_RPN
            .R_REF      ^/(ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .EQ
            .R_REF      ^/(ACTOR + 2)/
            .R_INT16    1920
            .R_OPERATOR .EQ
            .R_OPERATOR .AND
            .R_STOP
        VM_IF_CONST .EQ         .ARG0, 0, 1$, 1
        VM_JUMP                 2$
1$:
        ; Actor Set Active
        VM_SET_CONST            ACTOR, 0

        ; Actor Set Position Relative
        VM_ACTOR_GET_POS        ACTOR
        VM_RPN
            .R_REF      ^/(ACTOR + 1)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_REF      ^/(ACTOR + 2)/
            .R_INT16    640
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET                  ^/(ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_ACTOR_SET_POS        ACTOR

2$:

        ; Stop Script
        VM_STOP
