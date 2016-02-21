package com.google.android.gms.internal;

public final class dr {
    public static boolean a(Object obj, Object obj2) {
        return (obj == null && obj2 == null) || (obj != null && obj2 != null && obj.equals(obj2));
    }

    public static long b(double d) {
        return (long) (1000.0d * d);
    }

    public static double l(long j) {
        return ((double) j) / 1000.0d;
    }
}