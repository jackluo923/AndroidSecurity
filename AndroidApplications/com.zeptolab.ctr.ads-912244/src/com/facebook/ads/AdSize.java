package com.facebook.ads;

public enum AdSize {
    BANNER_320_50(320, 50),
    INTERSTITIAL(0, 0);
    private final int height;
    private final int width;

    private AdSize(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }
}