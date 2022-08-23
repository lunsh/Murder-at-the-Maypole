#pragma bank 255

// Scene: Bar-Rory
// Sprites

#include "gbs_types.h"
#include "data/spritesheet_26.h"
#include "data/spritesheet_27.h"
#include "data/spritesheet_28.h"
#include "data/spritesheet_29.h"
#include "data/spritesheet_30.h"

BANKREF(scene_24_sprites)

const far_ptr_t scene_24_sprites[] = {
    TO_FAR_PTR_T(spritesheet_26),
    TO_FAR_PTR_T(spritesheet_27),
    TO_FAR_PTR_T(spritesheet_28),
    TO_FAR_PTR_T(spritesheet_29),
    TO_FAR_PTR_T(spritesheet_30)
};
