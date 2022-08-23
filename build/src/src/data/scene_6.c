#pragma bank 255

// Scene: Farnswallow's Office

#include "gbs_types.h"
#include "data/background_6.h"
#include "data/scene_6_collisions.h"
#include "data/palette_0.h"
#include "data/palette_3.h"
#include "data/spritesheet_0.h"
#include "data/scene_6_triggers.h"
#include "data/script_s6_init.h"

BANKREF(scene_6)

const struct scene_t scene_6 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_POINTNCLICK,
    .background = TO_FAR_PTR_T(background_6),
    .collisions = TO_FAR_PTR_T(scene_6_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_0),
    .sprite_palette = TO_FAR_PTR_T(palette_3),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(spritesheet_0),
    .n_actors = 0,
    .n_triggers = 5,
    .n_sprites = 0,
    .n_projectiles = 0,
    .triggers = TO_FAR_PTR_T(scene_6_triggers),
    .script_init = TO_FAR_PTR_T(script_s6_init)
};
