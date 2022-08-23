#pragma bank 255

// Background: forestentrance-hale

#include "gbs_types.h"
#include "data/tileset_7.h"
#include "data/tilemap_8.h"
#include "data/tilemap_attr_0.h"

BANKREF(background_8)

const struct background_t background_8 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_7),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(tilemap_8),
    .cgb_tilemap_attr = TO_FAR_PTR_T(tilemap_attr_0)
};
