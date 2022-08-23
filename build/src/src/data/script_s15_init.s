.module script_s15_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

ACTOR = -4

___bank_script_s15_init = 255
.globl ___bank_script_s15_init
.CURRENT_SCRIPT_BANK == ___bank_script_s15_init

_script_s15_init::
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

        ; Wait 1 Frame
        VM_PUSH_CONST           1
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; If Variable .EQ Value
        VM_IF_CONST .EQ         VAR_METALL, 0, 1$, 0
        VM_JUMP                 2$
1$:
        ; Call Script: MissOakMeetInitial
        VM_PUSH_CONST           VAR_SKILL_FORBEARANCE ; Variable .ARG7
        VM_PUSH_CONST           VAR_FRIENDSHIPMISSOAK ; Variable .ARG6
        VM_PUSH_CONST           VAR_S15_LOCAL_2 ; Variable .ARG5
        VM_PUSH_CONST           VAR_SKILL_PUGILISM ; Variable .ARG4
        VM_PUSH_CONST           VAR_S15_LOCAL_1 ; Variable .ARG3
        VM_PUSH_CONST           VAR_METMISSOAK ; Variable .ARG2
        VM_CALL_FAR             ___bank_script_missoakmeetinitial, _script_missoakmeetinitial
        VM_POP                  6

        ; Call Script: MissOakMeet
        VM_PUSH_CONST           VAR_SKILL_PUGILISM ; Variable .ARG8
        VM_PUSH_CONST           VAR_EVIDENCEHALEFLUSTERED ; Variable .ARG7
        VM_PUSH_CONST           VAR_SKILL_FORBEARANCE ; Variable .ARG6
        VM_PUSH_CONST           VAR_FRIENDSHIPMISSOAK ; Variable .ARG5
        VM_PUSH_CONST           VAR_S15_LOCAL_2 ; Variable .ARG4
        VM_PUSH_CONST           VAR_METMISSOAK ; Variable .ARG3
        VM_PUSH_CONST           VAR_S15_LOCAL_1 ; Variable .ARG2
        VM_CALL_FAR             ___bank_script_missoakmeet, _script_missoakmeet
        VM_POP                  7

2$:

        ; Stop Script
        VM_STOP
