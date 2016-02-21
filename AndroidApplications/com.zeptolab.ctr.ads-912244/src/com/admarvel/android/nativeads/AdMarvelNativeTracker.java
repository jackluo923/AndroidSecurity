package com.admarvel.android.nativeads;

public class AdMarvelNativeTracker {
    private String type;
    private String[] url;

    public String getType() {
        return this.type;
    }

    public String[] getUrl() {
        return this.url;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUrl(String[] strArr) {
        this.url = strArr;
    }
}