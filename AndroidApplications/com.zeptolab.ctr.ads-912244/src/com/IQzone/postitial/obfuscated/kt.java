package com.IQzone.postitial.obfuscated;

import com.google.android.gms.tagmanager.DataLayer;

enum kt {
    EVENT(DataLayer.EVENT_KEY);
    private final String b;

    static {
        String str = "EVENT";
        String str2 = DataLayer.EVENT_KEY;
        a = new kt(str, 0, DataLayer.EVENT_KEY);
        new kt[1][0] = a;
    }

    private kt(String str) {
        this.b = str;
    }

    public final String a() {
        return this.b;
    }
}