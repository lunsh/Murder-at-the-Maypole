#pragma bank 255

// Scene: Menu Page 1
// Sprites

#include "gbs_types.h"
#include "data/spritesheet_1.h"

BANKREF(scene_2_sprites)

const far_ptr_t scene_2_sprites[] = {
    TO_FAR_PTR_T(spritesheet_1)
};
