#pragma bank 255
// SpriteSheet: missoak-1
  
#include "gbs_types.h"
#include "data/tileset_42.h"

BANKREF(spritesheet_18)

#define SPRITE_18_STATE_DEFAULT 0

const metasprite_t spritesheet_18_metasprite_0[]  = {
    { 0, 16, 0, 0 }, { -16, 0, 2, 0 }, { 16, -8, 4, 0 }, { -16, 0, 6, 0 }, { 16, -8, 8, 0 }, { -16, 0, 10, 0 }, { 16, -8, 12, 0 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_18_metasprites[] = {
    spritesheet_18_metasprite_0
};

const struct animation_t spritesheet_18_animations[] = {
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

const UWORD spritesheet_18_animations_lookup[] = {
    SPRITE_18_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_18 = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = spritesheet_18_metasprites,
    .animations = spritesheet_18_animations,
    .animations_lookup = spritesheet_18_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_42),
    .cgb_tileset = { NULL, NULL }
};
