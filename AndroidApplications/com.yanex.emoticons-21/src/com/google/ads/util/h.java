package com.google.ads.util;

public enum h {
    VERBOSE(2),
    DEBUG(3),
    INFO(4),
    WARN(5),
    ERROR(6);
    public final int f;

    static {
        a = new h("VERBOSE", 0, 2);
        b = new h("DEBUG", 1, 3);
        c = new h("INFO", 2, 4);
        d = new h("WARN", 3, 5);
        e = new h("ERROR", 4, 6);
        g = new h[]{a, b, c, d, e};
    }

    private h(int i) {
        this.f = i;
    }
}