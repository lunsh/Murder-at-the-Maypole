#pragma bank 255
// SpriteSheet: hale-4
  
#include "gbs_types.h"
#include "data/tileset_33.h"

BANKREF(spritesheet_9)

#define SPRITE_9_STATE_DEFAULT 0

const metasprite_t spritesheet_9_metasprite_0[]  = {
    { 0, 16, 0, 0 }, { 0, -8, 2, 0 }, { -16, 0, 4, 0 }, { 16, -8, 6, 0 }, { -16, 0, 8, 0 }, { 16, -8, 10, 0 }, { -16, 0, 12, 0 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_9_metasprites[] = {
    spritesheet_9_metasprite_0
};

const struct animation_t spritesheet_9_animations[] = {
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

const UWORD spritesheet_9_animations_lookup[] = {
    SPRITE_9_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_9 = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = spritesheet_9_metasprites,
    .animations = spritesheet_9_animations,
    .animations_lookup = spritesheet_9_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_33),
    .cgb_tileset = { NULL, NULL }
};
