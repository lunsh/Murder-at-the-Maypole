#pragma bank 255
// SpriteSheet: x-3
  
#include "gbs_types.h"
#include "data/tileset_38.h"

BANKREF(spritesheet_14)

#define SPRITE_14_STATE_DEFAULT 0

const metasprite_t spritesheet_14_metasprite_0[]  = {
    { 0, 16, 0, 0 }, { -16, 0, 2, 0 }, { 16, -8, 4, 0 }, { -16, 0, 6, 0 }, { 16, -8, 8, 0 }, { -16, 0, 10, 0 }, { 16, -8, 12, 0 }, { -16, 0, 14, 0 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_14_metasprites[] = {
    spritesheet_14_metasprite_0
};

const struct animation_t spritesheet_14_animations[] = {
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

const UWORD spritesheet_14_animations_lookup[] = {
    SPRITE_14_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_14 = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = spritesheet_14_metasprites,
    .animations = spritesheet_14_animations,
    .animations_lookup = spritesheet_14_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_38),
    .cgb_tileset = { NULL, NULL }
};
