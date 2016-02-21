package com.inmobi.monetization.internal.objects;

import com.inmobi.monetization.IMNative;
import com.inmobi.monetization.internal.TrackerView;

public class NativeAd extends IMNative {
    String b;
    String c;
    String d;
    TrackerView e;

    public NativeAd(String str, String str2, String str3) {
        super(str, str2, str3);
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }
}