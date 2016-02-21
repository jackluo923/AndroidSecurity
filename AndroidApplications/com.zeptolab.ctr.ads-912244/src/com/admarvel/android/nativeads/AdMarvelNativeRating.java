package com.admarvel.android.nativeads;

public class AdMarvelNativeRating {
    private String base;
    private AdMarvelNativeImage blank;
    private AdMarvelNativeImage complete;
    private AdMarvelNativeImage full;
    private AdMarvelNativeImage half;
    private String value;

    public String getBase() {
        return this.base;
    }

    public AdMarvelNativeImage getBlank() {
        return this.blank;
    }

    public AdMarvelNativeImage getComplete() {
        return this.complete;
    }

    public AdMarvelNativeImage getFull() {
        return this.full;
    }

    public AdMarvelNativeImage getHalf() {
        return this.half;
    }

    public String getValue() {
        return this.value;
    }

    public void setBase(String str) {
        this.base = str;
    }

    public void setBlank(AdMarvelNativeImage adMarvelNativeImage) {
        this.blank = adMarvelNativeImage;
    }

    public void setComplete(AdMarvelNativeImage adMarvelNativeImage) {
        this.complete = adMarvelNativeImage;
    }

    public void setFull(AdMarvelNativeImage adMarvelNativeImage) {
        this.full = adMarvelNativeImage;
    }

    public void setHalf(AdMarvelNativeImage adMarvelNativeImage) {
        this.half = adMarvelNativeImage;
    }

    public void setValue(String str) {
        this.value = str;
    }
}