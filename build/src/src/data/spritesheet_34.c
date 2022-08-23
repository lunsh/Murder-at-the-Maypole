#pragma bank 255
// SpriteSheet: lindy-2
  
#include "gbs_types.h"
#include "data/tileset_58.h"

BANKREF(spritesheet_34)

#define SPRITE_34_STATE_DEFAULT 0

const metasprite_t spritesheet_34_metasprite_0[]  = {
    { 0, 16, 0, 0 }, { 0, -8, 2, 0 }, { -16, 0, 4, 0 }, { 16, -8, 6, 0 }, { -16, 0, 8, 0 }, { 16, -8, 10, 0 }, { -16, 0, 12, 0 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_34_metasprites[] = {
    spritesheet_34_metasprite_0
};

const struct animation_t spritesheet_34_animations[] = {
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

const UWORD spritesheet_34_animations_lookup[] = {
    SPRITE_34_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_34 = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = spritesheet_34_metasprites,
    .animations = spritesheet_34_animations,
    .animations_lookup = spritesheet_34_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_58),
    .cgb_tileset = { NULL, NULL }
};
