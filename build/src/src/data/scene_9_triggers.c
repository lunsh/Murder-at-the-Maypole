#pragma bank 255

// Scene: Forest Entrance
// Triggers

#include "gbs_types.h"
#include "data/script_s9t0_interact.h"
#include "data/script_s9t1_interact.h"
#include "data/script_s9t2_interact.h"

BANKREF(scene_9_triggers)

const struct trigger_t scene_9_triggers[] = {
    {
        // Trigger 1,
        .x = 6,
        .y = 16,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s9t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 12,
        .y = 15,
        .width = 3,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s9t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 12,
        .y = 9,
        .width = 3,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s9t2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
