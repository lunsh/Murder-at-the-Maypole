.module script_s2_init

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step, ___bank_scene_4, _scene_4

.area _CODE_255

ACTOR = -4

___bank_script_s2_init = 255
.globl ___bank_script_s2_init
.CURRENT_SCRIPT_BANK == ___bank_script_s2_init

_script_s2_init::
        VM_LOCK

        ; Local Actor
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0

        ; If Variable True
        VM_IF_CONST .GT         VAR_METHALE, 0, 1$, 0
        VM_JUMP                 2$
1$:
        ; Actor Set Active
        VM_SET_CONST            ACTOR, 1

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME ACTOR

2$:

        ; If Variable True
        VM_IF_CONST .GT         VAR_METMISSOAK, 0, 3$, 0
        VM_JUMP                 4$
3$:
        ; Actor Set Active
        VM_SET_CONST            ACTOR, 2

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME ACTOR

4$:

        ; If Variable True
        VM_IF_CONST .GT         VAR_METRORY, 0, 5$, 0
        VM_JUMP                 6$
5$:
        ; Actor Set Active
        VM_SET_CONST            ACTOR, 3

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME ACTOR

6$:

        ; If Variable True
        VM_IF_CONST .GT         VAR_METLINDY, 0, 7$, 0
        VM_JUMP                 8$
7$:
        ; Actor Set Active
        VM_SET_CONST            ACTOR, 4

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME ACTOR

8$:

        ; If Variable True
        VM_IF_CONST .GT         VAR_FRIENDSHIPX, 0, 9$, 0
        VM_JUMP                 10$
9$:
        ; Actor Set Active
        VM_SET_CONST            ACTOR, 5

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME ACTOR

10$:

        ; If Variable True
        VM_IF_CONST .GT         VAR_METALL, 0, 11$, 0
        VM_JUMP                 12$
11$:
        ; Actor Set Active
        VM_SET_CONST            ACTOR, 6

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME ACTOR

12$:

        ; Actor Hide
        VM_SET_CONST            ACTOR, 0
        VM_ACTOR_SET_HIDDEN     ACTOR, 1
        VM_ACTOR_DEACTIVATE     ACTOR

        ; Music Play
        VM_MUSIC_PLAY           ___bank_music_track_1__Data, _music_track_1__Data, .MUSIC_LOOP

        ; Wait 1 Frame
        VM_PUSH_CONST           1
        VM_INVOKE               b_wait_frames, _wait_frames, 1, .ARG0

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Wait For Input
        VM_INPUT_WAIT           240

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            ACTOR, 0
        VM_SET_CONST            ^/(ACTOR + 1)/, 0
        VM_SET_CONST            ^/(ACTOR + 2)/, 0
        VM_ACTOR_SET_POS        ACTOR
        VM_ACTOR_SET_DIR        ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_4

        ; Stop Script
        VM_STOP
