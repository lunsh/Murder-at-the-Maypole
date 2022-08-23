.module script_input_10

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, ___bank_scene_9, _scene_9

.area _CODE_255

ACTOR = -4

___bank_script_input_10 = 255
.globl ___bank_script_input_10
.CURRENT_SCRIPT_BANK == ___bank_script_input_10

_script_input_10::
        ; Local Actor
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0
        VM_PUSH_CONST           0

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            ACTOR, 0
        VM_SET_CONST            ^/(ACTOR + 1)/, 1536
        VM_SET_CONST            ^/(ACTOR + 2)/, 768
        VM_ACTOR_SET_POS        ACTOR
        VM_ACTOR_SET_DIR        ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_9

        ; Stop Script
        VM_STOP
