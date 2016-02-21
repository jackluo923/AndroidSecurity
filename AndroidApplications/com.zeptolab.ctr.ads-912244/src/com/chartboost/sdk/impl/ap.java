package com.chartboost.sdk.impl;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

public class ap implements am {
    static final String[] a;
    private byte[] b;
    private byte[] c;
    private av d;

    static {
        a = new String[128];
        a((byte) 48, (byte) 57);
        a((byte) 97, (byte) 122);
        a((byte) 65, (byte) 90);
    }

    public ap() {
        this.b = new byte[1024];
        this.c = new byte[1024];
        this.d = new av();
    }

    static void a(byte b, byte b2) {
        while (i < b2) {
            a[i] = AdTrackerConstants.BLANK + ((char) i);
            b = (byte) (i + 1);
        }
    }
}