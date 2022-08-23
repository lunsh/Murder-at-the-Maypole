#pragma bank 255

// Scene: Forest Entrance Enter

#include "gbs_types.h"
#include "data/background_23.h"
#include "data/scene_8_collisions.h"
#include "data/palette_0.h"
#include "data/palette_3.h"
#include "data/spritesheet_0.h"
#include "data/scene_8_actors.h"
#include "data/scene_8_sprites.h"
#include "data/script_s8_init.h"

BANKREF(scene_8)

const struct scene_t scene_8 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_POINTNCLICK,
    .background = TO_FAR_PTR_T(background_23),
    .collisions = TO_FAR_PTR_T(scene_8_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_0),
    .sprite_palette = TO_FAR_PTR_T(palette_3),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(spritesheet_0),
    .n_actors = 2,
    .n_triggers = 0,
    .n_sprites = 2,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_8_actors),
    .sprites = TO_FAR_PTR_T(scene_8_sprites),
    .script_init = TO_FAR_PTR_T(script_s8_init)
};
