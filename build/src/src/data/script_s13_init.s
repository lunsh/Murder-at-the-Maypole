.module script_s13_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255


___bank_script_s13_init = 255
.globl ___bank_script_s13_init
.CURRENT_SCRIPT_BANK == ___bank_script_s13_init

_script_s13_init::
        VM_LOCK

        ; Input Script Attach
        VM_CONTEXT_PREPARE      3, ___bank_script_input_14, _script_input_14
        VM_INPUT_ATTACH         32, ^/(3 | .OVERRIDE_DEFAULT)/

        ; Wait 1 Frame
        VM_PUSH_CONST           1
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
