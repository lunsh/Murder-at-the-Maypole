#pragma bank 255

// Scene: Bar Select
// Sprites

#include "gbs_types.h"
#include "data/spritesheet_26.h"
#include "data/spritesheet_27.h"
#include "data/spritesheet_28.h"
#include "data/spritesheet_29.h"
#include "data/spritesheet_30.h"
#include "data/spritesheet_31.h"
#include "data/spritesheet_32.h"

BANKREF(scene_23_sprites)

const far_ptr_t scene_23_sprites[] = {
    TO_FAR_PTR_T(spritesheet_26),
    TO_FAR_PTR_T(spritesheet_27),
    TO_FAR_PTR_T(spritesheet_28),
    TO_FAR_PTR_T(spritesheet_29),
    TO_FAR_PTR_T(spritesheet_30),
    TO_FAR_PTR_T(spritesheet_31),
    TO_FAR_PTR_T(spritesheet_32)
};
