#pragma bank 255
// SpriteSheet: missoak-8
  
#include "gbs_types.h"
#include "data/tileset_49.h"

BANKREF(spritesheet_25)

#define SPRITE_25_STATE_DEFAULT 0

const metasprite_t spritesheet_25_metasprite_0[]  = {
    { 0, 8, 0, 0 }, { 0, -8, 2, 0 }, { 0, -8, 4, 0 },
    {metasprite_end}
};

const metasprite_t * const spritesheet_25_metasprites[] = {
    spritesheet_25_metasprite_0
};

const struct animation_t spritesheet_25_animations[] = {
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

const UWORD spritesheet_25_animations_lookup[] = {
    SPRITE_25_STATE_DEFAULT
};

const struct spritesheet_t spritesheet_25 = {
    .n_metasprites = 1,
    .emote_origin = {
        .x = 0,
        .y = -16
    },
    .metasprites = spritesheet_25_metasprites,
    .animations = spritesheet_25_animations,
    .animations_lookup = spritesheet_25_animations_lookup,
    .bounds = {
        .left = 0,
        .bottom = 7,
        .right = 15,
        .top = -8
    },
    .tileset = TO_FAR_PTR_T(tileset_49),
    .cgb_tileset = { NULL, NULL }
};
