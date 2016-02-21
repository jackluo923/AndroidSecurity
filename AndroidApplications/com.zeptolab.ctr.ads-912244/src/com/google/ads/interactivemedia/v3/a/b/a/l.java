package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.d.b;
import com.google.ads.interactivemedia.v3.a.d.c;
import com.google.ads.interactivemedia.v3.a.f;
import com.google.ads.interactivemedia.v3.a.i;
import com.google.ads.interactivemedia.v3.a.m;
import com.google.ads.interactivemedia.v3.a.n;
import com.google.ads.interactivemedia.v3.a.o;
import com.google.ads.interactivemedia.v3.a.q;
import com.google.ads.interactivemedia.v3.a.t;
import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.StringTokenizer;
import java.util.UUID;

public final class l {
    public static final w A;
    public static final x B;
    public static final w C;
    public static final x D;
    public static final w E;
    public static final x F;
    public static final w G;
    public static final x H;
    public static final w I;
    public static final x J;
    public static final x K;
    public static final w L;
    public static final x M;
    public static final w N;
    public static final x O;
    public static final w P;
    public static final x Q;
    public static final x R;
    public static final w a;
    public static final x b;
    public static final w c;
    public static final x d;
    public static final w e;
    public static final w f;
    public static final x g;
    public static final w h;
    public static final x i;
    public static final w j;
    public static final x k;
    public static final w l;
    public static final x m;
    public static final w n;
    public static final w o;
    public static final w p;
    public static final w q;
    public static final x r;
    public static final w s;
    public static final x t;
    public static final w u;
    public static final w v;
    public static final w w;
    public static final x x;
    public static final w y;
    public static final x z;

    final class AnonymousClass_20 implements x {
        final /* synthetic */ com.google.ads.interactivemedia.v3.a.c.a a;
        final /* synthetic */ w b;

        AnonymousClass_20(com.google.ads.interactivemedia.v3.a.c.a aVar, w wVar) {
            this.a = aVar;
            this.b = wVar;
        }

        public final w a(f fVar, com.google.ads.interactivemedia.v3.a.c.a aVar) {
            return aVar.equals(this.a) ? this.b : null;
        }
    }

    final class AnonymousClass_21 implements x {
        final /* synthetic */ Class a;
        final /* synthetic */ w b;

        AnonymousClass_21(Class cls, w wVar) {
            this.a = cls;
            this.b = wVar;
        }

        public final w a(f fVar, com.google.ads.interactivemedia.v3.a.c.a aVar) {
            return aVar.a() == this.a ? this.b : null;
        }

        public final String toString() {
            return new StringBuilder("Factory[type=").append(this.a.getName()).append(",adapter=").append(this.b).append("]").toString();
        }
    }

    final class AnonymousClass_22 implements x {
        final /* synthetic */ Class a;
        final /* synthetic */ Class b;
        final /* synthetic */ w c;

        AnonymousClass_22(Class cls, Class cls2, w wVar) {
            this.a = cls;
            this.b = cls2;
            this.c = wVar;
        }

        public final w a(f fVar, com.google.ads.interactivemedia.v3.a.c.a aVar) {
            Class a = aVar.a();
            return (a == this.a || a == this.b) ? this.c : null;
        }

        public final String toString() {
            return new StringBuilder("Factory[type=").append(this.b.getName()).append("+").append(this.a.getName()).append(",adapter=").append(this.c).append("]").toString();
        }
    }

    final class AnonymousClass_24 implements x {
        final /* synthetic */ Class a;
        final /* synthetic */ Class b;
        final /* synthetic */ w c;

        AnonymousClass_24(Class cls, Class cls2, w wVar) {
            this.a = cls;
            this.b = cls2;
            this.c = wVar;
        }

        public final w a(f fVar, com.google.ads.interactivemedia.v3.a.c.a aVar) {
            Class a = aVar.a();
            return (a == this.a || a == this.b) ? this.c : null;
        }

        public final String toString() {
            return new StringBuilder("Factory[type=").append(this.a.getName()).append("+").append(this.b.getName()).append(",adapter=").append(this.c).append("]").toString();
        }
    }

    final class AnonymousClass_25 implements x {
        final /* synthetic */ Class a;
        final /* synthetic */ w b;

        AnonymousClass_25(Class cls, w wVar) {
            this.a = cls;
            this.b = wVar;
        }

        public final w a(f fVar, com.google.ads.interactivemedia.v3.a.c.a aVar) {
            return this.a.isAssignableFrom(aVar.a()) ? this.b : null;
        }

        public final String toString() {
            return new StringBuilder("Factory[typeHierarchy=").append(this.a.getName()).append(",adapter=").append(this.b).append("]").toString();
        }
    }

    static /* synthetic */ class AnonymousClass_26 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[b.values().length];
            try {
                a[b.g.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[b.h.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[b.f.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[b.i.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[b.a.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[b.c.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[b.j.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                a[b.e.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                a[b.d.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            a[b.b.ordinal()] = 10;
        }
    }

    private static final class a extends w {
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
                    com.google.ads.interactivemedia.v3.a.a.b bVar = (com.google.ads.interactivemedia.v3.a.a.b) cls.getField(name).getAnnotation(com.google.ads.interactivemedia.v3.a.a.b.class);
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

        public final /* synthetic */ Object a_(com.google.ads.interactivemedia.v3.a.d.a aVar) {
            if (aVar.f() != b.i) {
                return (Enum) this.a.get(aVar.h());
            }
            aVar.j();
            return null;
        }

        public final /* synthetic */ void a_(c cVar, Object obj) {
            Enum enumR = (Enum) obj;
            cVar.b(enumR == null ? null : (String) this.b.get(enumR));
        }
    }

    static {
        a = new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() == b.i) {
                    aVar.j();
                    return null;
                } else {
                    throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
                }
            }

            public final /* synthetic */ void a(c cVar, Object obj) {
                Class cls = (Class) obj;
                if (cls == null) {
                    cVar.f();
                } else {
                    throw new UnsupportedOperationException(new StringBuilder("Attempted to serialize java.lang.Class: ").append(cls.getName()).append(". Forgot to register a type adapter?").toString());
                }
            }
        };
        b = a(Class.class, a);
        c = new w() {
            private static BitSet b(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() == b.i) {
                    aVar.j();
                    return null;
                } else {
                    BitSet bitSet = new BitSet();
                    aVar.a();
                    b f = aVar.f();
                    int i = 0;
                    while (f != b.b) {
                        boolean z;
                        switch (AnonymousClass_26.a[f.ordinal()]) {
                            case GoogleScorer.CLIENT_GAMES:
                                z = aVar.m() != 0;
                                break;
                            case GoogleScorer.CLIENT_PLUS:
                                z = aVar.i();
                                break;
                            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                                String h = aVar.h();
                                try {
                                    z = Integer.parseInt(h) != 0;
                                } catch (NumberFormatException e) {
                                    throw new t(new StringBuilder("Error: Expecting: bitset number value (1, 0), Found: ").append(h).toString());
                                }
                                break;
                            default:
                                throw new t(new StringBuilder("Invalid bitset value type: ").append(f).toString());
                        }
                        if (z) {
                            bitSet.set(i);
                        }
                        i++;
                        f = aVar.f();
                    }
                    aVar.b();
                    return bitSet;
                }
            }

            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                return b(aVar);
            }

            public final /* synthetic */ void a(c cVar, Object obj) {
                BitSet bitSet = (BitSet) obj;
                if (bitSet == null) {
                    cVar.f();
                } else {
                    cVar.b();
                    int i = 0;
                    while (i < bitSet.length()) {
                        cVar.a((long) (bitSet.get(i) ? 1 : 0));
                        i++;
                    }
                    cVar.c();
                }
            }
        };
        d = a(BitSet.class, c);
        e = new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() == b.i) {
                    aVar.j();
                    return null;
                } else if (aVar.f() == b.f) {
                    return Boolean.valueOf(Boolean.parseBoolean(aVar.h()));
                } else {
                    return Boolean.valueOf(aVar.i());
                }
            }

            public final /* synthetic */ void a(c cVar, Object obj) {
                Boolean bool = (Boolean) obj;
                if (bool == null) {
                    cVar.f();
                } else {
                    cVar.a(bool.booleanValue());
                }
            }
        };
        f = new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() != b.i) {
                    return Boolean.valueOf(aVar.h());
                }
                aVar.j();
                return null;
            }

            public final /* synthetic */ void a(c cVar, Object obj) {
                Boolean bool = (Boolean) obj;
                cVar.b(bool == null ? "null" : bool.toString());
            }
        };
        g = a(Boolean.TYPE, Boolean.class, e);
        h = new w() {
            private static Number b(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() == b.i) {
                    aVar.j();
                    return null;
                } else {
                    try {
                        return Byte.valueOf((byte) aVar.m());
                    } catch (NumberFormatException e) {
                        throw new t(e);
                    }
                }
            }

            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                return b(aVar);
            }

            public final /* bridge */ /* synthetic */ void a(c cVar, Object obj) {
                cVar.a((Number) obj);
            }
        };
        i = a(Byte.TYPE, Byte.class, h);
        j = new w() {
            private static Number b(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() == b.i) {
                    aVar.j();
                    return null;
                } else {
                    try {
                        return Short.valueOf((short) aVar.m());
                    } catch (NumberFormatException e) {
                        throw new t(e);
                    }
                }
            }

            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                return b(aVar);
            }

            public final /* bridge */ /* synthetic */ void a(c cVar, Object obj) {
                cVar.a((Number) obj);
            }
        };
        k = a(Short.TYPE, Short.class, j);
        l = new w() {
            private static Number b(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() == b.i) {
                    aVar.j();
                    return null;
                } else {
                    try {
                        return Integer.valueOf(aVar.m());
                    } catch (NumberFormatException e) {
                        throw new t(e);
                    }
                }
            }

            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                return b(aVar);
            }

            public final /* bridge */ /* synthetic */ void a(c cVar, Object obj) {
                cVar.a((Number) obj);
            }
        };
        m = a(Integer.TYPE, Integer.class, l);
        n = new w() {
            private static Number b(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() == b.i) {
                    aVar.j();
                    return null;
                } else {
                    try {
                        return Long.valueOf(aVar.l());
                    } catch (NumberFormatException e) {
                        throw new t(e);
                    }
                }
            }

            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                return b(aVar);
            }

            public final /* bridge */ /* synthetic */ void a(c cVar, Object obj) {
                cVar.a((Number) obj);
            }
        };
        o = new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() != b.i) {
                    return Float.valueOf((float) aVar.k());
                }
                aVar.j();
                return null;
            }

            public final /* bridge */ /* synthetic */ void a(c cVar, Object obj) {
                cVar.a((Number) obj);
            }
        };
        p = new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() != b.i) {
                    return Double.valueOf(aVar.k());
                }
                aVar.j();
                return null;
            }

            public final /* bridge */ /* synthetic */ void a(c cVar, Object obj) {
                cVar.a((Number) obj);
            }
        };
        q = new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                b f = aVar.f();
                switch (AnonymousClass_26.a[f.ordinal()]) {
                    case GoogleScorer.CLIENT_GAMES:
                        return new com.google.ads.interactivemedia.v3.a.b.f(aVar.h());
                    case GoogleScorer.CLIENT_APPSTATE:
                        aVar.j();
                        return null;
                    default:
                        throw new t(new StringBuilder("Expecting number, got: ").append(f).toString());
                }
            }

            public final /* bridge */ /* synthetic */ void a(c cVar, Object obj) {
                cVar.a((Number) obj);
            }
        };
        r = a(Number.class, q);
        s = new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() == b.i) {
                    aVar.j();
                    return null;
                } else {
                    String h = aVar.h();
                    if (h.length() == 1) {
                        return Character.valueOf(h.charAt(0));
                    }
                    throw new t(new StringBuilder("Expecting character, got: ").append(h).toString());
                }
            }

            public final /* synthetic */ void a(c cVar, Object obj) {
                Character ch = (Character) obj;
                cVar.b(ch == null ? null : String.valueOf(ch));
            }
        };
        t = a(Character.TYPE, Character.class, s);
        u = new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                b f = aVar.f();
                if (f == b.i) {
                    aVar.j();
                    return null;
                } else if (f == b.h) {
                    return Boolean.toString(aVar.i());
                } else {
                    return aVar.h();
                }
            }

            public final /* synthetic */ void a(c cVar, Object obj) {
                cVar.b((String) obj);
            }
        };
        v = new w() {
            private static BigDecimal b(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() == b.i) {
                    aVar.j();
                    return null;
                } else {
                    try {
                        return new BigDecimal(aVar.h());
                    } catch (NumberFormatException e) {
                        throw new t(e);
                    }
                }
            }

            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                return b(aVar);
            }

            public final /* bridge */ /* synthetic */ void a(c cVar, Object obj) {
                cVar.a((BigDecimal) obj);
            }
        };
        w = new w() {
            private static BigInteger b(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() == b.i) {
                    aVar.j();
                    return null;
                } else {
                    try {
                        return new BigInteger(aVar.h());
                    } catch (NumberFormatException e) {
                        throw new t(e);
                    }
                }
            }

            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                return b(aVar);
            }

            public final /* bridge */ /* synthetic */ void a(c cVar, Object obj) {
                cVar.a((BigInteger) obj);
            }
        };
        x = a(String.class, u);
        y = new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() != b.i) {
                    return new StringBuilder(aVar.h());
                }
                aVar.j();
                return null;
            }

            public final /* synthetic */ void a(c cVar, Object obj) {
                StringBuilder stringBuilder = (StringBuilder) obj;
                cVar.b(stringBuilder == null ? null : stringBuilder.toString());
            }
        };
        z = a(StringBuilder.class, y);
        A = new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() != b.i) {
                    return new StringBuffer(aVar.h());
                }
                aVar.j();
                return null;
            }

            public final /* synthetic */ void a(c cVar, Object obj) {
                StringBuffer stringBuffer = (StringBuffer) obj;
                cVar.b(stringBuffer == null ? null : stringBuffer.toString());
            }
        };
        B = a(StringBuffer.class, A);
        C = new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() == b.i) {
                    aVar.j();
                    return null;
                } else {
                    String h = aVar.h();
                    return "null".equals(h) ? null : new URL(h);
                }
            }

            public final /* synthetic */ void a(c cVar, Object obj) {
                URL url = (URL) obj;
                cVar.b(url == null ? null : url.toExternalForm());
            }
        };
        D = a(URL.class, C);
        E = new w() {
            private static URI b(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() == b.i) {
                    aVar.j();
                    return null;
                } else {
                    try {
                        String h = aVar.h();
                        return "null".equals(h) ? null : new URI(h);
                    } catch (URISyntaxException e) {
                        throw new m(e);
                    }
                }
            }

            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                return b(aVar);
            }

            public final /* synthetic */ void a(c cVar, Object obj) {
                URI uri = (URI) obj;
                cVar.b(uri == null ? null : uri.toASCIIString());
            }
        };
        F = a(URI.class, E);
        G = new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() != b.i) {
                    return InetAddress.getByName(aVar.h());
                }
                aVar.j();
                return null;
            }

            public final /* synthetic */ void a(c cVar, Object obj) {
                InetAddress inetAddress = (InetAddress) obj;
                cVar.b(inetAddress == null ? null : inetAddress.getHostAddress());
            }
        };
        H = b(InetAddress.class, G);
        I = new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() != b.i) {
                    return UUID.fromString(aVar.h());
                }
                aVar.j();
                return null;
            }

            public final /* synthetic */ void a(c cVar, Object obj) {
                UUID uuid = (UUID) obj;
                cVar.b(uuid == null ? null : uuid.toString());
            }
        };
        J = a(UUID.class, I);
        K = new x() {

            final class AnonymousClass_1 extends w {
                final /* synthetic */ w a;

                AnonymousClass_1(w wVar) {
                    this.a = wVar;
                }

                public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                    Date date = (Date) this.a.a(aVar);
                    return date != null ? new Timestamp(date.getTime()) : null;
                }

                public final /* bridge */ /* synthetic */ void a(c cVar, Object obj) {
                    this.a.a(cVar, (Timestamp) obj);
                }
            }

            public final w a(f fVar, com.google.ads.interactivemedia.v3.a.c.a aVar) {
                return aVar.a() != Timestamp.class ? null : new AnonymousClass_1(fVar.a(Date.class));
            }
        };
        L = new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                int i = 0;
                if (aVar.f() == b.i) {
                    aVar.j();
                    return null;
                } else {
                    aVar.c();
                    int i2 = 0;
                    int i3 = 0;
                    int i4 = 0;
                    int i5 = 0;
                    int i6 = 0;
                    while (aVar.f() != b.d) {
                        String g = aVar.g();
                        int m = aVar.m();
                        if ("year".equals(g)) {
                            i6 = m;
                        } else if ("month".equals(g)) {
                            i5 = m;
                        } else if ("dayOfMonth".equals(g)) {
                            i4 = m;
                        } else if ("hourOfDay".equals(g)) {
                            i3 = m;
                        } else if ("minute".equals(g)) {
                            i2 = m;
                        } else if ("second".equals(g)) {
                            i = m;
                        }
                    }
                    aVar.d();
                    return new GregorianCalendar(i6, i5, i4, i3, i2, i);
                }
            }

            public final /* synthetic */ void a(c cVar, Object obj) {
                Calendar calendar = (Calendar) obj;
                if (calendar == null) {
                    cVar.f();
                } else {
                    cVar.d();
                    cVar.a("year");
                    cVar.a((long) calendar.get(1));
                    cVar.a("month");
                    cVar.a((long) calendar.get(GoogleScorer.CLIENT_PLUS));
                    cVar.a("dayOfMonth");
                    cVar.a((long) calendar.get(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
                    cVar.a("hourOfDay");
                    cVar.a((long) calendar.get(R.styleable.MapAttrs_uiZoomGestures));
                    cVar.a("minute");
                    cVar.a((long) calendar.get(R.styleable.MapAttrs_useViewLifecycle));
                    cVar.a("second");
                    cVar.a((long) calendar.get(R.styleable.MapAttrs_zOrderOnTop));
                    cVar.e();
                }
            }
        };
        M = new AnonymousClass_24(Calendar.class, GregorianCalendar.class, L);
        N = new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() == b.i) {
                    aVar.j();
                    return null;
                } else {
                    String nextToken;
                    String nextToken2;
                    String nextToken3;
                    StringTokenizer stringTokenizer = new StringTokenizer(aVar.h(), "_");
                    nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                    nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                    nextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                    if (nextToken2 == null && nextToken3 == null) {
                        return new Locale(nextToken);
                    }
                    return nextToken3 == null ? new Locale(nextToken, nextToken2) : new Locale(nextToken, nextToken2, nextToken3);
                }
            }

            public final /* synthetic */ void a(c cVar, Object obj) {
                Locale locale = (Locale) obj;
                cVar.b(locale == null ? null : locale.toString());
            }
        };
        O = a(Locale.class, N);
        P = new w() {
            private void a(c cVar, com.google.ads.interactivemedia.v3.a.l lVar) {
                if (lVar == null || lVar.j()) {
                    cVar.f();
                } else if (lVar.i()) {
                    q m = lVar.m();
                    if (m.o()) {
                        cVar.a(m.a());
                    } else if (m.n()) {
                        cVar.a(m.f());
                    } else {
                        cVar.b(m.b());
                    }
                } else if (lVar.g()) {
                    cVar.b();
                    Iterator it = lVar.l().iterator();
                    while (it.hasNext()) {
                        a(cVar, (com.google.ads.interactivemedia.v3.a.l) it.next());
                    }
                    cVar.c();
                } else if (lVar.h()) {
                    cVar.d();
                    Iterator it2 = lVar.k().n().iterator();
                    while (it2.hasNext()) {
                        Entry entry = (Entry) it2.next();
                        cVar.a((String) entry.getKey());
                        a(cVar, (com.google.ads.interactivemedia.v3.a.l) entry.getValue());
                    }
                    cVar.e();
                } else {
                    throw new IllegalArgumentException(new StringBuilder("Couldn't write ").append(lVar.getClass()).toString());
                }
            }

            private com.google.ads.interactivemedia.v3.a.l b(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                com.google.ads.interactivemedia.v3.a.l iVar;
                switch (AnonymousClass_26.a[aVar.f().ordinal()]) {
                    case GoogleScorer.CLIENT_GAMES:
                        return new q(new com.google.ads.interactivemedia.v3.a.b.f(aVar.h()));
                    case GoogleScorer.CLIENT_PLUS:
                        return new q(Boolean.valueOf(aVar.i()));
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        return new q(aVar.h());
                    case GoogleScorer.CLIENT_APPSTATE:
                        aVar.j();
                        return n.a;
                    case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                        iVar = new i();
                        aVar.a();
                        while (aVar.e()) {
                            iVar.a(b(aVar));
                        }
                        aVar.b();
                        return iVar;
                    case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                        iVar = new o();
                        aVar.c();
                        while (aVar.e()) {
                            iVar.a(aVar.g(), b(aVar));
                        }
                        aVar.d();
                        return iVar;
                    default:
                        throw new IllegalArgumentException();
                }
            }

            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                return b(aVar);
            }
        };
        Q = b(com.google.ads.interactivemedia.v3.a.l.class, P);
        R = new x() {
            public final w a(f fVar, com.google.ads.interactivemedia.v3.a.c.a aVar) {
                Class a = aVar.a();
                if (!Enum.class.isAssignableFrom(a) || a == Enum.class) {
                    return null;
                }
                if (!a.isEnum()) {
                    a = a.getSuperclass();
                }
                return new a(a);
            }
        };
    }

    public static x a(com.google.ads.interactivemedia.v3.a.c.a aVar, w wVar) {
        return new AnonymousClass_20(aVar, wVar);
    }

    public static x a(Class cls, w wVar) {
        return new AnonymousClass_21(cls, wVar);
    }

    public static x a(Class cls, Class cls2, w wVar) {
        return new AnonymousClass_22(cls, cls2, wVar);
    }

    private static x b(Class cls, w wVar) {
        return new AnonymousClass_25(cls, wVar);
    }
}