package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.b.c;
import com.google.ads.interactivemedia.v3.a.b.e;
import com.google.ads.interactivemedia.v3.a.b.h;
import com.google.ads.interactivemedia.v3.a.b.j;
import com.google.ads.interactivemedia.v3.a.d.b;
import com.google.ads.interactivemedia.v3.a.l;
import com.google.ads.interactivemedia.v3.a.q;
import com.google.ads.interactivemedia.v3.a.t;
import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public final class f implements x {
    private final c a;
    private final boolean b;

    private final class a extends w {
        private final w b;
        private final w c;
        private final h d;

        public a(com.google.ads.interactivemedia.v3.a.f fVar, Type type, w wVar, Type type2, w wVar2, h hVar) {
            this.b = new k(fVar, wVar, type);
            this.c = new k(fVar, wVar2, type2);
            this.d = hVar;
        }

        public final /* synthetic */ Object a_(com.google.ads.interactivemedia.v3.a.d.a aVar) {
            b f = aVar.f();
            if (f == b.i) {
                aVar.j();
                return null;
            } else {
                Map map = (Map) this.d.a();
                Object a;
                if (f == b.a) {
                    aVar.a();
                    while (aVar.e()) {
                        aVar.a();
                        a = this.b.a(aVar);
                        if (map.put(a, this.c.a(aVar)) != null) {
                            throw new t(new StringBuilder("duplicate key: ").append(a).toString());
                        }
                        aVar.b();
                    }
                    aVar.b();
                    return map;
                } else {
                    aVar.c();
                    while (aVar.e()) {
                        e.a.a(aVar);
                        a = this.b.a(aVar);
                        if (map.put(a, this.c.a(aVar)) != null) {
                            throw new t(new StringBuilder("duplicate key: ").append(a).toString());
                        }
                    }
                    aVar.d();
                    return map;
                }
            }
        }

        public final /* synthetic */ void a_(com.google.ads.interactivemedia.v3.a.d.c cVar, Object obj) {
            int i = 0;
            Map map = (Map) obj;
            if (map == null) {
                cVar.f();
            } else if (f.this.b) {
                List arrayList = new ArrayList(map.size());
                List arrayList2 = new ArrayList(map.size());
                Iterator it = map.entrySet().iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    int i3;
                    entry = (Entry) it.next();
                    l a = this.b.a(entry.getKey());
                    arrayList.add(a);
                    arrayList2.add(entry.getValue());
                    i3 = (a.g() || a.h()) ? 1 : 0;
                    i2 = i3 | i2;
                }
                if (i2 != 0) {
                    cVar.b();
                    while (i < arrayList.size()) {
                        cVar.b();
                        j.a((l) arrayList.get(i), cVar);
                        this.c.a(cVar, arrayList2.get(i));
                        cVar.c();
                        i++;
                    }
                    cVar.c();
                } else {
                    cVar.d();
                    while (i < arrayList.size()) {
                        String valueOf;
                        l lVar = (l) arrayList.get(i);
                        if (lVar.i()) {
                            q m = lVar.m();
                            if (m.o()) {
                                valueOf = String.valueOf(m.a());
                            } else if (m.n()) {
                                valueOf = Boolean.toString(m.f());
                            } else if (m.p()) {
                                valueOf = m.b();
                            } else {
                                throw new AssertionError();
                            }
                        } else if (lVar.j()) {
                            valueOf = "null";
                        } else {
                            throw new AssertionError();
                        }
                        cVar.a(valueOf);
                        this.c.a(cVar, arrayList2.get(i));
                        i++;
                    }
                    cVar.e();
                }
            } else {
                cVar.d();
                Iterator it2 = map.entrySet().iterator();
                while (it2.hasNext()) {
                    entry = (Entry) it2.next();
                    cVar.a(String.valueOf(entry.getKey()));
                    this.c.a(cVar, entry.getValue());
                }
                cVar.e();
            }
        }
    }

    public f(c cVar, boolean z) {
        this.a = cVar;
        this.b = z;
    }

    public final w a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a aVar) {
        Type b = aVar.b();
        if (!Map.class.isAssignableFrom(aVar.a())) {
            return null;
        }
        w a;
        Type[] b2 = com.google.ads.interactivemedia.v3.a.b.b.b(b, com.google.ads.interactivemedia.v3.a.b.b.b(b));
        b = b2[0];
        a = (b == Boolean.TYPE || b == Boolean.class) ? l.f : fVar.a(com.google.ads.interactivemedia.v3.a.c.a.a(b));
        return new a(fVar, b2[0], a, b2[1], fVar.a(com.google.ads.interactivemedia.v3.a.c.a.a(b2[1])), this.a.a(aVar));
    }
}