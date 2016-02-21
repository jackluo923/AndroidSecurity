package com.google.ads.util;

import android.text.TextUtils;
import android.util.Log;

public final class e {
    private static boolean a;

    static {
        a = Log.isLoggable("GoogleAdsAssertion", FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER);
    }

    public static void a(Object obj) {
        c(obj != null, "Assertion that an object is not null failed.");
    }

    public static void a(Object obj, Object obj2) {
        c(obj == obj2, new StringBuilder("Assertion that 'a' and 'b' refer to the same object failed.a: ").append(obj).append(", b: ").append(obj2).toString());
    }

    public static void a(String str) {
        c(!TextUtils.isEmpty(str), new StringBuilder("Expected a non empty string, got: ").append(str).toString());
    }

    public static void a(boolean z) {
        c(!z, "Assertion failed.");
    }

    public static void a(boolean z, String str) {
        c(z, str);
    }

    public static void b(boolean z, String str) {
        c(!z, str);
    }

    private static void c(boolean z, String str) {
        if ((Log.isLoggable("GoogleAdsAssertion", FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER) || a) && !z) {
            Throwable fVar = new f(str);
            Log.d("GoogleAdsAssertion", str, fVar);
            throw fVar;
        }
    }
}