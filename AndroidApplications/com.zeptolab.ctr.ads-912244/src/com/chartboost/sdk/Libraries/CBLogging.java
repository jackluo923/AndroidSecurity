package com.chartboost.sdk.Libraries;

import android.util.Log;
import com.chartboost.sdk.Chartboost;

public final class CBLogging {
    public static Level a;
    private static String b;

    public enum Level {
        NONE,
        INTEGRATION,
        ALL;

        static {
            NONE = new com.chartboost.sdk.Libraries.CBLogging.Level("NONE", 0);
            INTEGRATION = new com.chartboost.sdk.Libraries.CBLogging.Level("INTEGRATION", 1);
            ALL = new com.chartboost.sdk.Libraries.CBLogging.Level("ALL", 2);
            a = new com.chartboost.sdk.Libraries.CBLogging.Level[]{NONE, INTEGRATION, ALL};
        }
    }

    static {
        a = Level.INTEGRATION;
        b = "Chartboost SDK";
    }

    private static String a(String str) {
        String name;
        name = (str == null || str instanceof String) ? str : str.getClass().getName();
        return name;
    }

    public static void a(Object obj, String str) {
        if (a == Level.ALL) {
            Log.d(a(obj), str);
        }
    }

    public static void a(Object obj, String str, Throwable th) {
        if (a == Level.ALL) {
            Log.e(a(obj), str, th);
        }
    }

    public static void a(String str) {
        if (a()) {
            Log.e(b, str);
        }
    }

    private static boolean a() {
        return a == Level.ALL || (a == Level.INTEGRATION && CBUtility.a(Chartboost.sharedChartboost().getContext()));
    }

    public static void b(Object obj, String str) {
        if (a == Level.ALL) {
            Log.e(a(obj), str);
        }
    }

    public static void b(Object obj, String str, Throwable th) {
        if (a == Level.ALL) {
            Log.v(a(obj), str, th);
        }
    }

    public static void c(Object obj, String str) {
        if (a == Level.ALL) {
            Log.w(a(obj), str);
        }
    }

    public static void c(Object obj, String str, Throwable th) {
        if (a == Level.ALL) {
            Log.w(a(obj), str, th);
        }
    }

    public static void d(Object obj, String str) {
        if (a == Level.ALL) {
            Log.i(a(obj), str);
        }
    }
}