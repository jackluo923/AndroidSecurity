package com.mopub.mobileads;

class MraidViewableProperty extends MraidProperty {
    private final boolean a;

    MraidViewableProperty(boolean z) {
        this.a = z;
    }

    public static MraidViewableProperty a(boolean z) {
        return new MraidViewableProperty(z);
    }

    public String a() {
        return new StringBuilder("viewable: ").append(this.a ? "true" : "false").toString();
    }
}