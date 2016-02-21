package com.inmobi.androidsdk.carb;

public class CarbInfo {
    private String a;
    private String b;

    public String getBid() {
        return this.a;
    }

    public String getInmId() {
        return this.b;
    }

    public void setBid(String str) {
        this.a = str;
    }

    public void setInmId(String str) {
        this.b = str;
    }
}