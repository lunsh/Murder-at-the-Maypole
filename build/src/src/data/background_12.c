#pragma bank 255

// Background: gardenpass-missoak

#include "gbs_types.h"
#include "data/tileset_11.h"
#include "data/tilemap_12.h"
#include "data/tilemap_attr_0.h"

BANKREF(background_12)

const struct background_t background_12 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_11),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(tilemap_12),
    .cgb_tilemap_attr = TO_FAR_PTR_T(tilemap_attr_0)
};
