package com.vungle.publisher;

public final class ca {
    private static int a(int i, int i2) {
        b(i);
        int i3 = 1 << i;
        return i2 == 0 ? i3 ^ -1 : i3;
    }

    public static int a(int i, int i2, int i3) {
        a(i3);
        return i3 == 1 ? a(i2, 1) | i : a(i2, 0) & i;
    }

    public static void a(int i) {
        if (i < 0 || i > 1) {
            throw new IllegalArgumentException("bit must be 0 or 1");
        }
    }

    public static void b(int i) {
        if (i < 0 || i > 31) {
            throw new IllegalArgumentException("bit index must be 0-31");
        }
    }
}