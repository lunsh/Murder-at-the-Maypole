#pragma bank 255

// Background: select-farnswallow

#include "gbs_types.h"
#include "data/tileset_20.h"
#include "data/tilemap_22.h"
#include "data/tilemap_attr_0.h"

BANKREF(background_22)

const struct background_t background_22 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_20),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(tilemap_22),
    .cgb_tilemap_attr = TO_FAR_PTR_T(tilemap_attr_0)
};
