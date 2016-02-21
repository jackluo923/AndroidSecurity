package com.amazon.device.ads;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Locale;

public class AdSize {
    public static final AdSize SIZE_1024x50;
    public static final AdSize SIZE_300x250;
    public static final AdSize SIZE_300x50;
    public static final AdSize SIZE_320x50;
    public static final AdSize SIZE_600x90;
    public static final AdSize SIZE_728x90;
    public static final AdSize SIZE_AUTO;
    static final AdSize a;
    private static final String b = "AdSize";
    private int c;
    private int d;
    private SizeType e;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[SizeType.values().length];
            try {
                a[SizeType.EXPLICIT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[SizeType.AUTO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            a[SizeType.INTERSTITIAL.ordinal()] = 3;
        }
    }

    private enum SizeType {
        EXPLICIT,
        AUTO,
        INTERSTITIAL;

        static {
            EXPLICIT = new SizeType("EXPLICIT", 0);
            AUTO = new SizeType("AUTO", 1);
            INTERSTITIAL = new SizeType("INTERSTITIAL", 2);
            a = new SizeType[]{EXPLICIT, AUTO, INTERSTITIAL};
        }
    }

    static {
        SIZE_300x50 = new AdSize(300, 50);
        SIZE_320x50 = new AdSize(320, 50);
        SIZE_300x250 = new AdSize(300, 250);
        SIZE_600x90 = new AdSize(600, 90);
        SIZE_728x90 = new AdSize(728, 90);
        SIZE_1024x50 = new AdSize(1024, 50);
        SIZE_AUTO = new AdSize(SizeType.AUTO);
        a = new AdSize(SizeType.INTERSTITIAL);
    }

    public AdSize(int i, int i2) {
        a(i, i2);
    }

    AdSize(SizeType sizeType) {
        this.e = sizeType;
    }

    AdSize(String str, String str2) {
        a(Utils.parseInt(str, 0), Utils.parseInt(str2, 0));
    }

    private void a(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            String str = "The width and height must be positive integers.";
            Log.e(b, str);
            throw new IllegalArgumentException(str);
        } else {
            this.c = i;
            this.d = i2;
            this.e = SizeType.EXPLICIT;
        }
    }

    public int getHeight() {
        return this.d;
    }

    public int getWidth() {
        return this.c;
    }

    public boolean isAuto() {
        return this.e == SizeType.AUTO;
    }

    public String toString() {
        switch (AnonymousClass_1.a[this.e.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                return String.format(Locale.US, "%dx%d", new Object[]{Integer.valueOf(this.c), Integer.valueOf(this.d)});
            case GoogleScorer.CLIENT_PLUS:
                return "auto";
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return "interstitial";
            default:
                return null;
        }
    }
}