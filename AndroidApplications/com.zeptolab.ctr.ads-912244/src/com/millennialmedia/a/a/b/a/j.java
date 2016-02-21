package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ab;
import com.millennialmedia.a.a.af;
import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.am;
import com.millennialmedia.a.a.b.b;
import com.millennialmedia.a.a.b.c;
import com.millennialmedia.a.a.b.r;
import com.millennialmedia.a.a.b.x;
import com.millennialmedia.a.a.b.z;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;
import com.millennialmedia.a.a.k;
import com.millennialmedia.a.a.v;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public final class j implements am {
    private final c a;
    private final boolean b;

    private final class a extends ak {
        private final ak b;
        private final ak c;
        private final x d;

        public a(k kVar, Type type, ak akVar, Type type2, ak akVar2, x xVar) {
            this.b = new s(kVar, akVar, type);
            this.c = new s(kVar, akVar2, type2);
            this.d = xVar;
        }

        private String b(v vVar) {
            if (vVar.r()) {
                ab v = vVar.v();
                if (v.y()) {
                    return String.valueOf(v.c());
                }
                if (v.b()) {
                    return Boolean.toString(v.n());
                }
                if (v.z()) {
                    return v.d();
                }
                throw new AssertionError();
            } else if (vVar.s()) {
                return "null";
            } else {
                throw new AssertionError();
            }
        }

        public Map a_(com.millennialmedia.a.a.d.a aVar) {
            d f = aVar.f();
            if (f == d.i) {
                aVar.j();
                return null;
            } else {
                Map map = (Map) this.d.a();
                Object b;
                if (f == d.a) {
                    aVar.a();
                    while (aVar.e()) {
                        aVar.a();
                        b = this.b.b(aVar);
                        if (map.put(b, this.c.b(aVar)) != null) {
                            throw new af("duplicate key: " + b);
                        }
                        aVar.b();
                    }
                    aVar.b();
                    return map;
                } else {
                    aVar.c();
                    while (aVar.e()) {
                        r.a.a(aVar);
                        b = this.b.b(aVar);
                        if (map.put(b, this.c.b(aVar)) != null) {
                            throw new af("duplicate key: " + b);
                        }
                    }
                    aVar.d();
                    return map;
                }
            }
        }

        public void a_(e eVar, Map map) {
            int i = 0;
            if (map == null) {
                eVar.f();
            } else if (j.this.b) {
                List arrayList = new ArrayList(map.size());
                List arrayList2 = new ArrayList(map.size());
                Iterator it = map.entrySet().iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    int i3;
                    entry = (Entry) it.next();
                    v b = this.b.b(entry.getKey());
                    arrayList.add(b);
                    arrayList2.add(entry.getValue());
                    i3 = (b.p() || b.q()) ? 1 : 0;
                    i2 = i3 | i2;
                }
                if (i2 != 0) {
                    eVar.b();
                    while (i < arrayList.size()) {
                        eVar.b();
                        z.a((v) arrayList.get(i), eVar);
                        this.c.a(eVar, arrayList2.get(i));
                        eVar.c();
                        i++;
                    }
                    eVar.c();
                } else {
                    eVar.d();
                    while (i < arrayList.size()) {
                        eVar.a(b((v) arrayList.get(i)));
                        this.c.a(eVar, arrayList2.get(i));
                        i++;
                    }
                    eVar.e();
                }
            } else {
                eVar.d();
                Iterator it2 = map.entrySet().iterator();
                while (it2.hasNext()) {
                    entry = (Entry) it2.next();
                    eVar.a(String.valueOf(entry.getKey()));
                    this.c.a(eVar, entry.getValue());
                }
                eVar.e();
            }
        }

        public /* synthetic */ Object b(com.millennialmedia.a.a.d.a aVar) {
            return a(aVar);
        }
    }

    public j(c cVar, boolean z) {
        this.a = cVar;
        this.b = z;
    }

    private ak a(k kVar, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? t.f : kVar.a(com.millennialmedia.a.a.c.a.b(type));
    }

    public ak a(k kVar, com.millennialmedia.a.a.c.a aVar) {
        Type b = aVar.b();
        if (!Map.class.isAssignableFrom(aVar.a())) {
            return null;
        }
        Type[] b2 = b.b(b, b.e(b));
        ak a = a(kVar, b2[0]);
        ak a2 = kVar.a(com.millennialmedia.a.a.c.a.b(b2[1]));
        x a3 = this.a.a(aVar);
        return new a(kVar, b2[0], a, b2[1], a2, a3);
    }
}