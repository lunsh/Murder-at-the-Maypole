.module script_s14_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

ACTOR = -4

___bank_script_s14_init = 255
.globl ___bank_script_s14_init
.CURRENT_SCRIPT_BANK == ___bank_script_s14_init

_script_s14_init::
        VM_LOCK

        ; Local Actor
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0

        ; Actor Hide
        VM_SET_CONST            ACTOR, 0
        VM_ACTOR_SET_HIDDEN     ACTOR, 1
        VM_ACTOR_DEACTIVATE     ACTOR

        ; Input Script Attach
        VM_CONTEXT_PREPARE      3, ___bank_script_input_9, _script_input_9
        VM_INPUT_ATTACH         32, ^/(3 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      4, ___bank_script_input_15, _script_input_15
        VM_INPUT_ATTACH         16, ^/(4 | .OVERRIDE_DEFAULT)/

        ; Input Script Attach
        VM_CONTEXT_PREPARE      6, ___bank_script_input_16, _script_input_16
        VM_INPUT_ATTACH         4, ^/(6 | .OVERRIDE_DEFAULT)/

        ; Call Script: CheckMetAll
        VM_PUSH_CONST           VAR_METALL ; Variable .ARG7
        VM_PUSH_CONST           VAR_METLINDY ; Variable .ARG6
        VM_PUSH_CONST           VAR_METRORY ; Variable .ARG5
        VM_PUSH_CONST           VAR_METMISSOAK ; Variable .ARG4
        VM_PUSH_CONST           VAR_METX ; Variable .ARG3
        VM_PUSH_CONST           VAR_METHALE ; Variable .ARG2
        VM_CALL_FAR             ___bank_script_checkmetall, _script_checkmetall
        VM_POP                  6

        ; Wait 1 Frame
        VM_PUSH_CONST           1
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
