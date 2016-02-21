package com.google.android.gms.internal;

import android.os.Looper;
import android.text.TextUtils;

public final class er {
    public static void a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void a(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void ac(String str) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException(str);
        }
    }

    public static void ad(String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException(str);
        }
    }

    public static String aj(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Given String is empty or null");
    }

    public static Object b(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(String.valueOf(obj2));
    }

    public static void b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static Object f(Object obj) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("null reference");
    }

    public static void v(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void x(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }
}