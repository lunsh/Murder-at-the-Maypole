.module script_s3t1_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_s3t1_interact = 255
.globl ___bank_script_s3t1_interact
.CURRENT_SCRIPT_BANK == ___bank_script_s3t1_interact

_script_s3t1_interact::
        VM_LOCK

        ; Variable Set To False
        VM_SET_CONST            VAR_SKILL_VISIONS, 0

        ; Variable Set To False
        VM_SET_CONST            VAR_SKILL_PUGILISM, 0

        ; Variable Set To True
        VM_SET_CONST            VAR_SKILL_FORBEARANCE, 1

        ; Stop Script
        VM_STOP
