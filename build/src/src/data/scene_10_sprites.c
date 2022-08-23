#pragma bank 255

// Scene: Forest Entrance - Hale
// Sprites

#include "gbs_types.h"
#include "data/spritesheet_6.h"
#include "data/spritesheet_7.h"
#include "data/spritesheet_8.h"
#include "data/spritesheet_9.h"
#include "data/spritesheet_10.h"
#include "data/spritesheet_11.h"

BANKREF(scene_10_sprites)

const far_ptr_t scene_10_sprites[] = {
    TO_FAR_PTR_T(spritesheet_6),
    TO_FAR_PTR_T(spritesheet_7),
    TO_FAR_PTR_T(spritesheet_8),
    TO_FAR_PTR_T(spritesheet_9),
    TO_FAR_PTR_T(spritesheet_10),
    TO_FAR_PTR_T(spritesheet_11)
};
