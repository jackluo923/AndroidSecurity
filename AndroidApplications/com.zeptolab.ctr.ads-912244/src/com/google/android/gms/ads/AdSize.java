package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.internal.ab;
import com.google.android.gms.internal.cz;

public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final AdSize BANNER;
    public static final AdSize FULL_BANNER;
    public static final int FULL_WIDTH = -1;
    public static final AdSize LEADERBOARD;
    public static final AdSize MEDIUM_RECTANGLE;
    public static final AdSize SMART_BANNER;
    public static final AdSize WIDE_SKYSCRAPER;
    private final String kC;
    private final int v;
    private final int w;

    static {
        BANNER = new AdSize(320, 50, "320x50_mb");
        FULL_BANNER = new AdSize(468, 60, "468x60_as");
        LEADERBOARD = new AdSize(728, 90, "728x90_as");
        MEDIUM_RECTANGLE = new AdSize(300, 250, "300x250_as");
        WIDE_SKYSCRAPER = new AdSize(160, 600, "160x600_as");
        SMART_BANNER = new AdSize(-1, -2, "smart_banner");
    }

    public AdSize(int i, int i2) {
        this(i, i2, (i == -1 ? "FULL" : String.valueOf(i)) + "x" + (i2 == -2 ? "AUTO" : String.valueOf(i2)) + "_as");
    }

    AdSize(int i, int i2, String str) {
        if (i < 0 && i != -1) {
            throw new IllegalArgumentException("Invalid width for AdSize: " + i);
        } else if (i2 >= 0 || i2 == -2) {
            this.w = i;
            this.v = i2;
            this.kC = str;
        } else {
            throw new IllegalArgumentException("Invalid height for AdSize: " + i2);
        }
    }

    public boolean equals(AdSize adSize) {
        if (adSize == this) {
            return true;
        }
        if (!(adSize instanceof AdSize)) {
            return false;
        }
        adSize = adSize;
        return this.w == adSize.w && this.v == adSize.v && this.kC.equals(adSize.kC);
    }

    public int getHeight() {
        return this.v;
    }

    public int getHeightInPixels(Context context) {
        return this.v == -2 ? ab.b(context.getResources().getDisplayMetrics()) : cz.a(context, this.v);
    }

    public int getWidth() {
        return this.w;
    }

    public int getWidthInPixels(Context context) {
        return this.w == -1 ? ab.a(context.getResources().getDisplayMetrics()) : cz.a(context, this.w);
    }

    public int hashCode() {
        return this.kC.hashCode();
    }

    public boolean isAutoHeight() {
        return this.v == -2;
    }

    public boolean isFullWidth() {
        return this.w == -1;
    }

    public String toString() {
        return this.kC;
    }
}