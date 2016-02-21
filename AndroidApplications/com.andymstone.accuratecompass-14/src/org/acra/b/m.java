package org.acra.b;

enum m {
    AVC,
    H263,
    MPEG4,
    AAC;

    static {
        a = new m("AVC", 0);
        b = new m("H263", 1);
        c = new m("MPEG4", 2);
        d = new m("AAC", 3);
        e = new m[]{a, b, c, d};
    }
}