#pragma bank 255

// Scene: Skill Select

#include "gbs_types.h"
#include "data/background_24.h"
#include "data/scene_3_collisions.h"
#include "data/palette_2.h"
#include "data/palette_3.h"
#include "data/spritesheet_2.h"
#include "data/scene_3_triggers.h"
#include "data/script_s3_init.h"

BANKREF(scene_3)

const struct scene_t scene_3 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(background_24),
    .collisions = TO_FAR_PTR_T(scene_3_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_2),
    .sprite_palette = TO_FAR_PTR_T(palette_3),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(spritesheet_2),
    .n_actors = 0,
    .n_triggers = 3,
    .n_sprites = 0,
    .n_projectiles = 0,
    .triggers = TO_FAR_PTR_T(scene_3_triggers),
    .script_init = TO_FAR_PTR_T(script_s3_init)
};
