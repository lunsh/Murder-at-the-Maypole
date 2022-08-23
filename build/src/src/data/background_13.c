#pragma bank 255

// Background: gardenpass-talk

#include "gbs_types.h"
#include "data/tileset_12.h"
#include "data/tilemap_13.h"
#include "data/tilemap_attr_0.h"

BANKREF(background_13)

const struct background_t background_13 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_12),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(tilemap_13),
    .cgb_tilemap_attr = TO_FAR_PTR_T(tilemap_attr_0)
};
