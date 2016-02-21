package com.chartboost.sdk.impl;

import com.zeptolab.utils.HTMLEncoder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

public class al {
    private static boolean a;
    private static boolean b;
    static final Logger f;
    static bi g;
    static bi h;
    protected static Charset i;
    static ThreadLocal j;
    static ThreadLocal k;

    private enum a {
        CANON_EQ(128, 'c', "Pattern.CANON_EQ"),
        UNIX_LINES(1, 'd', "Pattern.UNIX_LINES"),
        GLOBAL(256, 'g', null),
        CASE_INSENSITIVE(2, 'i', null),
        MULTILINE(8, 'm', null),
        DOTALL(32, 's', "Pattern.DOTALL"),
        LITERAL(16, 't', "Pattern.LITERAL"),
        UNICODE_CASE(64, 'u', "Pattern.UNICODE_CASE"),
        COMMENTS(4, 'x', null);
        private static final Map m;
        public final int j;
        public final char k;
        public final String l;

        static {
            int i = 0;
            String str = "Pattern.CANON_EQ";
            a = new a("CANON_EQ", 0, 128, 'c', "Pattern.CANON_EQ");
            String str2 = "Pattern.UNIX_LINES";
            int i2 = 1;
            b = new a("UNIX_LINES", 1, 1, 'd', "Pattern.UNIX_LINES");
            str2 = null;
            c = new a("GLOBAL", 2, 256, 'g', null);
            i2 = 2;
            str2 = null;
            d = new a("CASE_INSENSITIVE", 3, 2, 'i', null);
            str2 = null;
            e = new a("MULTILINE", 4, 8, 'm', null);
            str2 = "Pattern.DOTALL";
            f = new a("DOTALL", 5, 32, 's', "Pattern.DOTALL");
            str2 = "Pattern.LITERAL";
            g = new a("LITERAL", 6, 16, 't', "Pattern.LITERAL");
            str2 = "Pattern.UNICODE_CASE";
            h = new a("UNICODE_CASE", 7, 64, 'u', "Pattern.UNICODE_CASE");
            i2 = 4;
            str2 = null;
            i = new a("COMMENTS", 8, 4, 'x', null);
            n = new a[]{a, b, c, d, e, f, g, h, i};
            m = new HashMap();
            a[] values = values();
            int length = values.length;
            while (i < length) {
                a aVar = values[i];
                m.put(Character.valueOf(aVar.k), aVar);
                i++;
            }
        }

        private a(int i, char c, String str) {
            this.j = i;
            this.k = c;
            this.l = str;
        }
    }

    static {
        f = Logger.getLogger("org.bson.BSON");
        a = false;
        b = false;
        g = new bi();
        h = new bi();
        i = Charset.forName(HTMLEncoder.ENCODE_NAME_DEFAULT);
        j = new ThreadLocal() {
            protected an a() {
                return new aq();
            }

            protected /* synthetic */ Object initialValue() {
                return a();
            }
        };
        k = new ThreadLocal() {
            protected am a() {
                return new ap();
            }

            protected /* synthetic */ Object initialValue() {
                return a();
            }
        };
    }

    public static Object a(Object obj) {
        if (!(!a() || g.a() == 0 || obj == null)) {
            List list = (List) g.a(obj.getClass());
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    obj = ((as) it.next()).a(obj);
                }
            }
        }
        return obj;
    }

    public static String a(int i) {
        StringBuilder stringBuilder = new StringBuilder();
        a[] values = a.values();
        int length = values.length;
        int i2 = 0;
        int i3 = i;
        while (i2 < length) {
            a aVar = values[i2];
            if ((aVar.j & i3) > 0) {
                stringBuilder.append(aVar.k);
                i3 -= aVar.j;
            }
            i2++;
        }
        if (i3 <= 0) {
            return stringBuilder.toString();
        }
        throw new IllegalArgumentException("some flags could not be recognized.");
    }

    private static boolean a() {
        return a || b;
    }
}