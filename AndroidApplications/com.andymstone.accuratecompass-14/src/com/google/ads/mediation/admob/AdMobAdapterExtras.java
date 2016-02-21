package com.google.ads.mediation.admob;

import com.google.ads.mediation.NetworkExtras;
import java.util.HashMap;
import java.util.Map;

public class AdMobAdapterExtras implements NetworkExtras {
    private boolean a;
    private boolean b;
    private Map c;

    public AdMobAdapterExtras() {
        this.a = false;
        this.b = false;
        c();
    }

    public AdMobAdapterExtras(AdMobAdapterExtras adMobAdapterExtras) {
        this();
        if (adMobAdapterExtras != null) {
            this.a = adMobAdapterExtras.a;
            this.b = adMobAdapterExtras.b;
            this.c.putAll(adMobAdapterExtras.c);
        }
    }

    public AdMobAdapterExtras b(String str, Object obj) {
        this.c.put(str, obj);
        return this;
    }

    public AdMobAdapterExtras c() {
        this.c = new HashMap();
        return this;
    }

    public boolean d() {
        return this.a;
    }

    public boolean e() {
        return this.b;
    }

    public Map f() {
        return this.c;
    }
}