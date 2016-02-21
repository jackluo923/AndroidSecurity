package com.google.ads.util;

import android.util.Log;
import com.andymstone.core.o;

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

    public interface b {
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
        if (a("Ads", (int)o.MyAlertDialog_MAD_titleStyle)) {
            Log.d("Ads", str);
        }
        a(a.b, str);
    }

    public static void a(String str, Throwable th) {
        if (a("Ads", (int)o.MyAlertDialog_MAD_titleStyle)) {
            Log.d("Ads", str, th);
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
        if (a("Ads", (int)o.MyAlertDialog_MAD_divider)) {
            Log.e("Ads", str);
        }
        a(a.e, str);
    }

    public static void b_(String str, Throwable th) {
        if (a("Ads", (int)o.MyAlertDialog_MAD_divider)) {
            Log.e("Ads", str, th);
        }
        a(a.e, str, th);
    }

    public static void c(String str) {
        if (a("Ads", (int)o.MyAlertDialog_MAD_buttonBarStyle)) {
            Log.i("Ads", str);
        }
        a(a.c, str);
    }

    public static void c(String str, Throwable th) {
        if (a("Ads", (int)o.MyAlertDialog_MAD_buttonBarStyle)) {
            Log.i("Ads", str, th);
        }
        a(a.c, str, th);
    }

    public static void d(String str) {
        if (a("Ads", (int)o.MyAlertDialog_myAlertDialogButtonDrawable)) {
            Log.v("Ads", str);
        }
        a(a.a, str);
    }

    public static void d(String str, Throwable th) {
        if (a("Ads", (int)o.MyAlertDialog_MAD_textAppearanceMedium)) {
            Log.w("Ads", str, th);
        }
        a(a.d, str, th);
    }

    public static void e(String str) {
        if (a("Ads", (int)o.MyAlertDialog_MAD_textAppearanceMedium)) {
            Log.w("Ads", str);
        }
        a(a.d, str);
    }
}