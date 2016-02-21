package com.amazon.device.ads;

import java.util.Locale;

class MraidPlacementTypeProperty extends MraidProperty {
    private final PlacementType a;

    MraidPlacementTypeProperty(PlacementType placementType) {
        this.a = placementType;
    }

    public static MraidPlacementTypeProperty createWithType(PlacementType placementType) {
        return new MraidPlacementTypeProperty(placementType);
    }

    public String toJsonPair() {
        return "placementType: '" + this.a.toString().toLowerCase(Locale.US) + "'";
    }
}