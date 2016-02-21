package com.millennialmedia.a.a;

import com.millennialmedia.a.a.b.a.d;
import com.millennialmedia.a.a.b.a.h;
import com.millennialmedia.a.a.b.a.j;
import com.millennialmedia.a.a.b.a.m;
import com.millennialmedia.a.a.b.a.o;
import com.millennialmedia.a.a.b.a.q;
import com.millennialmedia.a.a.b.a.t;
import com.millennialmedia.a.a.b.c;
import com.millennialmedia.a.a.b.p;
import com.millennialmedia.a.a.b.y;
import com.millennialmedia.a.a.b.z;
import com.millennialmedia.a.a.d.e;
import com.millennialmedia.a.a.d.f;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
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

public final class k {
    static final boolean a = false;
    private static final String d = ")]}'\n";
    final t b;
    final ac c;
    private final ThreadLocal e;
    private final Map f;
    private final List g;
    private final c h;
    private final boolean i;
    private final boolean j;
    private final boolean k;
    private final boolean l;

    static class a extends ak {
        private ak a;

        a() {
        }

        public void a_(ak akVar) {
            if (this.a != null) {
                throw new AssertionError();
            }
            this.a = akVar;
        }

        public void a_(e eVar, Object obj) {
            if (this.a == null) {
                throw new IllegalStateException();
            }
            this.a.a(eVar, obj);
        }

        public Object b(com.millennialmedia.a.a.d.a aVar) {
            if (this.a != null) {
                return this.a.b(aVar);
            }
            throw new IllegalStateException();
        }
    }

    public k() {
        this(p.a, d.a, Collections.emptyMap(), false, false, false, true, false, false, ag.a, Collections.emptyList());
    }

    k(p pVar, j jVar, Map map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, ag agVar, List list) {
        this.e = new ThreadLocal();
        this.f = Collections.synchronizedMap(new HashMap());
        this.b = new l(this);
        this.c = new m(this);
        this.h = new c(map);
        this.i = z;
        this.k = z3;
        this.j = z4;
        this.l = z5;
        List arrayList = new ArrayList();
        arrayList.add(t.Q);
        arrayList.add(com.millennialmedia.a.a.b.a.k.a);
        arrayList.add(pVar);
        arrayList.addAll(list);
        arrayList.add(t.x);
        arrayList.add(t.m);
        arrayList.add(t.g);
        arrayList.add(t.i);
        arrayList.add(t.k);
        arrayList.add(t.a(Long.TYPE, Long.class, a(agVar)));
        arrayList.add(t.a(Double.TYPE, Double.class, a(z6)));
        arrayList.add(t.a(Float.TYPE, Float.class, b(z6)));
        arrayList.add(t.r);
        arrayList.add(t.t);
        arrayList.add(t.z);
        arrayList.add(t.B);
        arrayList.add(t.a(BigDecimal.class, t.v));
        arrayList.add(t.a(BigInteger.class, t.w));
        arrayList.add(t.D);
        arrayList.add(t.F);
        arrayList.add(t.J);
        arrayList.add(t.O);
        arrayList.add(t.H);
        arrayList.add(t.d);
        arrayList.add(d.a);
        arrayList.add(t.M);
        arrayList.add(q.a);
        arrayList.add(o.a);
        arrayList.add(t.K);
        arrayList.add(com.millennialmedia.a.a.b.a.a.a);
        arrayList.add(t.R);
        arrayList.add(t.b);
        arrayList.add(new com.millennialmedia.a.a.b.a.c(this.h));
        arrayList.add(new j(this.h, z2));
        arrayList.add(new m(this.h, jVar, pVar));
        this.g = Collections.unmodifiableList(arrayList);
    }

    private ak a(ag agVar) {
        return agVar == ag.a ? t.n : new p(this);
    }

    private ak a(boolean z) {
        return z ? t.p : new n(this);
    }

    private e a(Writer writer) {
        if (this.k) {
            writer.write(d);
        }
        e eVar = new e(writer);
        if (this.l) {
            eVar.c("  ");
        }
        eVar.d(this.i);
        return eVar;
    }

    private void a(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this" + " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    private static void a(Object obj, com.millennialmedia.a.a.d.a aVar) {
        if (obj != null) {
            try {
                if (aVar.f() != com.millennialmedia.a.a.d.d.j) {
                    throw new w("JSON document was not fully consumed.");
                }
            } catch (f e) {
                throw new af(e);
            } catch (IOException e2) {
                throw new w(e2);
            }
        }
    }

    private ak b(boolean z) {
        return z ? t.o : new o(this);
    }

    public ak a(am amVar, com.millennialmedia.a.a.c.a aVar) {
        Iterator it = this.g.iterator();
        int i = 0;
        while (it.hasNext()) {
            am amVar2 = (am) it.next();
            if (i != 0) {
                ak a = amVar2.a(this, aVar);
                if (a != null) {
                    return a;
                }
            } else if (amVar2 == amVar) {
                i = 1;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    public ak a(com.millennialmedia.a.a.c.a aVar) {
        int i;
        Map map;
        ak akVar = (ak) this.f.get(aVar);
        if (akVar == null) {
            Map map2 = (Map) this.e.get();
            boolean z = 0;
            if (map2 == null) {
                HashMap hashMap = new HashMap();
                this.e.set(hashMap);
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
                    Iterator it = this.g.iterator();
                    while (it.hasNext()) {
                        akVar = ((am) it.next()).a(this, aVar);
                        if (akVar != null) {
                            aVar3.a(akVar);
                            this.f.put(aVar, akVar);
                            map.remove(aVar);
                            if (i != 0) {
                                this.e.remove();
                            }
                        }
                    }
                    throw new IllegalArgumentException("GSON cannot handle " + aVar);
                } catch (Throwable th) {
                    map.remove(aVar);
                    if (i != 0) {
                        this.e.remove();
                    }
                }
            }
        }
        return akVar;
    }

    public ak a(Class cls) {
        return a(com.millennialmedia.a.a.c.a.c(cls));
    }

    public v a(Object obj) {
        return obj == null ? x.a : a(obj, obj.getClass());
    }

    public v a(Object obj, Type type) {
        e hVar = new h();
        a(obj, type, hVar);
        return hVar.a();
    }

    public Object a(com.millennialmedia.a.a.d.a aVar, Type type) {
        Object b;
        boolean z = true;
        boolean p = aVar.p();
        aVar.a(z);
        try {
            aVar.f();
            b = a(com.millennialmedia.a.a.c.a.b(type)).b(aVar);
        } catch (EOFException e) {
            th = e;
            if (z) {
                b = null;
            } else {
                Throwable th2;
                throw new af(th2);
            }
        } catch (IllegalStateException e2) {
            throw new af(e2);
        } catch (IOException e3) {
            throw new af(e3);
        } catch (Throwable th3) {
        }
        aVar.a(p);
        return b;
    }

    public Object a(v vVar, Class cls) {
        return y.a(cls).cast(a(vVar, (Type)cls));
    }

    public Object a(v vVar, Type type) {
        return vVar == null ? null : a(new com.millennialmedia.a.a.b.a.f(vVar), type);
    }

    public Object a(Reader reader, Class cls) {
        com.millennialmedia.a.a.d.a aVar = new com.millennialmedia.a.a.d.a(reader);
        Object a = a(aVar, (Type)cls);
        a(a, aVar);
        return y.a(cls).cast(a);
    }

    public Object a(Reader reader, Type type) {
        com.millennialmedia.a.a.d.a aVar = new com.millennialmedia.a.a.d.a(reader);
        Object a = a(aVar, type);
        a(a, aVar);
        return a;
    }

    public Object a(String str, Class cls) {
        return y.a(cls).cast(a(str, (Type)cls));
    }

    public Object a(String str, Type type) {
        return str == null ? null : a(new StringReader(str), type);
    }

    public String a(v vVar) {
        Appendable stringWriter = new StringWriter();
        a(vVar, stringWriter);
        return stringWriter.toString();
    }

    public void a(v vVar, e eVar) {
        boolean g = eVar.g();
        eVar.b(true);
        boolean h = eVar.h();
        eVar.c(this.j);
        boolean i = eVar.i();
        eVar.d(this.i);
        try {
            z.a(vVar, eVar);
            eVar.b(g);
            eVar.c(h);
            eVar.d(i);
        } catch (IOException e) {
            throw new w(e);
        } catch (Throwable th) {
        }
    }

    public void a(v vVar, Appendable appendable) {
        try {
            a(vVar, a(z.a(appendable)));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void a(Object obj, Appendable appendable) {
        if (obj != null) {
            a(obj, obj.getClass(), appendable);
        } else {
            a(x.a, appendable);
        }
    }

    public void a(Object obj, Type type, e eVar) {
        ak a = a(com.millennialmedia.a.a.c.a.b(type));
        boolean g = eVar.g();
        eVar.b(true);
        boolean h = eVar.h();
        eVar.c(this.j);
        boolean i = eVar.i();
        eVar.d(this.i);
        try {
            a.a(eVar, obj);
            eVar.b(g);
            eVar.c(h);
            eVar.d(i);
        } catch (IOException e) {
            throw new w(e);
        } catch (Throwable th) {
        }
    }

    public void a(Object obj, Type type, Appendable appendable) {
        try {
            a(obj, type, a(z.a(appendable)));
        } catch (IOException e) {
            throw new w(e);
        }
    }

    public String b(Object obj) {
        return obj == null ? a(x.a) : b(obj, obj.getClass());
    }

    public String b(Object obj, Type type) {
        Appendable stringWriter = new StringWriter();
        a(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public String toString() {
        return new StringBuilder("{serializeNulls:").append(this.i).append("factories:").append(this.g).append(",instanceCreators:").append(this.h).append("}").toString();
    }
}