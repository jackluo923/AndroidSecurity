package com.google.ads.util;

public enum a {
    INVALID,
    SPEAKER,
    HEADPHONES,
    VIBRATE,
    EMULATOR,
    OTHER;

    static {
        a = new a("INVALID", 0);
        b = new a("SPEAKER", 1);
        c = new a("HEADPHONES", 2);
        d = new a("VIBRATE", 3);
        e = new a("EMULATOR", 4);
        f = new a("OTHER", 5);
        g = new a[]{a, b, c, d, e, f};
    }
}