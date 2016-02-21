package com.inmobi.commons.uid;

public class AdvertisingId {
    private String a;
    private boolean b;

    void a(String str) {
        this.a = str;
    }

    void a(boolean z) {
        this.b = z;
    }

    public String getAdId() {
        return this.a;
    }

    public boolean isLimitAdTracking() {
        return this.b;
    }
}