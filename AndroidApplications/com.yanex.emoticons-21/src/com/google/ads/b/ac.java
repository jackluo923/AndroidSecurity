package com.google.ads.b;

import android.content.Context;
import com.google.ads.g;

public final class ac {
    public static final ac a;
    private g b;
    private boolean c;
    private final boolean d;

    static {
        a = new ac(null, true);
    }

    private ac(g gVar, boolean z) {
        this.b = gVar;
        this.d = z;
    }

    public static ac a(g gVar) {
        return a(gVar, null);
    }

    public static ac a(g gVar, Context context) {
        return new ac(g.a(gVar, context), false);
    }

    public final boolean a() {
        return this.d;
    }

    public final void b(g gVar) {
        if (!this.d) {
            this.b = gVar;
        }
    }

    public final boolean b() {
        return this.c;
    }

    public final g c() {
        return this.b;
    }

    public final void d() {
        this.c = true;
    }
}