#pragma bank 255

// Background: menu_page2

#include "gbs_types.h"
#include "data/tileset_19.h"
#include "data/tilemap_21.h"
#include "data/tilemap_attr_0.h"

BANKREF(background_21)

const struct background_t background_21 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(tileset_19),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(tilemap_21),
    .cgb_tilemap_attr = TO_FAR_PTR_T(tilemap_attr_0)
};
