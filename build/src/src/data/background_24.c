#pragma bank 255

// Background: skill-select

#include "gbs_types.h"
#include "data/tileset_22.h"
#include "data/tilemap_24.h"
#include "data/tilemap_attr_0.h"

BANKREF(background_24)

const struct background_t background_24 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_22),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(tilemap_24),
    .cgb_tilemap_attr = TO_FAR_PTR_T(tilemap_attr_0)
};
