#pragma bank 255

// Scene: Bar - Lindy

#include "gbs_types.h"
#include "data/background_1.h"
#include "data/scene_25_collisions.h"
#include "data/palette_0.h"
#include "data/palette_3.h"
#include "data/spritesheet_0.h"
#include "data/scene_25_actors.h"
#include "data/scene_25_sprites.h"
#include "data/script_s25_init.h"

BANKREF(scene_25)

const struct scene_t scene_25 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(background_1),
    .collisions = TO_FAR_PTR_T(scene_25_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_0),
    .sprite_palette = TO_FAR_PTR_T(palette_3),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(spritesheet_0),
    .n_actors = 5,
    .n_triggers = 0,
    .n_sprites = 5,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_25_actors),
    .sprites = TO_FAR_PTR_T(scene_25_sprites),
    .script_init = TO_FAR_PTR_T(script_s25_init)
};
