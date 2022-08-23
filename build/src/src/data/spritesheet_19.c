#pragma bank 255
// SpriteSheet: missoak-2
  
#include "gbs_types.h"
#include "data/tileset_43.h"

BANKREF(spritesheet_19)

#define SPRITE_19_STATE_DEFAULT 0

const metasprite_t spritesheet_19_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 }, { -16, 0, 4, 0 }, { 16, -8, 6, 0 }, { -16, 0, 8, 0 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_19_metasprites[] = {
    spritesheet_19_metasprite_0
};

const struct animation_t spritesheet_19_animations[] = {
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

const UWORD spritesheet_19_animations_lookup[] = {
    SPRITE_19_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_19 = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -32
    },
    .metasprites = spritesheet_19_metasprites,
    .animations = spritesheet_19_animations,
    .animations_lookup = spritesheet_19_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_43),
    .cgb_tileset = { NULL, NULL }
};
