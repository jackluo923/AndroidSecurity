package com.amazon.device.ads;

class MraidViewableProperty extends MraidProperty {
    private final boolean a;

    MraidViewableProperty(boolean z) {
        this.a = z;
    }

    public static MraidViewableProperty createWithViewable(boolean z) {
        return new MraidViewableProperty(z);
    }

    public String toJsonPair() {
        return "viewable: " + (this.a ? "true" : "false");
    }
}