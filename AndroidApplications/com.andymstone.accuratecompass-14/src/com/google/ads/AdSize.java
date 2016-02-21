package com.google.ads;

import android.content.Context;
import android.util.DisplayMetrics;

public class AdSize {
    public static final AdSize a;
    public static final AdSize b;
    public static final AdSize c;
    public static final AdSize d;
    public static final AdSize e;
    public static final AdSize f;
    private final int g;
    private final int h;
    private boolean i;
    private boolean j;
    private boolean k;
    private String l;

    static {
        a = new AdSize(-1, -2, "mb");
        b = new AdSize(320, 50, "mb");
        c = new AdSize(300, 250, "as");
        d = new AdSize(468, 60, "as");
        e = new AdSize(728, 90, "as");
        f = new AdSize(160, 600, "as");
    }

    public AdSize(int i, int i2) {
        this(i, i2, null);
        if (f()) {
            this.k = false;
            this.l = "mb";
        } else {
            this.k = true;
        }
    }

    private AdSize(int i, int i2, String str) {
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

    private static int a(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return (int) (((float) displayMetrics.widthPixels) / displayMetrics.density);
    }

    public static AdSize a(AdSize adSize, Context context) {
        if (context != null && adSize.f()) {
            AdSize adSize2 = new AdSize(adSize.i ? a(context) : adSize.a(), adSize.j ? b(context) : adSize.b(), adSize.l);
            adSize2.j = adSize.j;
            adSize2.i = adSize.i;
            adSize2.k = adSize.k;
            return adSize2;
        } else if (adSize.f()) {
            return b;
        } else {
            return adSize;
        }
    }

    private static int b(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i = (int) (((float) displayMetrics.heightPixels) / displayMetrics.density);
        if (i <= 400) {
            return 32;
        }
        return i <= 720 ? 50 : 90;
    }

    private boolean f() {
        return this.g < 0 || this.h < 0;
    }

    public int a() {
        if (this.g >= 0) {
            return this.g;
        }
        throw new UnsupportedOperationException("Ad size was not set before getWidth() was called.");
    }

    public AdSize a(AdSize... adSizeArr) {
        AdSize adSize = null;
        double d = 0.0d;
        if (adSizeArr != null) {
            int length = adSizeArr.length;
            int i = 0;
            while (i < length) {
                double d2;
                AdSize adSize2;
                AdSize adSize3 = adSizeArr[i];
                if (a(adSize3.g, adSize3.h)) {
                    d2 = (((double) adSize3.g) * ((double) adSize3.h)) / (((double) this.g) * ((double) this.h));
                    if (d2 > 1.0d) {
                        d2 = 1.0d / d2;
                    }
                    if (d2 > d) {
                        adSize2 = adSize3;
                        i++;
                        adSize = adSize2;
                        d = d2;
                    }
                }
                d2 = d;
                adSize2 = adSize;
                i++;
                adSize = adSize2;
                d = d2;
            }
        }
        return adSize;
    }

    public boolean a(int i, int i2) {
        return ((double) i) <= ((double) this.g) * 1.25d && ((double) i) >= ((double) this.g) * 0.8d && ((double) i2) <= ((double) this.h) * 1.25d && ((double) i2) >= ((double) this.h) * 0.8d;
    }

    public int b() {
        if (this.h >= 0) {
            return this.h;
        }
        throw new UnsupportedOperationException("Ad size was not set before getHeight() was called.");
    }

    public boolean c() {
        return this.i;
    }

    public boolean d() {
        return this.j;
    }

    public boolean e() {
        return this.k;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AdSize)) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        return this.g == adSize.g && this.h == adSize.h;
    }

    public int hashCode() {
        return (Integer.valueOf(this.g).hashCode() << 16) | (Integer.valueOf(this.h).hashCode() & 65535);
    }

    public String toString() {
        return a() + "x" + b() + (this.l == null ? "" : "_" + this.l);
    }
}