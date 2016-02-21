package com.mopub.mobileads;

class MraidScreenSizeProperty extends MraidProperty {
    private final int a;
    private final int b;

    MraidScreenSizeProperty(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public static MraidScreenSizeProperty a(int i, int i2) {
        return new MraidScreenSizeProperty(i, i2);
    }

    public String a() {
        return new StringBuilder("screenSize: { width: ").append(this.a).append(", height: ").append(this.b).append(" }").toString();
    }
}