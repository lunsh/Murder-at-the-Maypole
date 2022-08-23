#pragma bank 255

// Scene: Garden Pass Select
// Sprites

#include "gbs_types.h"
#include "data/spritesheet_18.h"
#include "data/spritesheet_19.h"
#include "data/spritesheet_20.h"
#include "data/spritesheet_21.h"
#include "data/spritesheet_22.h"
#include "data/spritesheet_23.h"
#include "data/spritesheet_24.h"
#include "data/spritesheet_25.h"

BANKREF(scene_14_sprites)

const far_ptr_t scene_14_sprites[] = {
    TO_FAR_PTR_T(spritesheet_18),
    TO_FAR_PTR_T(spritesheet_19),
    TO_FAR_PTR_T(spritesheet_20),
    TO_FAR_PTR_T(spritesheet_21),
    TO_FAR_PTR_T(spritesheet_22),
    TO_FAR_PTR_T(spritesheet_23),
    TO_FAR_PTR_T(spritesheet_24),
    TO_FAR_PTR_T(spritesheet_25)
};
