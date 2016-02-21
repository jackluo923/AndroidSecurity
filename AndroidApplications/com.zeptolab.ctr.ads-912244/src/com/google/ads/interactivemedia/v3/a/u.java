package com.google.ads.interactivemedia.v3.a;

public enum u {
    ;

    enum AnonymousClass_1 extends u {
        AnonymousClass_1(String str) {
            super(str, 0, (byte) 0);
        }
    }

    enum AnonymousClass_2 extends u {
        AnonymousClass_2(String str) {
            super(str, 1, (byte) 0);
        }
    }

    static {
        a = new AnonymousClass_1("DEFAULT");
        b = new AnonymousClass_2("STRING");
        c = new u[]{a, b};
    }
}