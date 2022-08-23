.module script_input_22

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, ___bank_scene_17, _scene_17

.area _CODE_255

ACTOR = -4

___bank_script_input_22 = 255
.globl ___bank_script_input_22
.CURRENT_SCRIPT_BANK == ___bank_script_input_22

_script_input_22::
        ; Local Actor
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            ACTOR, 0
        VM_SET_CONST            ^/(ACTOR + 1)/, 1280
        VM_SET_CONST            ^/(ACTOR + 2)/, 1024
        VM_ACTOR_SET_POS        ACTOR
        VM_ACTOR_SET_DIR        ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_17

        ; Stop Script
        VM_STOP
