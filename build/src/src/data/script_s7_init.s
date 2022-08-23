.module script_s7_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

ACTOR = -4

___bank_script_s7_init = 255
.globl ___bank_script_s7_init
.CURRENT_SCRIPT_BANK == ___bank_script_s7_init

_script_s7_init::
        VM_LOCK

        ; Local Actor
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0

        ; Input Script Attach
        VM_CONTEXT_PREPARE      4, ___bank_script_input_5, _script_input_5
        VM_INPUT_ATTACH         16, ^/(4 | .OVERRIDE_DEFAULT)/

        ; Actor Hide
        VM_SET_CONST            ACTOR, 0
        VM_ACTOR_SET_HIDDEN     ACTOR, 1
        VM_ACTOR_DEACTIVATE     ACTOR

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_SEENHALE, 0, 1$, 0
        ; Input Script Attach
        VM_CONTEXT_PREPARE      7, ___bank_script_input_6, _script_input_6
        VM_INPUT_ATTACH         2, ^/(7 | .OVERRIDE_DEFAULT)/

        VM_JUMP                 2$
1$:
        ; Input Script Attach
        VM_CONTEXT_PREPARE      7, ___bank_script_input_7, _script_input_7
        VM_INPUT_ATTACH         2, ^/(7 | .OVERRIDE_DEFAULT)/

2$:

        ; Input Script Attach
        VM_CONTEXT_PREPARE      8, ___bank_script_input_7, _script_input_7
        VM_INPUT_ATTACH         1, ^/(8 | .OVERRIDE_DEFAULT)/

        ; Save Data to Slot 0
        VM_RAISE                EXCEPTION_SAVE, 1
            .SAVE_SLOT 0
        VM_PUSH_CONST           0
        VM_POLL_LOADED          .ARG0
        VM_IF_CONST .EQ         .ARG0, 1, 3$, 1

3$:

        ; Wait 1 Frame
        VM_PUSH_CONST           1
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
