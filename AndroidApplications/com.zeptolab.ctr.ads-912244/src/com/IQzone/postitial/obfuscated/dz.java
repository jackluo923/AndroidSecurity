package com.IQzone.postitial.obfuscated;

public enum dz {
    AFTER_EXIT_BACK,
    AFTER_CALL,
    AFTER_TEXT,
    AFTER_EXIT_HOME;

    static {
        a = new dz("AFTER_EXIT_BACK", 0);
        b = new dz("AFTER_CALL", 1);
        c = new dz("AFTER_TEXT", 2);
        d = new dz("AFTER_EXIT_HOME", 3);
        e = new dz[]{a, b, c, d};
    }

    public static dz[] a() {
        return (dz[]) e.clone();
    }
}