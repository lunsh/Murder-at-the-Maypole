.module script_input_16

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, ___bank_scene_13, _scene_13

.area _CODE_255

ACTOR = -4

___bank_script_input_16 = 255
.globl ___bank_script_input_16
.CURRENT_SCRIPT_BANK == ___bank_script_input_16

_script_input_16::
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
        VM_SET_CONST            ^/(ACTOR + 2)/, 1152
        VM_ACTOR_SET_POS        ACTOR
        VM_ACTOR_SET_DIR        ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_13

        ; Stop Script
        VM_STOP
