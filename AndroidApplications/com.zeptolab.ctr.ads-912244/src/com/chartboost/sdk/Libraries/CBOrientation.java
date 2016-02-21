package com.chartboost.sdk.Libraries;

import com.google.ads.AdSize;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public enum CBOrientation {
    UNSPECIFIED,
    PORTRAIT,
    LANDSCAPE,
    PORTRAIT_REVERSE,
    LANDSCAPE_REVERSE;
    public static final CBOrientation LANDSCAPE_LEFT;
    public static final CBOrientation LANDSCAPE_RIGHT;
    public static final CBOrientation PORTRAIT_LEFT;
    public static final CBOrientation PORTRAIT_RIGHT;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;

        static {
            b = new int[com.chartboost.sdk.Libraries.CBOrientation.Difference.values().length];
            try {
                b[com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_90.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                b[com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_180.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                b[com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_270.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                b[com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_0.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            a = new int[CBOrientation.values().length];
            try {
                a[LANDSCAPE.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[PORTRAIT_REVERSE.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[LANDSCAPE_REVERSE.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                a[PORTRAIT.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            a[UNSPECIFIED.ordinal()] = 5;
        }
    }

    public enum Difference {
        public static final com.chartboost.sdk.Libraries.CBOrientation.Difference ANGLE_0;
        public static final com.chartboost.sdk.Libraries.CBOrientation.Difference ANGLE_180;
        public static final com.chartboost.sdk.Libraries.CBOrientation.Difference ANGLE_270;
        public static final com.chartboost.sdk.Libraries.CBOrientation.Difference ANGLE_90;
        private static final /* synthetic */ com.chartboost.sdk.Libraries.CBOrientation.Difference[] a;

        static {
            ANGLE_0 = new com.chartboost.sdk.Libraries.CBOrientation.Difference("ANGLE_0", 0);
            ANGLE_90 = new com.chartboost.sdk.Libraries.CBOrientation.Difference("ANGLE_90", 1);
            ANGLE_180 = new com.chartboost.sdk.Libraries.CBOrientation.Difference("ANGLE_180", 2);
            ANGLE_270 = new com.chartboost.sdk.Libraries.CBOrientation.Difference("ANGLE_270", 3);
            a = new com.chartboost.sdk.Libraries.CBOrientation.Difference[]{ANGLE_0, ANGLE_90, ANGLE_180, ANGLE_270};
        }

        private Difference(String str, int i) {
        }

        public static com.chartboost.sdk.Libraries.CBOrientation.Difference valueOf(String str) {
            return (com.chartboost.sdk.Libraries.CBOrientation.Difference) Enum.valueOf(com.chartboost.sdk.Libraries.CBOrientation.Difference.class, str);
        }

        public static com.chartboost.sdk.Libraries.CBOrientation.Difference[] values() {
            return (com.chartboost.sdk.Libraries.CBOrientation.Difference[]) a.clone();
        }

        public int getAsInt() {
            switch (AnonymousClass_1.b[ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    return AdSize.LARGE_AD_HEIGHT;
                case GoogleScorer.CLIENT_PLUS:
                    return 180;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    return 270;
                default:
                    return 0;
            }
        }

        public boolean isOdd() {
            return this == ANGLE_90 || this == ANGLE_270;
        }

        public boolean isReverse() {
            return this == ANGLE_180 || this == ANGLE_270;
        }
    }

    static {
        UNSPECIFIED = new CBOrientation("UNSPECIFIED", 0);
        PORTRAIT = new CBOrientation("PORTRAIT", 1);
        LANDSCAPE = new CBOrientation("LANDSCAPE", 2);
        PORTRAIT_REVERSE = new CBOrientation("PORTRAIT_REVERSE", 3);
        LANDSCAPE_REVERSE = new CBOrientation("LANDSCAPE_REVERSE", 4);
        a = new CBOrientation[]{UNSPECIFIED, PORTRAIT, LANDSCAPE, PORTRAIT_REVERSE, LANDSCAPE_REVERSE};
        PORTRAIT_LEFT = PORTRAIT_REVERSE;
        PORTRAIT_RIGHT = PORTRAIT;
        LANDSCAPE_LEFT = LANDSCAPE;
        LANDSCAPE_RIGHT = LANDSCAPE_REVERSE;
    }

    public boolean isLandscape() {
        return this == LANDSCAPE || this == LANDSCAPE_REVERSE;
    }

    public boolean isPortrait() {
        return this == PORTRAIT || this == PORTRAIT_REVERSE;
    }

    public CBOrientation rotate180() {
        return rotate90().rotate90();
    }

    public CBOrientation rotate270() {
        return rotate90().rotate90().rotate90();
    }

    public CBOrientation rotate90() {
        switch (AnonymousClass_1.a[ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                return PORTRAIT_LEFT;
            case GoogleScorer.CLIENT_PLUS:
                return LANDSCAPE_RIGHT;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return PORTRAIT_RIGHT;
            case GoogleScorer.CLIENT_APPSTATE:
                return LANDSCAPE_LEFT;
            default:
                return UNSPECIFIED;
        }
    }
}