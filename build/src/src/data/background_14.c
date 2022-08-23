#pragma bank 255

// Background: gardenpass

#include "gbs_types.h"
#include "data/tileset_13.h"
#include "data/tilemap_14.h"
#include "data/tilemap_attr_0.h"

BANKREF(background_14)

const struct background_t background_14 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_13),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(tilemap_14),
    .cgb_tilemap_attr = TO_FAR_PTR_T(tilemap_attr_0)
};
