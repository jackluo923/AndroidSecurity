package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.a.b;
import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.am;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;
import com.millennialmedia.a.a.v;
import java.net.InetAddress;
import java.net.URI;
import java.net.URL;
import java.util.BitSet;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

public final class t {
    public static final ak A;
    public static final am B;
    public static final ak C;
    public static final am D;
    public static final ak E;
    public static final am F;
    public static final ak G;
    public static final am H;
    public static final ak I;
    public static final am J;
    public static final am K;
    public static final ak L;
    public static final am M;
    public static final ak N;
    public static final am O;
    public static final ak P;
    public static final am Q;
    public static final am R;
    public static final ak a;
    public static final am b;
    public static final ak c;
    public static final am d;
    public static final ak e;
    public static final ak f;
    public static final am g;
    public static final ak h;
    public static final am i;
    public static final ak j;
    public static final am k;
    public static final ak l;
    public static final am m;
    public static final ak n;
    public static final ak o;
    public static final ak p;
    public static final ak q;
    public static final am r;
    public static final ak s;
    public static final am t;
    public static final ak u;
    public static final ak v;
    public static final ak w;
    public static final am x;
    public static final ak y;
    public static final am z;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[d.values().length];
            try {
                a[d.g.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[d.h.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[d.f.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[d.i.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[d.a.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[d.c.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[d.j.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                a[d.e.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                a[d.d.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            a[d.b.ordinal()] = 10;
        }
    }

    private static final class a extends ak {
        private final Map a;
        private final Map b;

        public a(Class cls) {
            this.a = new HashMap();
            this.b = new HashMap();
            try {
                Enum[] enumArr = (Enum[]) cls.getEnumConstants();
                int length = enumArr.length;
                int i = 0;
                while (i < length) {
                    Object a;
                    Enum enumR = enumArr[i];
                    String name = enumR.name();
                    b bVar = (b) cls.getField(name).getAnnotation(b.class);
                    if (bVar != null) {
                        a = bVar.a();
                    } else {
                        String str = name;
                    }
                    this.a.put(a, enumR);
                    this.b.put(enumR, a);
                    i++;
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError();
            }
        }

        public Enum a_(com.millennialmedia.a.a.d.a aVar) {
            if (aVar.f() != d.i) {
                return (Enum) this.a.get(aVar.h());
            }
            aVar.j();
            return null;
        }

        public void a_(e eVar, Enum enumR) {
            eVar.b(enumR == null ? null : (String) this.b.get(enumR));
        }

        public /* synthetic */ Object b(com.millennialmedia.a.a.d.a aVar) {
            return a(aVar);
        }
    }

    static {
        a = new u();
        b = a(Class.class, a);
        c = new af();
        d = a(BitSet.class, c);
        e = new ar();
        f = new au();
        g = a(Boolean.TYPE, Boolean.class, e);
        h = new av();
        i = a(Byte.TYPE, Byte.class, h);
        j = new aw();
        k = a(Short.TYPE, Short.class, j);
        l = new ax();
        m = a(Integer.TYPE, Integer.class, l);
        n = new ay();
        o = new az();
        p = new v();
        q = new w();
        r = a(Number.class, q);
        s = new x();
        t = a(Character.TYPE, Character.class, s);
        u = new y();
        v = new z();
        w = new aa();
        x = a(String.class, u);
        y = new ab();
        z = a(StringBuilder.class, y);
        A = new ac();
        B = a(StringBuffer.class, A);
        C = new ad();
        D = a(URL.class, C);
        E = new ae();
        F = a(URI.class, E);
        G = new ag();
        H = b(InetAddress.class, G);
        I = new ah();
        J = a(UUID.class, I);
        K = new ai();
        L = new ak();
        M = b(Calendar.class, GregorianCalendar.class, L);
        N = new al();
        O = a(Locale.class, N);
        P = new am();
        Q = b(v.class, P);
        R = a();
    }

    private t() {
    }

    public static am a() {
        return new an();
    }

    public static am a(com.millennialmedia.a.a.c.a aVar, ak akVar) {
        return new ao(aVar, akVar);
    }

    public static am a(Class cls, ak akVar) {
        return new ap(cls, akVar);
    }

    public static am a(Class cls, Class cls2, ak akVar) {
        return new aq(cls, cls2, akVar);
    }

    public static am b(Class cls, ak akVar) {
        return new at(cls, akVar);
    }

    public static am b(Class cls, Class cls2, ak akVar) {
        return new as(cls, cls2, akVar);
    }
}