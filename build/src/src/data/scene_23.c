#pragma bank 255

// Scene: Bar Select

#include "gbs_types.h"
#include "data/background_3.h"
#include "data/scene_23_collisions.h"
#include "data/palette_0.h"
#include "data/palette_3.h"
#include "data/spritesheet_0.h"
#include "data/scene_23_actors.h"
#include "data/scene_23_sprites.h"
#include "data/script_s23_init.h"

BANKREF(scene_23)

const struct scene_t scene_23 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(background_3),
    .collisions = TO_FAR_PTR_T(scene_23_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_0),
    .sprite_palette = TO_FAR_PTR_T(palette_3),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(spritesheet_0),
    .n_actors = 7,
    .n_triggers = 0,
    .n_sprites = 7,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_23_actors),
    .sprites = TO_FAR_PTR_T(scene_23_sprites),
    .script_init = TO_FAR_PTR_T(script_s23_init)
};
