#pragma bank 255

// Background: forestentrance-talk

#include "gbs_types.h"
#include "data/tileset_8.h"
#include "data/tilemap_9.h"
#include "data/tilemap_attr_0.h"

BANKREF(background_9)

const struct background_t background_9 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_8),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(tilemap_9),
    .cgb_tilemap_attr = TO_FAR_PTR_T(tilemap_attr_0)
};
