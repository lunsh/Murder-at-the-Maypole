.module script_checkmetall

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_checkmetall = 255
.globl ___bank_script_checkmetall
.CURRENT_SCRIPT_BANK == ___bank_script_checkmetall

_script_checkmetall::
        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG2)/
        VM_IF_CONST .EQ         .ARG0, 1, 1$, 1
        VM_JUMP                 2$
1$:
        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG3)/
        VM_IF_CONST .EQ         .ARG0, 1, 3$, 1
        VM_JUMP                 4$
3$:
        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG4)/
        VM_IF_CONST .EQ         .ARG0, 1, 5$, 1
        VM_JUMP                 6$
5$:
        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG5)/
        VM_IF_CONST .EQ         .ARG0, 1, 7$, 1
        VM_JUMP                 8$
7$:
        ; If Variable .EQ Value
        VM_PUSH_VALUE_IND       ^/(.ARG6)/
        VM_IF_CONST .EQ         .ARG0, 1, 9$, 1
        VM_JUMP                 10$
9$:
        ; Variable Set To True
        VM_PUSH_CONST           1
        VM_SET_INDIRECT         ^/(.ARG7 - 1)/, .ARG0
        VM_POP                  1

10$:

8$:

6$:

4$:

2$:

        VM_RET_FAR
