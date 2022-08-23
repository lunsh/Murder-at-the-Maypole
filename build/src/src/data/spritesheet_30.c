#pragma bank 255
// SpriteSheet: rory-5
  
#include "gbs_types.h"
#include "data/tileset_54.h"

BANKREF(spritesheet_30)

#define SPRITE_30_STATE_DEFAULT 0

const metasprite_t spritesheet_30_metasprite_0[]  = {
    { 0, 16, 0, 0 }, { 0, -8, 2, 0 }, { -16, 0, 4, 0 }, { 16, -8, 6, 0 }, { -16, 0, 8, 0 }, { 16, -8, 10, 0 }, { -16, 0, 12, 0 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_30_metasprites[] = {
    spritesheet_30_metasprite_0
};

const struct animation_t spritesheet_30_animations[] = {
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    },
    {
        .start = 0,
        .end = 0
    }
};

const UWORD spritesheet_30_animations_lookup[] = {
    SPRITE_30_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_30 = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = spritesheet_30_metasprites,
    .animations = spritesheet_30_animations,
    .animations_lookup = spritesheet_30_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_54),
    .cgb_tileset = { NULL, NULL }
};
