package com.inmobi.commons.ads.cache;

public class AdData {
    private long a;
    private String b;
    private long c;
    private String d;
    private String e;

    public long getAdId() {
        return this.a;
    }

    public String getAdType() {
        return this.e;
    }

    public String getAppId() {
        return this.b;
    }

    public String getContent() {
        return this.d;
    }

    public long getTimestamp() {
        return this.c;
    }

    public void setAdId(long j) {
        this.a = j;
    }

    public void setAdType(String str) {
        this.e = str;
    }

    public void setAppId(String str) {
        this.b = str;
    }

    public void setContent(String str) {
        this.d = str;
    }

    public void setTimestamp(long j) {
        this.c = j;
    }
}