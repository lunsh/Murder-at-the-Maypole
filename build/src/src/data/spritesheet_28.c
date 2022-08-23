#pragma bank 255
// SpriteSheet: rory-3
  
#include "gbs_types.h"
#include "data/tileset_52.h"

BANKREF(spritesheet_28)

#define SPRITE_28_STATE_DEFAULT 0

const metasprite_t spritesheet_28_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 }, { -16, 0, 4, 0 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_28_metasprites[] = {
    spritesheet_28_metasprite_0
};

const struct animation_t spritesheet_28_animations[] = {
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

const UWORD spritesheet_28_animations_lookup[] = {
    SPRITE_28_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_28 = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = spritesheet_28_metasprites,
    .animations = spritesheet_28_animations,
    .animations_lookup = spritesheet_28_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_52),
    .cgb_tileset = { NULL, NULL }
};
