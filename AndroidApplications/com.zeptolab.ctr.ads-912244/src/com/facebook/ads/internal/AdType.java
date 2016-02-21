package com.facebook.ads.internal;

public enum AdType {
    HTML(0),
    NATIVE(1);
    private final int value;

    private AdType(int i) {
        this.value = i;
    }

    public int getValue() {
        return this.value;
    }
}