package com.admarvel.android.nativeads;

public class AdMarvelNativeCta {
    private String action;
    private String clickUrl;
    private AdMarvelNativeImage image;
    private String title;

    public String getAction() {
        return this.action;
    }

    public String getClickUrl() {
        return this.clickUrl;
    }

    public AdMarvelNativeImage getImage() {
        return this.image;
    }

    public String getTitle() {
        return this.title;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public void setClickUrl(String str) {
        this.clickUrl = str;
    }

    public void setImage(AdMarvelNativeImage adMarvelNativeImage) {
        this.image = adMarvelNativeImage;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}