#pragma bank 255

// Scene: Farnswallow's Office
// Triggers

#include "gbs_types.h"
#include "data/script_s6t0_interact.h"
#include "data/script_s6t1_interact.h"
#include "data/script_s6t2_interact.h"
#include "data/script_s6t3_interact.h"
#include "data/script_s6t4_interact.h"

BANKREF(scene_6_triggers)

const struct trigger_t scene_6_triggers[] = {
    {
        // Trigger 1,
        .x = 11,
        .y = 1,
        .width = 3,
        .height = 3,
        .script = TO_FAR_PTR_T(script_s6t0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 2,
        .x = 0,
        .y = 3,
        .width = 6,
        .height = 11,
        .script = TO_FAR_PTR_T(script_s6t1_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 3,
        .x = 16,
        .y = 9,
        .width = 4,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s6t2_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 4,
        .x = 7,
        .y = 9,
        .width = 6,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s6t3_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    },
    {
        // Trigger 5,
        .x = 0,
        .y = 16,
        .width = 2,
        .height = 2,
        .script = TO_FAR_PTR_T(script_s6t4_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
