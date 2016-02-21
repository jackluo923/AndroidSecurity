package com.chartboost.sdk.impl;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

abstract class bf implements Serializable, ConcurrentMap {
    private volatile Map a;
    private final transient Lock b;
    private final h c;

    protected static abstract class a implements Collection {
        protected a() {
        }

        abstract Collection a_();

        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        public final boolean contains(Object obj) {
            return a().contains(obj);
        }

        public final boolean containsAll(Collection collection) {
            return a().containsAll(collection);
        }

        public boolean equals(Object obj) {
            return a().equals(obj);
        }

        public int hashCode() {
            return a().hashCode();
        }

        public final boolean isEmpty() {
            return a().isEmpty();
        }

        public final Iterator iterator() {
            return new f(a().iterator());
        }

        public final int size() {
            return a().size();
        }

        public final Object[] toArray() {
            return a().toArray();
        }

        public final Object[] toArray(Object[] objArr) {
            return a().toArray(objArr);
        }

        public String toString() {
            return a().toString();
        }
    }

    private class b extends a implements Set {
        private b() {
        }

        Collection a() {
            return bf.this.entrySet();
        }

        public void clear() {
            bf.this.b.lock();
            Map a = bf.this.a();
            a.entrySet().clear();
            bf.this.b(a);
            bf.this.b.unlock();
        }

        public boolean remove(Object obj) {
            bf.this.b.lock();
            try {
                if (contains(obj)) {
                    Map a = bf.this.a();
                    boolean remove = a.entrySet().remove(obj);
                    bf.this.b(a);
                    bf.this.b.unlock();
                    return remove;
                } else {
                    bf.this.b.unlock();
                    return false;
                }
            } catch (Throwable th) {
            }
        }

        public boolean removeAll(Collection collection) {
            bf.this.b.lock();
            try {
                Map a = bf.this.a();
                boolean removeAll = a.entrySet().removeAll(collection);
                bf.this.b(a);
                bf.this.b.unlock();
                return removeAll;
            } catch (Throwable th) {
            }
        }

        public boolean retainAll(Collection collection) {
            bf.this.b.lock();
            try {
                Map a = bf.this.a();
                boolean retainAll = a.entrySet().retainAll(collection);
                bf.this.b(a);
                bf.this.b.unlock();
                return retainAll;
            } catch (Throwable th) {
            }
        }
    }

    public static abstract class h {

        public enum a {
            STABLE {
                com.chartboost.sdk.impl.bf.h a(bf bfVar) {
                    bfVar.getClass();
                    return new c();
                }
            },
            LIVE {
                com.chartboost.sdk.impl.bf.h a(bf bfVar) {
                    bfVar.getClass();
                    return new e();
                }
            };

            static {
                a = new AnonymousClass_1("STABLE", 0);
                b = new AnonymousClass_2("LIVE", 1);
                c = new com.chartboost.sdk.impl.bf.h.a[]{a, b};
            }

            abstract com.chartboost.sdk.impl.bf.h a_(bf bfVar);
        }

        h() {
        }

        abstract Set a();

        abstract Set b();

        abstract Collection c();
    }

    final class c extends com.chartboost.sdk.impl.bf.h implements Serializable {
        c() {
        }

        public Set a() {
            return Collections.unmodifiableSet(bf.this.keySet());
        }

        public Set b() {
            return Collections.unmodifiableSet(bf.this.entrySet());
        }

        public Collection c_() {
            return Collections.unmodifiableCollection(bf.this.values());
        }
    }

    private class d extends a implements Set {
        private d() {
        }

        Collection a() {
            return bf.this.keySet();
        }

        public void clear() {
            bf.this.b.lock();
            Map a = bf.this.a();
            a.keySet().clear();
            bf.this.b(a);
            bf.this.b.unlock();
        }

        public boolean remove(Object obj) {
            return bf.this.remove(obj) != null;
        }

        public boolean removeAll(Collection collection) {
            bf.this.b.lock();
            try {
                Map a = bf.this.a();
                boolean removeAll = a.keySet().removeAll(collection);
                bf.this.b(a);
                bf.this.b.unlock();
                return removeAll;
            } catch (Throwable th) {
            }
        }

        public boolean retainAll(Collection collection) {
            bf.this.b.lock();
            try {
                Map a = bf.this.a();
                boolean retainAll = a.keySet().retainAll(collection);
                bf.this.b(a);
                bf.this.b.unlock();
                return retainAll;
            } catch (Throwable th) {
            }
        }
    }

    final class e extends com.chartboost.sdk.impl.bf.h implements Serializable {
        private final transient d b;
        private final transient b c;
        private final transient g d;

        e() {
            this.b = new d(null);
            this.c = new b(null);
            this.d = new g(null);
        }

        public Set a() {
            return this.b;
        }

        public Set b() {
            return this.c;
        }

        public Collection c() {
            return this.d;
        }
    }

    private static class f implements Iterator {
        private final Iterator a;

        public f(Iterator it) {
            this.a = it;
        }

        public boolean hasNext() {
            return this.a.hasNext();
        }

        public Object next() {
            return this.a.next();
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private final class g extends a {
        private g() {
        }

        Collection a() {
            return bf.this.values();
        }

        public void clear() {
            bf.this.b.lock();
            Map a = bf.this.a();
            a.values().clear();
            bf.this.b(a);
            bf.this.b.unlock();
        }

        public boolean remove(Object obj) {
            bf.this.b.lock();
            try {
                if (contains(obj)) {
                    Map a = bf.this.a();
                    boolean remove = a.values().remove(obj);
                    bf.this.b(a);
                    bf.this.b.unlock();
                    return remove;
                } else {
                    bf.this.b.unlock();
                    return false;
                }
            } catch (Throwable th) {
            }
        }

        public boolean removeAll(Collection collection) {
            bf.this.b.lock();
            try {
                Map a = bf.this.a();
                boolean removeAll = a.values().removeAll(collection);
                bf.this.b(a);
                bf.this.b.unlock();
                return removeAll;
            } catch (Throwable th) {
            }
        }

        public boolean retainAll(Collection collection) {
            bf.this.b.lock();
            try {
                Map a = bf.this.a();
                boolean retainAll = a.values().retainAll(collection);
                bf.this.b(a);
                bf.this.b.unlock();
                return retainAll;
            } catch (Throwable th) {
            }
        }
    }

    protected bf(Map map, a aVar) {
        this.b = new ReentrantLock();
        this.a = (Map) bg.a("delegate", a((Map) bg.a("map", map)));
        this.c = ((a) bg.a("viewType", aVar)).a(this);
    }

    private boolean a(Object obj, Object obj2) {
        if (obj != null) {
            return obj.equals(obj2);
        }
        return obj2 == null;
    }

    protected Map a() {
        this.b.lock();
        Map a = a(this.a);
        this.b.unlock();
        return a;
    }

    abstract Map a(Map map);

    protected void b(Map map) {
        this.a = map;
    }

    public final void clear() {
        this.b.lock();
        b(a(Collections.emptyMap()));
        this.b.unlock();
    }

    public final boolean containsKey(Object obj) {
        return this.a.containsKey(obj);
    }

    public final boolean containsValue(Object obj) {
        return this.a.containsValue(obj);
    }

    public final Set entrySet() {
        return this.c.b();
    }

    public final boolean equals(Object obj) {
        return this.a.equals(obj);
    }

    public final Object get(Object obj) {
        return this.a.get(obj);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final boolean isEmpty() {
        return this.a.isEmpty();
    }

    public final Set keySet() {
        return this.c.a();
    }

    public final Object put(Object obj, Object obj2) {
        this.b.lock();
        try {
            Map a = a();
            Object put = a.put(obj, obj2);
            b(a);
            this.b.unlock();
            return put;
        } catch (Throwable th) {
        }
    }

    public final void putAll(Map map) {
        this.b.lock();
        Map a = a();
        a.putAll(map);
        b(a);
        this.b.unlock();
    }

    public Object putIfAbsent(Object obj, Object obj2) {
        this.b.lock();
        try {
            Object obj3;
            if (this.a.containsKey(obj)) {
                obj3 = this.a.get(obj);
                this.b.unlock();
                return obj3;
            } else {
                Map a = a();
                obj3 = a.put(obj, obj2);
                b(a);
                this.b.unlock();
                return obj3;
            }
        } catch (Throwable th) {
        }
    }

    public final Object remove(Object obj) {
        this.b.lock();
        try {
            if (this.a.containsKey(obj)) {
                Map a = a();
                Object remove = a.remove(obj);
                b(a);
                this.b.unlock();
                return remove;
            } else {
                this.b.unlock();
                return null;
            }
        } catch (Throwable th) {
        }
    }

    public boolean remove(Object obj, Object obj2) {
        this.b.lock();
        if (this.a.containsKey(obj) && a(obj2, this.a.get(obj))) {
            Map a = a();
            a.remove(obj);
            b(a);
            this.b.unlock();
            return true;
        } else {
            this.b.unlock();
            return false;
        }
    }

    public Object replace(Object obj, Object obj2) {
        this.b.lock();
        try {
            if (this.a.containsKey(obj)) {
                Map a = a();
                Object put = a.put(obj, obj2);
                b(a);
                this.b.unlock();
                return put;
            } else {
                this.b.unlock();
                return null;
            }
        } catch (Throwable th) {
        }
    }

    public boolean replace(Object obj, Object obj2, Object obj3) {
        this.b.lock();
        if (this.a.containsKey(obj) && a(obj2, this.a.get(obj))) {
            Map a = a();
            a.put(obj, obj3);
            b(a);
            this.b.unlock();
            return true;
        } else {
            this.b.unlock();
            return false;
        }
    }

    public final int size() {
        return this.a.size();
    }

    public String toString() {
        return this.a.toString();
    }

    public final Collection values() {
        return this.c.c();
    }
}