.module script_obtainevidence

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_obtainevidence = 255
.globl ___bank_script_obtainevidence
.CURRENT_SCRIPT_BANK == ___bank_script_obtainevidence

_script_obtainevidence::
        ; Variable Set To True
        VM_PUSH_CONST           1
        VM_SET_INDIRECT         ^/(.ARG2 - 1)/, .ARG0
        VM_POP                  1

        VM_RET_FAR
