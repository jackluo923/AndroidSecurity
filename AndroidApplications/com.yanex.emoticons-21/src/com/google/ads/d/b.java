package com.google.ads.d;

public enum b {
    NONE("none"),
    DASHED("dashed"),
    DOTTED("dotted"),
    SOLID("solid");
    private String e;

    static {
        String str = "none";
        a = new b("NONE", 0, "none");
        str = "dashed";
        b = new b("DASHED", 1, "dashed");
        str = "dotted";
        c = new b("DOTTED", 2, "dotted");
        str = "solid";
        d = new b("SOLID", 3, "solid");
        f = new b[]{a, b, c, d};
    }

    private b(String str) {
        this.e = str;
    }

    public final String toString() {
        return this.e;
    }
}