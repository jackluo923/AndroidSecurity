package com.flurry.sdk;

import android.text.TextUtils;
import android.util.Log;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class el {
    private static int a;
    private static boolean b;
    private static int c;
    private static boolean d;

    static {
        a = 4000;
        b = false;
        c = 5;
        d = false;
    }

    public static void a() {
        b = true;
    }

    public static void a(int i) {
        c = i;
    }

    public static void a(int i, String str, String str2) {
        c(i, str, str2);
    }

    public static void a(int i, String str, String str2, Throwable th) {
        c(i, str, str2, th);
    }

    public static void a(String str, String str2) {
        b((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, str, str2);
    }

    public static void a(String str, String str2, Throwable th) {
        b(IabHelper.BILLING_RESPONSE_RESULT_ERROR, str, str2, th);
    }

    public static void a(boolean z) {
        d = z;
    }

    public static void b() {
        b = false;
    }

    private static void b(int i, String str, String str2) {
        if (!b && c <= i) {
            d(i, str, str2);
        }
    }

    private static void b(int i, String str, String str2, Throwable th) {
        b(i, str, str2 + '\n' + Log.getStackTraceString(th));
    }

    public static void b(String str, String str2) {
        b((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, str, str2);
    }

    public static void b(String str, String str2, Throwable th) {
        b(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, str, str2, th);
    }

    public static int c() {
        return c;
    }

    private static void c(int i, String str, String str2) {
        if (d) {
            d(i, str, str2);
        }
    }

    private static void c(int i, String str, String str2, Throwable th) {
        c(i, str, str2 + '\n' + Log.getStackTraceString(th));
    }

    public static void c(String str, String str2) {
        b((int)GoogleScorer.CLIENT_PLUS, str, str2);
    }

    private static void d(int i, String str, String str2) {
        if (!d) {
            str = "FlurryAgent";
        }
        int length = TextUtils.isEmpty(str2) ? 0 : str2.length();
        int i2 = 0;
        while (i2 < length) {
            int i3 = a > length - i2 ? length : a + i2;
            if (Log.println(i, str, str2.substring(i2, i3)) > 0) {
                i2 = i3;
            } else {
                return;
            }
        }
    }

    public static void d(String str, String str2) {
        b((int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, str, str2);
    }

    public static boolean d() {
        return d;
    }
}