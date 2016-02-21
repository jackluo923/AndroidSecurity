package com.google.ads.internal;

import android.content.Context;
import com.google.ads.AdSize;

public class h {
    public static final h a;
    private AdSize b;
    private final boolean c;

    static {
        a = new h(null, true);
    }

    private h(AdSize adSize, boolean z) {
        this.b = adSize;
        this.c = z;
    }

    public static h a(AdSize adSize) {
        return a(adSize, null);
    }

    public static h a(AdSize adSize, Context context) {
        return new h(AdSize.a(adSize, context), false);
    }

    public boolean a() {
        return this.c;
    }

    public AdSize b() {
        return this.b;
    }

    public void b(AdSize adSize) {
        if (!this.c) {
            this.b = adSize;
        }
    }
}