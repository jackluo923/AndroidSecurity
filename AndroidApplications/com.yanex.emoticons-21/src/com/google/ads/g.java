package com.google.ads;

import android.content.Context;
import android.util.DisplayMetrics;

public final class g {
    public static final g a;
    public static final g b;
    public static final g c;
    public static final g d;
    public static final g e;
    public static final g f;
    private final int g;
    private final int h;
    private boolean i;
    private boolean j;
    private boolean k;
    private String l;

    static {
        a = new g(-1, -2, "mb");
        b = new g(320, 50, "mb");
        c = new g(300, 250, "as");
        d = new g(468, 60, "as");
        e = new g(728, 90, "as");
        f = new g(160, 600, "as");
    }

    public g(int i, int i2) {
        this(i, i2, null);
        if (f()) {
            this.k = false;
            this.l = "mb";
        } else {
            this.k = true;
        }
    }

    private g(int i, int i2, String str) {
        boolean z = true;
        this.g = i;
        this.h = i2;
        this.l = str;
        this.i = i == -1;
        if (i2 != -2) {
            z = false;
        }
        this.j = z;
        this.k = false;
    }

    public static g a(g gVar, Context context) {
        if (context != null && gVar.f()) {
            int i;
            int i2;
            if (gVar.i) {
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                i = (int) (((float) displayMetrics.widthPixels) / displayMetrics.density);
            } else {
                i = gVar.a();
            }
            if (gVar.j) {
                DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
                i2 = (int) (((float) displayMetrics2.heightPixels) / displayMetrics2.density);
                if (i2 <= 400) {
                    i2 = 32;
                } else if (i2 <= 720) {
                    i2 = ActivityChooserModel.DEFAULT_HISTORY_MAX_LENGTH;
                } else {
                    i2 = 90;
                }
            } else {
                i2 = gVar.b();
            }
            g gVar2 = new g(i, i2, gVar.l);
            gVar2.j = gVar.j;
            gVar2.i = gVar.i;
            gVar2.k = gVar.k;
            return gVar2;
        } else if (gVar.f()) {
            return b;
        } else {
            return gVar;
        }
    }

    private boolean f() {
        return this.g < 0 || this.h < 0;
    }

    public final int a() {
        if (this.g >= 0) {
            return this.g;
        }
        throw new UnsupportedOperationException("Ad size was not set before getWidth() was called.");
    }

    public final int b() {
        if (this.h >= 0) {
            return this.h;
        }
        throw new UnsupportedOperationException("Ad size was not set before getHeight() was called.");
    }

    public final boolean c() {
        return this.i;
    }

    public final boolean d() {
        return this.j;
    }

    public final boolean e() {
        return this.k;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.g == gVar.g && this.h == gVar.h;
    }

    public final int hashCode() {
        return (Integer.valueOf(this.g).hashCode() << 16) | (Integer.valueOf(this.h).hashCode() & 65535);
    }

    public final String toString() {
        return a() + "x" + b() + (this.l == null ? "" : new StringBuilder("_").append(this.l).toString());
    }
}