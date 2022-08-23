.module script_input_3

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input_3 = 255
.globl ___bank_script_input_3
.CURRENT_SCRIPT_BANK == ___bank_script_input_3

_script_input_3::
        ; Stop Script
        VM_STOP
