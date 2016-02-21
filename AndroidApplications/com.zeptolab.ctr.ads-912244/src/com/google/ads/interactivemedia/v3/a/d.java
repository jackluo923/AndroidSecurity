package com.google.ads.interactivemedia.v3.a;

import java.lang.reflect.Field;

public enum d implements e {
    ;

    enum AnonymousClass_1 extends d {
        AnonymousClass_1(String str) {
            super(str, 0, (byte) 0);
        }

        public final String a(Field field) {
            return field.getName();
        }
    }

    enum AnonymousClass_2 extends d {
        AnonymousClass_2(String str) {
            super(str, 1, (byte) 0);
        }

        public final String a(Field field) {
            return d.a(field.getName());
        }
    }

    enum AnonymousClass_3 extends d {
        AnonymousClass_3(String str) {
            super(str, 2, (byte) 0);
        }

        public final String a(Field field) {
            return d.a(d.a(field.getName(), " "));
        }
    }

    enum AnonymousClass_4 extends d {
        AnonymousClass_4(String str) {
            super(str, 3, (byte) 0);
        }

        public final String a(Field field) {
            return d.a(field.getName(), "_").toLowerCase();
        }
    }

    enum AnonymousClass_5 extends d {
        AnonymousClass_5(String str) {
            super(str, 4, (byte) 0);
        }

        public final String a(Field field) {
            return d.a(field.getName(), "-").toLowerCase();
        }
    }

    static {
        a = new AnonymousClass_1("IDENTITY");
        b = new AnonymousClass_2("UPPER_CAMEL_CASE");
        c = new AnonymousClass_3("UPPER_CAMEL_CASE_WITH_SPACES");
        d = new AnonymousClass_4("LOWER_CASE_WITH_UNDERSCORES");
        e = new AnonymousClass_5("LOWER_CASE_WITH_DASHES");
        f = new d[]{a, b, c, d, e};
    }
}