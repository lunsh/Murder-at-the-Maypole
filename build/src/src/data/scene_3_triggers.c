#pragma bank 255

// Scene: Skill Select
// Triggers

#include "gbs_types.h"
#include "data/script_s3t0_interact.h"
#include "data/script_s3t1_interact.h"
#include "data/script_s3t2_interact.h"

BANKREF(scene_3_triggers)

const struct trigger_t scene_3_triggers[] = {
    {
        // Trigger 1,
        .x = 0,
        .y = 4,
        .width = 3,
        .height = 3,
        .script = TO_FAR_PTR_T(script_s3t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 0,
        .y = 9,
        .width = 3,
        .height = 3,
        .script = TO_FAR_PTR_T(script_s3t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 0,
        .y = 14,
        .width = 3,
        .height = 3,
        .script = TO_FAR_PTR_T(script_s3t2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
