#pragma bank 255

// Background: maypole

#include "gbs_types.h"
#include "data/tileset_18.h"
#include "data/tilemap_19.h"
#include "data/tilemap_attr_0.h"

BANKREF(background_19)

const struct background_t background_19 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_18),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(tilemap_19),
    .cgb_tilemap_attr = TO_FAR_PTR_T(tilemap_attr_0)
};
