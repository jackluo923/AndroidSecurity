package com.amazon.device.ads;

class MraidScreenSizeProperty extends MraidProperty {
    private final int a;
    private final int b;

    MraidScreenSizeProperty(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public static MraidScreenSizeProperty createWithSize(int i, int i2) {
        return new MraidScreenSizeProperty(i, i2);
    }

    public String toJsonPair() {
        return "screenSize: { width: " + this.a + ", height: " + this.b + " }";
    }
}