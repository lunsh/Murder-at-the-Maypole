#pragma bank 255

// Scene: Garden Pass Enter
// Sprites

#include "gbs_types.h"
#include "data/spritesheet_3.h"
#include "data/spritesheet_4.h"

BANKREF(scene_16_sprites)

const far_ptr_t scene_16_sprites[] = {
    TO_FAR_PTR_T(spritesheet_3),
    TO_FAR_PTR_T(spritesheet_4)
};
