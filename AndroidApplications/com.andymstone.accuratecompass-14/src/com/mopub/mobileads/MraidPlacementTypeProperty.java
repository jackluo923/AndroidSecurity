package com.mopub.mobileads;

import com.mopub.mobileads.MraidView.PlacementType;

class MraidPlacementTypeProperty extends MraidProperty {
    private final PlacementType a;

    MraidPlacementTypeProperty(PlacementType placementType) {
        this.a = placementType;
    }

    public static MraidPlacementTypeProperty a(PlacementType placementType) {
        return new MraidPlacementTypeProperty(placementType);
    }

    public String a() {
        return new StringBuilder("placementType: '").append(this.a.toString().toLowerCase()).append("'").toString();
    }
}