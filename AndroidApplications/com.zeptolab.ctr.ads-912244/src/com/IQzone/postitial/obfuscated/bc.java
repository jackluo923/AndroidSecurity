package com.IQzone.postitial.obfuscated;

public enum bc {
    PORTRAIT,
    LANDSCAPE,
    NONE;

    static {
        a = new bc("PORTRAIT", 0);
        b = new bc("LANDSCAPE", 1);
        c = new bc("NONE", 2);
        bc[] bcVarArr = new bc[]{a, b, c};
    }
}