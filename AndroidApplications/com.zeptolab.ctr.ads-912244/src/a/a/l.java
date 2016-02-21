package a.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;

public final class l {
    private static final Object a;
    private final l b;
    private final Queue c;
    private boolean d;
    private final List e;
    private final Map f;
    private volatile Map g;
    private final n h;
    private final b i;

    private static class a extends b {
        final ClassLoader a;
        final String b;
        final boolean c;

        private a(String str, ClassLoader classLoader, Object obj, boolean z) {
            super(null, null, false, obj);
            this.b = str;
            this.a = classLoader;
            this.c = z;
        }

        public void getDependencies(Set set, Set set2) {
            throw new UnsupportedOperationException("Deferred bindings must resolve first.");
        }

        public void injectMembers(Object obj) {
            throw new UnsupportedOperationException("Deferred bindings must resolve first.");
        }

        public String toString() {
            return "DeferredBinding[deferredKey=" + this.b + "]";
        }
    }

    public static interface b {
        public static final a.a.l.b a;

        static {
            a = new m();
        }

        void a(List list);
    }

    private static class c extends b {
        private final b a;
        private volatile Object b;

        private c(b bVar) {
            super(bVar.provideKey, bVar.membersKey, true, bVar.requiredBy);
            this.b = a;
            this.a = bVar;
        }

        public void attach(l lVar) {
            this.a.attach(lVar);
        }

        public boolean dependedOn() {
            return this.a.dependedOn();
        }

        public Object get() {
            if (this.b == a) {
                synchronized (this) {
                    if (this.b == a) {
                        this.b = this.a.get();
                    }
                }
            }
            return this.b;
        }

        public void getDependencies(Set set, Set set2) {
            this.a.getDependencies(set, set2);
        }

        public void injectMembers(Object obj) {
            this.a.injectMembers(obj);
        }

        public boolean isCycleFree() {
            return this.a.isCycleFree();
        }

        public boolean isLinked() {
            return this.a.isLinked();
        }

        protected boolean isSingleton() {
            return true;
        }

        public boolean isVisiting() {
            return this.a.isVisiting();
        }

        public boolean library() {
            return this.a.library();
        }

        public void setCycleFree(boolean z) {
            this.a.setCycleFree(z);
        }

        public void setDependedOn(boolean z) {
            this.a.setDependedOn(z);
        }

        public void setLibrary(boolean z) {
            this.a.setLibrary(true);
        }

        protected void setLinked() {
            this.a.setLinked();
        }

        public void setVisiting(boolean z) {
            this.a.setVisiting(z);
        }

        public String toString() {
            return "@Singleton/" + this.a.toString();
        }
    }

    static {
        a = new Object();
    }

    public l(l lVar, n nVar, b bVar) {
        this.c = new a();
        this.d = true;
        this.e = new ArrayList();
        this.f = new HashMap();
        this.g = null;
        if (nVar == null) {
            throw new NullPointerException("plugin");
        } else if (bVar == null) {
            throw new NullPointerException("errorHandler");
        } else {
            this.b = lVar;
            this.h = nVar;
            this.i = bVar;
        }
    }

    static b a(b bVar) {
        return (!bVar.isSingleton() || bVar instanceof c) ? bVar : new c(null);
    }

    private b a(String str, Object obj, ClassLoader classLoader, boolean z) {
        String a = h.a(str);
        if (a != null) {
            return new e(str, obj, classLoader, a);
        }
        a = h.b(str);
        if (a != null) {
            return new j(str, obj, classLoader, a);
        }
        a = h.d(str);
        if (a == null || h.c(str)) {
            throw new IllegalArgumentException(str);
        }
        b a2 = this.h.a(str, a, classLoader, z);
        if (a2 != null) {
            return a2;
        }
        throw new a.a.b.a(a, "could not be bound with key " + str);
    }

    private void a(String str) {
        this.e.add(str);
    }

    private void a(Map map, Object obj, Object obj2) {
        Object put = map.put(obj, obj2);
        if (put != null) {
            map.put(obj, put);
        }
    }

    private void b(Object obj) {
        if (obj.provideKey != null) {
            a(this.f, obj.provideKey, obj);
        }
        if (obj.membersKey != null) {
            a(this.f, obj.membersKey, obj);
        }
    }

    private void e() {
        if (!Thread.holdsLock(this)) {
            throw new AssertionError();
        }
    }

    @Deprecated
    public b a(String str, Object obj) {
        return a(str, obj, getClass().getClassLoader(), true, true);
    }

    public b a(String str, Object obj, ClassLoader classLoader) {
        return a(str, obj, classLoader, true, true);
    }

    public b a(String str, Object obj, ClassLoader classLoader, boolean z, boolean z2) {
        e();
        l lVar = this;
        b bVar = null;
        while (lVar != null) {
            bVar = (b) lVar.f.get(str);
            if (bVar != null) {
                if (!(lVar == this || bVar.isLinked())) {
                    throw new AssertionError();
                }
                if (bVar != null) {
                    bVar = new a(classLoader, obj, z, null);
                    bVar.setLibrary(z2);
                    bVar.setDependedOn(true);
                    this.c.add(bVar);
                    this.d = false;
                    return null;
                } else {
                    if (!bVar.isLinked()) {
                        this.c.add(bVar);
                    }
                    bVar.setLibrary(z2);
                    bVar.setDependedOn(true);
                    return bVar;
                }
            } else {
                lVar = lVar.b;
            }
        }
        if (bVar != null) {
            if (bVar.isLinked()) {
                this.c.add(bVar);
            }
            bVar.setLibrary(z2);
            bVar.setDependedOn(true);
            return bVar;
        } else {
            bVar = new a(classLoader, obj, z, null);
            bVar.setLibrary(z2);
            bVar.setDependedOn(true);
            this.c.add(bVar);
            this.d = false;
            return null;
        }
    }

    @Deprecated
    public b a(String str, Object obj, boolean z, boolean z2) {
        return a(str, obj, getClass().getClassLoader(), z, z2);
    }

    public Map a() {
        e();
        if (this.g != null) {
            return this.g;
        }
        Iterator it = this.f.values().iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            if (!bVar.isLinked()) {
                this.c.add(bVar);
            }
        }
        c();
        this.g = Collections.unmodifiableMap(this.f);
        return this.g;
    }

    public void a(d dVar) {
        if (this.g != null) {
            throw new IllegalStateException("Cannot install further bindings after calling linkAll().");
        }
        Iterator it = dVar.a().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            this.f.put(entry.getKey(), a((b) entry.getValue()));
        }
    }

    public Map b() {
        return this.g;
    }

    public void c() {
        e();
        while (true) {
            b bVar = (b) this.c.poll();
            if (bVar == null) {
                this.i.a(this.e);
                this.e.clear();
                return;
            } else if (bVar instanceof a) {
                a aVar = (a) bVar;
                String str = aVar.b;
                boolean z = aVar.c;
                if (!this.f.containsKey(str)) {
                    try {
                        b a = a(str, bVar.requiredBy, aVar.a, z);
                        a.setLibrary(bVar.library());
                        a.setDependedOn(bVar.dependedOn());
                        if (str.equals(a.provideKey) || str.equals(a.membersKey)) {
                            a = a(a);
                            this.c.add(a);
                            b(a);
                        } else {
                            throw new IllegalStateException("Unable to create binding for " + str);
                        }
                    } catch (a.a.b.a e) {
                        a.a.b.a aVar2 = e;
                        a(aVar2.a + " " + aVar2.getMessage() + " required by " + bVar.requiredBy);
                        this.f.put(str, b.UNRESOLVED);
                    } catch (UnsupportedOperationException e2) {
                        a("Unsupported: " + e2.getMessage() + " required by " + bVar.requiredBy);
                        this.f.put(str, b.UNRESOLVED);
                    } catch (IllegalArgumentException e3) {
                        a(e3.getMessage() + " required by " + bVar.requiredBy);
                        this.f.put(str, b.UNRESOLVED);
                    } catch (RuntimeException e4) {
                        throw e4;
                    } catch (Exception e5) {
                        throw new RuntimeException(e5);
                    }
                }
            } else {
                this.d = true;
                bVar.attach(this);
                if (this.d) {
                    bVar.setLinked();
                } else {
                    this.c.add(bVar);
                }
            }
        }
    }
}