package com.google.ads;

public enum bg {
    AD,
    NO_FILL,
    ERROR,
    TIMEOUT,
    NOT_FOUND,
    EXCEPTION;

    static {
        a = new bg("AD", 0);
        b = new bg("NO_FILL", 1);
        c = new bg("ERROR", 2);
        d = new bg("TIMEOUT", 3);
        e = new bg("NOT_FOUND", 4);
        f = new bg("EXCEPTION", 5);
        g = new bg[]{a, b, c, d, e, f};
    }
}