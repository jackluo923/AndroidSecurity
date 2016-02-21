package com.millennialmedia.a.a.d;

public enum d {
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
        a = new d("BEGIN_ARRAY", 0);
        b = new d("END_ARRAY", 1);
        c = new d("BEGIN_OBJECT", 2);
        d = new d("END_OBJECT", 3);
        e = new d("NAME", 4);
        f = new d("STRING", 5);
        g = new d("NUMBER", 6);
        h = new d("BOOLEAN", 7);
        i = new d("NULL", 8);
        j = new d("END_DOCUMENT", 9);
        k = new d[]{a, b, c, d, e, f, g, h, i, j};
    }
}