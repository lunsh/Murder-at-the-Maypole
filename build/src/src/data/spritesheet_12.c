#pragma bank 255
// SpriteSheet: x-1
  
#include "gbs_types.h"
#include "data/tileset_36.h"

BANKREF(spritesheet_12)

#define SPRITE_12_STATE_DEFAULT 0

const metasprite_t spritesheet_12_metasprite_0[]  = {
    { 0, 16, 0, 0 }, { -16, 0, 2, 0 }, { 16, -8, 4, 0 }, { 0, -8, 6, 0 }, { -16, 0, 8, 0 }, { 16, -8, 10, 0 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_12_metasprites[] = {
    spritesheet_12_metasprite_0
};

const struct animation_t spritesheet_12_animations[] = {
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

const UWORD spritesheet_12_animations_lookup[] = {
    SPRITE_12_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_12 = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = spritesheet_12_metasprites,
    .animations = spritesheet_12_animations,
    .animations_lookup = spritesheet_12_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_36),
    .cgb_tileset = { NULL, NULL }
};
