package com.inmobi.monetization.internal;

public class LtvpErrorCode {
    int a;
    String b;

    public LtvpErrorCode(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public int getCode() {
        return this.a;
    }

    public String getMessage() {
        return this.b;
    }
}