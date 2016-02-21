package com.google.ads.util;

import android.util.Log;
import com.google.ads.AdRequest;
import com.pocketools.currency.R;

public final class b {
    public static b a;
    private static int b;

    public enum a {
        VERBOSE(2),
        DEBUG(3),
        INFO(4),
        WARN(5),
        ERROR(6);
        public final int f;

        static {
            a = new com.google.ads.util.b.a("VERBOSE", 0, 2);
            b = new com.google.ads.util.b.a("DEBUG", 1, 3);
            c = new com.google.ads.util.b.a("INFO", 2, 4);
            d = new com.google.ads.util.b.a("WARN", 3, 5);
            e = new com.google.ads.util.b.a("ERROR", 4, 6);
            g = new com.google.ads.util.b.a[]{a, b, c, d, e};
        }

        private a(int i) {
            this.f = i;
        }
    }

    public static interface b {
        void a(com.google.ads.util.b.a aVar, String str, Throwable th);
    }

    static {
        a = null;
        b = 5;
    }

    private static void a(a aVar, String str) {
        a(aVar, str, null);
    }

    private static void a(a aVar, String str, Throwable th) {
        if (a != null) {
            a.a(aVar, str, th);
        }
    }

    public static void a(String str) {
        if (a(AdRequest.LOGTAG, (int)R.styleable.com_admob_android_ads_AdView_keywords)) {
            Log.d(AdRequest.LOGTAG, str);
        }
        a(a.b, str);
    }

    public static void a(String str, Throwable th) {
        if (a(AdRequest.LOGTAG, (int)R.styleable.com_admob_android_ads_AdView_keywords)) {
            Log.d(AdRequest.LOGTAG, str, th);
        }
        a(a.b, str, th);
    }

    private static boolean a(int i) {
        return i >= b;
    }

    public static boolean a(String str, int i) {
        return a(i) || Log.isLoggable(str, i);
    }

    public static void b_(String str) {
        if (a(AdRequest.LOGTAG, 6)) {
            Log.e(AdRequest.LOGTAG, str);
        }
        a(a.e, str);
    }

    public static void b_(String str, Throwable th) {
        if (a(AdRequest.LOGTAG, 6)) {
            Log.e(AdRequest.LOGTAG, str, th);
        }
        a(a.e, str, th);
    }

    public static void c(String str) {
        if (a(AdRequest.LOGTAG, (int)R.styleable.com_admob_android_ads_AdView_refreshInterval)) {
            Log.i(AdRequest.LOGTAG, str);
        }
        a(a.c, str);
    }

    public static void c(String str, Throwable th) {
        if (a(AdRequest.LOGTAG, (int)R.styleable.com_admob_android_ads_AdView_refreshInterval)) {
            Log.i(AdRequest.LOGTAG, str, th);
        }
        a(a.c, str, th);
    }

    public static void d(String str) {
        if (a(AdRequest.LOGTAG, (int)R.styleable.com_admob_android_ads_AdView_textColor)) {
            Log.v(AdRequest.LOGTAG, str);
        }
        a(a.a, str);
    }

    public static void d(String str, Throwable th) {
        if (a(AdRequest.LOGTAG, (int)R.styleable.com_admob_android_ads_AdView_isGoneWithoutAd)) {
            Log.w(AdRequest.LOGTAG, str, th);
        }
        a(a.d, str, th);
    }

    public static void e(String str) {
        if (a(AdRequest.LOGTAG, (int)R.styleable.com_admob_android_ads_AdView_isGoneWithoutAd)) {
            Log.w(AdRequest.LOGTAG, str);
        }
        a(a.d, str);
    }
}