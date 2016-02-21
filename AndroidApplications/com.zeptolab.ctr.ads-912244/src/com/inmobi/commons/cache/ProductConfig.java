package com.inmobi.commons.cache;

import java.util.HashMap;
import java.util.Map;

public abstract class ProductConfig {
    private String a;
    private String b;
    private String c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private boolean i;

    public ProductConfig() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = 0;
        this.e = 3;
        this.f = 60;
        this.g = 0;
        this.h = -1;
        this.i = true;
    }

    Map a(String str) {
        if (getProtocol().equals("json")) {
            return new JSONMapBuilder().buildMap(str);
        }
        Map hashMap = new HashMap();
        hashMap.put(i.a, str);
        return hashMap;
    }

    public Map getData() {
        return a(this.c);
    }

    public int getExpiry() {
        return this.d;
    }

    public int getMaxRetry() {
        return this.e;
    }

    public String getProtocol() {
        return this.b;
    }

    public String getRawData() {
        return this.c;
    }

    public int getRetryInterval() {
        return this.f;
    }

    public int getRetryNumber() {
        return this.g;
    }

    public int getTimestamp() {
        return this.h;
    }

    public String getUrl() {
        return this.a;
    }

    public boolean isSendUidMap() {
        return this.i;
    }

    public void setData(String str) {
        this.c = str;
    }

    public void setExpiry(int i) {
        this.d = i;
    }

    public void setMaxRetry(int i) {
        this.e = i;
    }

    public void setProtocol(String str) {
        this.b = str;
    }

    public void setRetryInterval(int i) {
        this.f = i;
    }

    public void setRetryNumber(int i) {
        this.g = i;
    }

    public void setSendUidMap(boolean z) {
        this.i = z;
    }

    public void setTimestamp(int i) {
        this.h = i;
    }

    public void setUrl(String str) {
        this.a = str;
    }
}