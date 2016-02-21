package com.IQzone.postitial.obfuscated;

public enum bf {
    TOUCHABLE_NOT_TRANSPARENT,
    TOUCHABLE_NOT_TRANSPARENT_BEHIND,
    NOT_TOUCHABLE_CLEAR,
    NOT_TOUCHABLE_NOT_TRANSPARENT_BEHIND;

    static {
        a = new bf("TOUCHABLE_NOT_TRANSPARENT", 0);
        b = new bf("TOUCHABLE_NOT_TRANSPARENT_BEHIND", 1);
        c = new bf("NOT_TOUCHABLE_CLEAR", 2);
        d = new bf("NOT_TOUCHABLE_NOT_TRANSPARENT_BEHIND", 3);
        bf[] bfVarArr = new bf[]{a, b, c, d};
    }
}