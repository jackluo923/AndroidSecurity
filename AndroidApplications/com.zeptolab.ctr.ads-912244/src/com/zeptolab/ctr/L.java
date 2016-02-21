package com.zeptolab.ctr;

import android.util.Log;

public class L {
    public static boolean LOG;

    static {
        LOG = false;
    }

    public static void d(String str, String str2) {
        if (LOG) {
            Log.d(str, str2);
        }
    }

    public static void e(String str, String str2) {
        if (LOG) {
            Log.e(str, str2);
        }
    }

    public static void e(String str, String str2, Exception exception) {
        if (LOG) {
            Log.e(str, str2, exception);
        }
    }

    public static void i(String str, String str2) {
        if (LOG) {
            Log.i(str, str2);
        }
    }

    public static void v(String str, String str2) {
        if (LOG) {
            Log.v(str, str2);
        }
    }

    public static void w(String str, String str2) {
        if (LOG) {
            Log.w(str, str2);
        }
    }
}