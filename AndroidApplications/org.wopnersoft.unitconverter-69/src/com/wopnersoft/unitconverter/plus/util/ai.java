package com.wopnersoft.unitconverter.plus.util;

// compiled from: ProGuard
public enum ai {
    STD,
    BIN,
    OCT,
    HEX,
    ROM;

    static {
        a = new ai("STD", 0);
        b = new ai("BIN", 1);
        c = new ai("OCT", 2);
        d = new ai("HEX", 3);
        e = new ai("ROM", 4);
        f = new ai[]{a, b, c, d, e};
    }
}