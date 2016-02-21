package com.google.ads.interactivemedia.v3.a;

import com.google.ads.interactivemedia.v3.a.b.a.g;
import com.google.ads.interactivemedia.v3.a.b.a.h;
import com.google.ads.interactivemedia.v3.a.b.a.i;
import com.google.ads.interactivemedia.v3.a.b.a.j;
import com.google.ads.interactivemedia.v3.a.b.a.l;
import com.google.ads.interactivemedia.v3.a.b.c;
import com.google.ads.interactivemedia.v3.a.b.d;
import com.google.ads.interactivemedia.v3.a.d.b;
import java.io.EOFException;
import java.io.IOException;
import java.io.StringReader;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class f {
    final j a;
    final r b;
    private final ThreadLocal c;
    private final Map d;
    private final List e;
    private final c f;
    private final boolean g;
    private final boolean h;
    private final boolean i;
    private final boolean j;

    static class a extends w {
        private w a;

        a() {
        }

        public final Object a_(com.google.ads.interactivemedia.v3.a.d.a aVar) {
            if (this.a != null) {
                return this.a.a(aVar);
            }
            throw new IllegalStateException();
        }

        public final void a_(com.google.ads.interactivemedia.v3.a.d.c cVar, Object obj) {
            if (this.a == null) {
                throw new IllegalStateException();
            }
            this.a.a(cVar, obj);
        }

        public final void a_(w wVar) {
            if (this.a != null) {
                throw new AssertionError();
            }
            this.a = wVar;
        }
    }

    public f() {
        this(d.a, d.a, Collections.emptyMap(), false, false, false, true, false, false, u.a, Collections.emptyList());
    }

    f(d dVar, e eVar, Map map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, u uVar, List list) {
        this.c = new ThreadLocal();
        this.d = Collections.synchronizedMap(new HashMap());
        this.a = new j() {
        };
        this.b = new r() {
        };
        this.f = new c(map);
        this.g = z;
        this.i = z3;
        this.h = z4;
        this.j = z5;
        List arrayList = new ArrayList();
        arrayList.add(l.Q);
        arrayList.add(g.a);
        arrayList.add(dVar);
        arrayList.addAll(list);
        arrayList.add(l.x);
        arrayList.add(l.m);
        arrayList.add(l.g);
        arrayList.add(l.i);
        arrayList.add(l.k);
        arrayList.add(l.a(Long.TYPE, Long.class, uVar == u.a ? l.n : new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() != b.i) {
                    return Long.valueOf(aVar.l());
                }
                aVar.j();
                return null;
            }

            public final /* synthetic */ void a(com.google.ads.interactivemedia.v3.a.d.c cVar, Object obj) {
                Number number = (Number) obj;
                if (number == null) {
                    cVar.f();
                } else {
                    cVar.b(number.toString());
                }
            }
        }));
        arrayList.add(l.a(Double.TYPE, Double.class, z6 ? l.p : new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() != b.i) {
                    return Double.valueOf(aVar.k());
                }
                aVar.j();
                return null;
            }

            public final /* synthetic */ void a(com.google.ads.interactivemedia.v3.a.d.c cVar, Object obj) {
                Number number = (Number) obj;
                if (number == null) {
                    cVar.f();
                } else {
                    double doubleValue = number.doubleValue();
                    f fVar = f.this;
                    f.a(doubleValue);
                    cVar.a(number);
                }
            }
        }));
        arrayList.add(l.a(Float.TYPE, Float.class, z6 ? l.o : new w() {
            public final /* synthetic */ Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
                if (aVar.f() != b.i) {
                    return Float.valueOf((float) aVar.k());
                }
                aVar.j();
                return null;
            }

            public final /* synthetic */ void a(com.google.ads.interactivemedia.v3.a.d.c cVar, Object obj) {
                Number number = (Number) obj;
                if (number == null) {
                    cVar.f();
                } else {
                    float floatValue = number.floatValue();
                    f fVar = f.this;
                    f.a((double) floatValue);
                    cVar.a(number);
                }
            }
        }));
        arrayList.add(l.r);
        arrayList.add(l.t);
        arrayList.add(l.z);
        arrayList.add(l.B);
        arrayList.add(l.a(BigDecimal.class, l.v));
        arrayList.add(l.a(BigInteger.class, l.w));
        arrayList.add(l.D);
        arrayList.add(l.F);
        arrayList.add(l.J);
        arrayList.add(l.O);
        arrayList.add(l.H);
        arrayList.add(l.d);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.c.a);
        arrayList.add(l.M);
        arrayList.add(j.a);
        arrayList.add(i.a);
        arrayList.add(l.K);
        arrayList.add(com.google.ads.interactivemedia.v3.a.b.a.a.a);
        arrayList.add(l.R);
        arrayList.add(l.b);
        arrayList.add(new com.google.ads.interactivemedia.v3.a.b.a.b(this.f));
        arrayList.add(new com.google.ads.interactivemedia.v3.a.b.a.f(this.f, z2));
        arrayList.add(new h(this.f, eVar, dVar));
        this.e = Collections.unmodifiableList(arrayList);
    }

    private Object a(com.google.ads.interactivemedia.v3.a.d.a aVar, Type type) {
        boolean z = true;
        boolean p = aVar.p();
        aVar.a(z);
        try {
            aVar.f();
            Object a = a(com.google.ads.interactivemedia.v3.a.c.a.a(type)).a(aVar);
            aVar.a(p);
            return a;
        } catch (EOFException e) {
            th = e;
            if (z) {
                aVar.a(p);
                return null;
            } else {
                Throwable th2;
                throw new t(th2);
            }
        } catch (IllegalStateException e2) {
            throw new t(e2);
        } catch (IOException e3) {
            throw new t(e3);
        } catch (Throwable th3) {
        }
    }

    static /* synthetic */ void a(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public final w a(com.google.ads.interactivemedia.v3.a.c.a aVar) {
        int i;
        Map map;
        w wVar = (w) this.d.get(aVar);
        if (wVar == null) {
            Map map2 = (Map) this.c.get();
            boolean z = 0;
            if (map2 == null) {
                HashMap hashMap = new HashMap();
                this.c.set(hashMap);
                HashMap hashMap2 = hashMap;
                i = 1;
            } else {
                map = map2;
            }
            a aVar2 = (a) map.get(aVar);
            if (aVar2 == null) {
                try {
                    a aVar3 = new a();
                    map.put(aVar, aVar3);
                    Iterator it = this.e.iterator();
                    while (it.hasNext()) {
                        wVar = ((x) it.next()).a(this, aVar);
                        if (wVar != null) {
                            aVar3.a(wVar);
                            this.d.put(aVar, wVar);
                            map.remove(aVar);
                            if (i != 0) {
                                this.c.remove();
                            }
                        }
                    }
                    throw new IllegalArgumentException(new StringBuilder("GSON cannot handle ").append(aVar).toString());
                } catch (Throwable th) {
                    map.remove(aVar);
                    if (i != 0) {
                        this.c.remove();
                    }
                }
            }
        }
        return wVar;
    }

    public final w a(x xVar, com.google.ads.interactivemedia.v3.a.c.a aVar) {
        Iterator it = this.e.iterator();
        int i = 0;
        while (it.hasNext()) {
            x xVar2 = (x) it.next();
            if (i != 0) {
                w a = xVar2.a(this, aVar);
                if (a != null) {
                    return a;
                }
            } else if (xVar2 == xVar) {
                i = 1;
            }
        }
        throw new IllegalArgumentException(new StringBuilder("GSON cannot serialize ").append(aVar).toString());
    }

    public final w a(Class cls) {
        return a(com.google.ads.interactivemedia.v3.a.c.a.a(cls));
    }

    public final Object a(String str, Type type) {
        Object obj;
        if (str == null) {
            obj = null;
        } else {
            com.google.ads.interactivemedia.v3.a.d.a aVar = new com.google.ads.interactivemedia.v3.a.d.a(new StringReader(str));
            obj = a(aVar, type);
            if (obj != null) {
                try {
                    if (aVar.f() != b.j) {
                        throw new m("JSON document was not fully consumed.");
                    }
                } catch (com.google.ads.interactivemedia.v3.a.d.d e) {
                    throw new t(e);
                } catch (IOException e2) {
                    throw new m(e2);
                }
            }
        }
        return com.google.ads.interactivemedia.v3.a.b.i.a((Class)type).cast(obj);
    }

    public final void a(Object obj, Type type, Appendable appendable) {
        try {
            Writer a = com.google.ads.interactivemedia.v3.a.b.j.a(appendable);
            if (this.i) {
                a.write(")]}'\n");
            }
            com.google.ads.interactivemedia.v3.a.d.c cVar = new com.google.ads.interactivemedia.v3.a.d.c(a);
            if (this.j) {
                cVar.c("  ");
            }
            cVar.d(this.g);
            w a2 = a(com.google.ads.interactivemedia.v3.a.c.a.a(type));
            boolean g = cVar.g();
            cVar.b(true);
            boolean h = cVar.h();
            cVar.c(this.h);
            boolean i = cVar.i();
            cVar.d(this.g);
            try {
                a2.a(cVar, obj);
                cVar.b(g);
                cVar.c(h);
                cVar.d(i);
            } catch (IOException e) {
                throw new m(e);
            } catch (Throwable th) {
            }
        } catch (IOException e2) {
            throw new m(e2);
        }
    }

    public final String toString() {
        return new StringBuilder("{serializeNulls:").append(this.g).append("factories:").append(this.e).append(",instanceCreators:").append(this.f).append("}").toString();
    }
}