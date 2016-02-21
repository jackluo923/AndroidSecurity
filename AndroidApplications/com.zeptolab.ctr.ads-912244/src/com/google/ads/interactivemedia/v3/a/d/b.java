package com.google.ads.interactivemedia.v3.a.d;

public enum b {
    BEGIN_ARRAY,
    END_ARRAY,
    BEGIN_OBJECT,
    END_OBJECT,
    NAME,
    STRING,
    NUMBER,
    BOOLEAN,
    NULL,
    END_DOCUMENT;

    static {
        a = new b("BEGIN_ARRAY", 0);
        b = new b("END_ARRAY", 1);
        c = new b("BEGIN_OBJECT", 2);
        d = new b("END_OBJECT", 3);
        e = new b("NAME", 4);
        f = new b("STRING", 5);
        g = new b("NUMBER", 6);
        h = new b("BOOLEAN", 7);
        i = new b("NULL", 8);
        j = new b("END_DOCUMENT", 9);
        k = new b[]{a, b, c, d, e, f, g, h, i, j};
    }
}