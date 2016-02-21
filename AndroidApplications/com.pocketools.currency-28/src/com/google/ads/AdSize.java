package com.google.ads;

import android.content.Context;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.pocketools.currency.PocketCurrency;

public class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final AdSize BANNER;
    public static final int FULL_WIDTH = -1;
    public static final AdSize IAB_BANNER;
    public static final AdSize IAB_LEADERBOARD;
    public static final AdSize IAB_MRECT;
    public static final AdSize IAB_WIDE_SKYSCRAPER;
    public static final int LANDSCAPE_AD_HEIGHT = 32;
    public static final int LARGE_AD_HEIGHT = 90;
    public static final int PORTRAIT_AD_HEIGHT = 50;
    public static final AdSize SMART_BANNER;
    private int a;
    private int b;
    private boolean c;
    private boolean d;
    private boolean e;
    private String f;

    static {
        SMART_BANNER = new AdSize(-1, -2, "mb");
        BANNER = new AdSize(320, 50, "mb");
        IAB_MRECT = new AdSize(300, 250, "as");
        IAB_BANNER = new AdSize(468, 60, "as");
        IAB_LEADERBOARD = new AdSize(728, 90, "as");
        IAB_WIDE_SKYSCRAPER = new AdSize(160, 600, "as");
    }

    public AdSize(int width, int height) {
        this(width, height, null);
        if (a()) {
            this.e = false;
            this.f = "mb";
        } else {
            this.e = true;
        }
    }

    private AdSize(int width, int height, String type) {
        boolean z = true;
        this.a = width;
        this.b = height;
        this.f = type;
        this.c = width == -1;
        if (height != -2) {
            z = false;
        }
        this.d = z;
        this.e = false;
    }

    private static int a(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return (int) (((float) displayMetrics.widthPixels) / displayMetrics.density);
    }

    private boolean a() {
        return this.a < 0 || this.b < 0;
    }

    private static int b(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i = (int) (((float) displayMetrics.heightPixels) / displayMetrics.density);
        if (i <= 400) {
            return LANDSCAPE_AD_HEIGHT;
        }
        return i <= 720 ? PORTRAIT_AD_HEIGHT : LARGE_AD_HEIGHT;
    }

    public static AdSize createAdSize(AdSize adSize, Context context) {
        if (context != null && adSize.a()) {
            AdSize adSize2 = new AdSize(adSize.isFullWidth() ? a(context) : adSize.getWidth(), adSize.isAutoHeight() ? b(context) : adSize.getHeight(), adSize.f);
            adSize2.d = adSize.d;
            adSize2.c = adSize.c;
            adSize2.e = adSize.e;
            return adSize2;
        } else if (adSize.a()) {
            return BANNER;
        } else {
            return adSize;
        }
    }

    public AdSize findBestSize(AdSize... options) {
        AdSize adSize = null;
        double d = 0.0d;
        if (options != null) {
            int length = options.length;
            int i = 0;
            while (i < length) {
                double d2;
                AdSize adSize2;
                AdSize adSize3 = options[i];
                if (isSizeAppropriate(adSize3.a, adSize3.b)) {
                    d2 = (((double) adSize3.a) * ((double) adSize3.b)) / (((double) this.a) * ((double) this.b));
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

    public int getHeight() {
        if (this.b >= 0) {
            return this.b;
        }
        throw new UnsupportedOperationException("Ad size was not set before getHeight() was called.");
    }

    public int getHeightInPixels(Context context) {
        return (int) TypedValue.applyDimension(1, (float) this.b, context.getResources().getDisplayMetrics());
    }

    public int getWidth() {
        if (this.a >= 0) {
            return this.a;
        }
        throw new UnsupportedOperationException("Ad size was not set before getWidth() was called.");
    }

    public int getWidthInPixels(Context context) {
        return (int) TypedValue.applyDimension(1, (float) this.a, context.getResources().getDisplayMetrics());
    }

    public boolean isAutoHeight() {
        return this.d;
    }

    public boolean isCustomAdSize() {
        return this.e;
    }

    public boolean isFullWidth() {
        return this.c;
    }

    public boolean isSizeAppropriate(int width, int height) {
        return ((double) width) <= ((double) this.a) * 1.25d && ((double) width) >= ((double) this.a) * 0.8d && ((double) height) <= ((double) this.b) * 1.25d && ((double) height) >= ((double) this.b) * 0.8d;
    }

    public String toString() {
        return getWidth() + "x" + getHeight() + (this.f == null ? PocketCurrency.AD_MOB_KEYWORD_HINT : "_" + this.f);
    }
}