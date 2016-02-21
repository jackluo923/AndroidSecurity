package com.IQzone.postitial.obfuscated;

enum kn {
    PORTRAIT,
    LANDSCAPE,
    NONE;

    static {
        a = new kn("PORTRAIT", 0);
        b = new kn("LANDSCAPE", 1);
        c = new kn("NONE", 2);
        kn[] knVarArr = new kn[]{a, b, c};
    }
}