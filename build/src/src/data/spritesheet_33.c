#pragma bank 255
// SpriteSheet: lindy-1
  
#include "gbs_types.h"
#include "data/tileset_57.h"

BANKREF(spritesheet_33)

#define SPRITE_33_STATE_DEFAULT 0

const metasprite_t spritesheet_33_metasprite_0[]  = {
    { 0, 16, 0, 0 }, { -16, 0, 2, 0 }, { 16, -8, 4, 0 }, { -16, 0, 6, 0 }, { 16, -8, 8, 0 }, { -16, 0, 10, 0 }, { 16, -8, 12, 0 }, { -16, 0, 14, 0 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_33_metasprites[] = {
    spritesheet_33_metasprite_0
};

const struct animation_t spritesheet_33_animations[] = {
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

const UWORD spritesheet_33_animations_lookup[] = {
    SPRITE_33_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_33 = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = spritesheet_33_metasprites,
    .animations = spritesheet_33_animations,
    .animations_lookup = spritesheet_33_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_57),
    .cgb_tileset = { NULL, NULL }
};
