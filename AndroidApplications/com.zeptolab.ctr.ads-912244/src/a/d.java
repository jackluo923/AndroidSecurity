package a;

import a.a.f;
import a.a.h;
import a.a.l;
import a.a.n;
import a.a.r;
import a.a.s;
import a.a.t;
import a.a.v;
import a.a.w;
import a.a.x;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public abstract class d {

    static class a extends d {
        private final a a;
        private final l b;
        private final n c;
        private final Map d;
        private final Map e;
        private final List f;

        a(a aVar, l lVar, n nVar, Map map, Map map2, List list) {
            this.a = aVar;
            this.b = (l) a(lVar, "linker");
            this.c = (n) a(nVar, "plugin");
            this.d = (Map) a(map, "staticInjections");
            this.e = (Map) a(map2, "injectableTypes");
            this.f = (List) a(list, "setBindings");
        }

        private a.a.b a_(ClassLoader classLoader, String str, String str2) {
            Object obj = null;
            a aVar = this;
            while (aVar != null) {
                Class cls = (Class) aVar.e.get(str);
                Class cls2;
                if (cls != null) {
                    cls2 = cls;
                    break;
                } else {
                    aVar = aVar.a;
                    cls2 = cls;
                }
            }
            if (obj == null) {
                throw new IllegalArgumentException("No inject registered for " + str + ". You must explicitly add it to the 'injects' option in one of your modules.");
            }
            a.a.b a;
            synchronized (this.b) {
                a = this.b.a(str2, obj, classLoader, false, true);
                if (a == null || !a.isLinked()) {
                    this.b.c();
                    a = this.b.a(str2, obj, classLoader, false, true);
                }
            }
            return a;
        }

        private static Object a_(Object obj, String str) {
            if (obj != null) {
                return obj;
            }
            throw new NullPointerException(str);
        }

        private static d b(a aVar, n nVar, Object... objArr) {
            a.a.d cVar;
            Map linkedHashMap = new LinkedHashMap();
            Map linkedHashMap2 = new LinkedHashMap();
            cVar = aVar == null ? new c() : new c(aVar.f);
            a.a.d bVar = new b();
            Iterator it = s.a(nVar, objArr).entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                r rVar = (r) entry.getKey();
                int i = 0;
                while (i < rVar.injectableTypes.length) {
                    linkedHashMap.put(rVar.injectableTypes[i], rVar.moduleClass);
                    i++;
                }
                i = 0;
                while (i < rVar.staticInjections.length) {
                    linkedHashMap2.put(rVar.staticInjections[i], null);
                    i++;
                }
                try {
                    rVar.getBindings(rVar.overrides ? bVar : cVar, entry.getValue());
                } catch (IllegalArgumentException e) {
                    Throwable th = e;
                    throw new IllegalArgumentException(rVar.moduleClass.getSimpleName() + ": " + th.getMessage(), th);
                }
            }
            l lVar = new l(aVar != null ? aVar.b : null, nVar, new x());
            lVar.a(cVar);
            lVar.a(bVar);
            return new a(aVar, lVar, nVar, linkedHashMap2, linkedHashMap, cVar.a);
        }

        private void c() {
            Iterator it = this.d.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                w wVar = (w) entry.getValue();
                if (wVar == null) {
                    wVar = this.c.b((Class) entry.getKey());
                    entry.setValue(wVar);
                }
                wVar.a(this.b);
            }
        }

        private void d() {
            Iterator it = this.e.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                this.b.a((String) entry.getKey(), entry.getValue(), ((Class) entry.getValue()).getClassLoader(), false, true);
            }
        }

        private Map e() {
            Map b = this.b.b();
            if (b == null) {
                synchronized (this.b) {
                    b = this.b.b();
                    if (b != null) {
                    } else {
                        c();
                        d();
                        b = this.b.a();
                    }
                }
            }
            return b;
        }

        public d a_(Object... objArr) {
            e();
            return b(this, this.c, objArr);
        }

        public Object a_(Class cls) {
            String a = h.a((Type)cls);
            return a(cls.getClassLoader(), cls.isInterface() ? a : h.a(cls), a).get();
        }

        public Object a_(Object obj) {
            String a = h.a(obj.getClass());
            a(obj.getClass().getClassLoader(), a, a).injectMembers(obj);
            return obj;
        }

        public void a_() {
            new t().c(e().values());
        }

        public void b() {
            synchronized (this.b) {
                c();
                this.b.c();
                c();
            }
            Iterator it = this.d.entrySet().iterator();
            while (it.hasNext()) {
                ((w) ((Entry) it.next()).getValue()).a();
            }
        }
    }

    private static final class b extends a.a.d {
        b() {
        }

        public a.a.b a(String str, v vVar) {
            throw new IllegalArgumentException("Module overrides cannot contribute set bindings.");
        }
    }

    private static final class c extends a.a.d {
        private final List a;

        public c() {
            this.a = new ArrayList();
        }

        public c(List list) {
            this.a = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                a.a.b vVar = new v((v) it.next());
                this.a.add(vVar);
                a(vVar.provideKey, vVar);
            }
        }

        public a.a.b a(String str, a.a.b bVar) {
            this.a.add(bVar);
            return super.a(str, bVar);
        }
    }

    d() {
    }

    static d a(n nVar, Object... objArr) {
        return a.b(null, nVar, objArr);
    }

    public static d b(Object... objArr) {
        return a.b(null, new f(), objArr);
    }

    public abstract d a(Object... objArr);

    public abstract Object a(Class cls);

    public abstract Object a(Object obj);

    public abstract void a();

    public abstract void b();
}