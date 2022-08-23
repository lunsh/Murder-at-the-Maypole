#pragma bank 255

// Scene: Forest Entrance

#include "gbs_types.h"
#include "data/background_7.h"
#include "data/scene_9_collisions.h"
#include "data/palette_0.h"
#include "data/palette_3.h"
#include "data/spritesheet_0.h"
#include "data/scene_9_actors.h"
#include "data/scene_9_triggers.h"
#include "data/scene_9_sprites.h"
#include "data/script_s9_init.h"

BANKREF(scene_9)

const struct scene_t scene_9 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_POINTNCLICK,
    .background = TO_FAR_PTR_T(background_7),
    .collisions = TO_FAR_PTR_T(scene_9_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_0),
    .sprite_palette = TO_FAR_PTR_T(palette_3),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(spritesheet_0),
    .n_actors = 1,
    .n_triggers = 3,
    .n_sprites = 1,
    .n_projectiles = 0,
    .actors = TO_FAR_PTR_T(scene_9_actors),
    .triggers = TO_FAR_PTR_T(scene_9_triggers),
    .sprites = TO_FAR_PTR_T(scene_9_sprites),
    .script_init = TO_FAR_PTR_T(script_s9_init)
};
