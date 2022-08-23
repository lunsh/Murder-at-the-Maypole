#pragma bank 255
// SpriteSheet: missoak-7
  
#include "gbs_types.h"
#include "data/tileset_48.h"

BANKREF(spritesheet_24)

#define SPRITE_24_STATE_DEFAULT 0

const metasprite_t spritesheet_24_metasprite_0[]  = {
    { 0, 16, 0, 0 }, { 0, -8, 2, 0 }, { 0, -8, 4, 0 }, { 0, -8, 6, 0 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_24_metasprites[] = {
    spritesheet_24_metasprite_0
};

const struct animation_t spritesheet_24_animations[] = {
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

const UWORD spritesheet_24_animations_lookup[] = {
    SPRITE_24_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_24 = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = spritesheet_24_metasprites,
    .animations = spritesheet_24_animations,
    .animations_lookup = spritesheet_24_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_48),
    .cgb_tileset = { NULL, NULL }
};
