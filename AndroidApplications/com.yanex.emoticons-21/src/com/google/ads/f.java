package com.google.ads;

public enum f {
    UNKNOWN,
    MALE,
    FEMALE;

    static {
        a = new f("UNKNOWN", 0);
        b = new f("MALE", 1);
        c = new f("FEMALE", 2);
        d = new f[]{a, b, c};
    }
}