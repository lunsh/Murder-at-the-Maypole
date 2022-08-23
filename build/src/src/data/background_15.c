#pragma bank 255

// Background: logo

#include "gbs_types.h"
#include "data/tileset_14.h"
#include "data/tilemap_15.h"
#include "data/tilemap_attr_0.h"

BANKREF(background_15)

const struct background_t background_15 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_14),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(tilemap_15),
    .cgb_tilemap_attr = TO_FAR_PTR_T(tilemap_attr_0)
};
