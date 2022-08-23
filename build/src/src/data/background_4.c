#pragma bank 255

// Background: bar

#include "gbs_types.h"
#include "data/tileset_3.h"
#include "data/tilemap_4.h"
#include "data/tilemap_attr_0.h"

BANKREF(background_4)

const struct background_t background_4 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_3),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(tilemap_4),
    .cgb_tilemap_attr = TO_FAR_PTR_T(tilemap_attr_0)
};
