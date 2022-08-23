#pragma bank 255

// Scene: Garden Pass Select
// Actors

#include "gbs_types.h"
#include "data/spritesheet_18.h"
#include "data/spritesheet_19.h"
#include "data/spritesheet_20.h"
#include "data/spritesheet_21.h"
#include "data/spritesheet_22.h"
#include "data/spritesheet_23.h"
#include "data/spritesheet_24.h"
#include "data/spritesheet_25.h"

BANKREF(scene_14_actors)

const struct actor_t scene_14_actors[] = {
    {
        // Actor 1,
        .pos = {
            .x = 32 * 16,
            .y = 40 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(spritesheet_18),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    },
    {
        // Actor 2,
        .pos = {
            .x = 64 * 16,
            .y = 40 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(spritesheet_19),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    },
    {
        // Actor 3,
        .pos = {
            .x = 24 * 16,
            .y = 72 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(spritesheet_20),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    },
    {
        // Actor 4,
        .pos = {
            .x = 56 * 16,
            .y = 72 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(spritesheet_21),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    },
    {
        // Actor 5,
        .pos = {
            .x = 80 * 16,
            .y = 72 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(spritesheet_22),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    },
    {
        // Actor 6,
        .pos = {
            .x = 24 * 16,
            .y = 88 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(spritesheet_23),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    },
    {
        // Actor 7,
        .pos = {
            .x = 56 * 16,
            .y = 88 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(spritesheet_24),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    },
    {
        // Actor 8,
        .pos = {
            .x = 88 * 16,
            .y = 88 * 16
        },
        .bounds = {
            .left = 0,
            .bottom = 7,
            .right = 15,
            .top = -8
        },
        .dir = DIR_DOWN,
        .sprite = TO_FAR_PTR_T(spritesheet_25),
        .move_speed = 16,
        .anim_tick = 15,
        .pinned = FALSE,
        .collision_group = COLLISION_GROUP_NONE,
        .collision_enabled = TRUE,
        .reserve_tiles = 0
    }
};
