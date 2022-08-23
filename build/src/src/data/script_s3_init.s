.module script_s3_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255


___bank_script_s3_init = 255
.globl ___bank_script_s3_init
.CURRENT_SCRIPT_BANK == ___bank_script_s3_init

_script_s3_init::
        VM_LOCK

        ; Call Script: Init Menu
        VM_CALL_FAR             ___bank_script_init_menu, _script_init_menu

        ; Input Script Attach
        VM_CONTEXT_PREPARE      5, ___bank_script_input_1, _script_input_1
        VM_INPUT_ATTACH         8, ^/(5 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      6, ___bank_script_input_2, _script_input_2
        VM_INPUT_ATTACH         4, ^/(6 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      7, ___bank_script_input_3, _script_input_3
        VM_INPUT_ATTACH         2, ^/(7 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      8, ___bank_script_input_3, _script_input_3
        VM_INPUT_ATTACH         1, ^/(8 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      3, ___bank_script_input_4, _script_input_4
        VM_INPUT_ATTACH         48, ^/(3 | .OVERRIDE_DEFAULT)/

        ; Variables Reset
        VM_MEMSET               0, 0, MAX_GLOBAL_VARS
        ; Wait 1 Frame
        VM_PUSH_CONST           1
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 15
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
