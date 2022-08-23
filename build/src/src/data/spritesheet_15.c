#pragma bank 255
// SpriteSheet: x-4
  
#include "gbs_types.h"
#include "data/tileset_39.h"

BANKREF(spritesheet_15)

#define SPRITE_15_STATE_DEFAULT 0

const metasprite_t spritesheet_15_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { -16, 0, 2, 0 }, { 16, -8, 4, 0 }, { -16, 0, 6, 0 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_15_metasprites[] = {
    spritesheet_15_metasprite_0
};

const struct animation_t spritesheet_15_animations[] = {
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

const UWORD spritesheet_15_animations_lookup[] = {
    SPRITE_15_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_15 = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = spritesheet_15_metasprites,
    .animations = spritesheet_15_animations,
    .animations_lookup = spritesheet_15_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_39),
    .cgb_tileset = { NULL, NULL }
};
