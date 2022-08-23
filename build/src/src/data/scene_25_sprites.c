#pragma bank 255

// Scene: Bar - Lindy
// Sprites

#include "gbs_types.h"
#include "data/spritesheet_33.h"
#include "data/spritesheet_34.h"
#include "data/spritesheet_35.h"
#include "data/spritesheet_36.h"
#include "data/spritesheet_37.h"

BANKREF(scene_25_sprites)

const far_ptr_t scene_25_sprites[] = {
    TO_FAR_PTR_T(spritesheet_33),
    TO_FAR_PTR_T(spritesheet_34),
    TO_FAR_PTR_T(spritesheet_35),
    TO_FAR_PTR_T(spritesheet_36),
    TO_FAR_PTR_T(spritesheet_37)
};
