package com.google.ads.doubleclick;

import com.google.ads.mediation.admob.AdMobAdapterExtras;

public class DfpExtras extends AdMobAdapterExtras {
    private String a;

    public DfpExtras a(String str, Object obj) {
        super.b(str, obj);
        return this;
    }

    public String a() {
        return this.a;
    }

    public DfpExtras b() {
        super.c();
        return this;
    }

    public /* synthetic */ AdMobAdapterExtras b(String str, Object obj) {
        return a(str, obj);
    }

    public /* synthetic */ AdMobAdapterExtras c() {
        return b();
    }
}