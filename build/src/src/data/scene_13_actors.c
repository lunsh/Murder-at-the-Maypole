#pragma bank 255

// Scene: Garden Pass
// Actors

#include "gbs_types.h"
#include "data/spritesheet_5.h"
#include "data/script_s13a0_interact.h"

BANKREF(scene_13_actors)

const struct actor_t scene_13_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 0 * 16,
            .y = 136 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(spritesheet_5),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .script = TO_FAR_PTR_T(script_s13a0_interact),
        .reserve_tiles = 0
    }
};
