package com.google.ads.interactivemedia.v3.a.b;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;

public final class g extends AbstractMap implements Serializable {
    static final /* synthetic */ boolean f;
    private static final Comparator g;
    Comparator a;
    d b;
    int c;
    int d;
    final d e;
    private a h;
    private b i;

    private abstract class c implements Iterator {
        d b;
        d c;
        int d;

        private c() {
            this.b = g.this.d;
            this.c = null;
            this.d = g.this.d;
        }

        final d a() {
            d dVar = this.b;
            if (dVar == g.this) {
                throw new NoSuchElementException();
            } else if (g.this.d != this.d) {
                throw new ConcurrentModificationException();
            } else {
                this.b = dVar.d;
                this.c = dVar;
                return dVar;
            }
        }

        public final boolean hasNext() {
            return this.b != g.this;
        }

        public final void remove() {
            if (this.c == null) {
                throw new IllegalStateException();
            }
            g.this.a(this.c, true);
            this.c = null;
            this.d = g.this.d;
        }
    }

    class a extends AbstractSet {
        a() {
        }

        public final void clear() {
            g.this.clear();
        }

        public final boolean contains(Object obj) {
            return obj instanceof Entry && g.this.a((Entry) obj) != null;
        }

        public final Iterator iterator() {
            return new c() {
                {
                    super((byte) 0);
                }

                public final /* synthetic */ Object next() {
                    return a();
                }
            };
        }

        public final boolean remove(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            d a = g.this.a((Entry) obj);
            if (a == null) {
                return false;
            }
            g.this.a(a, true);
            return true;
        }

        public final int size() {
            return g.this.c;
        }
    }

    class b extends AbstractSet {
        b() {
        }

        public final void clear() {
            g.this.clear();
        }

        public final boolean contains(Object obj) {
            return g.this.containsKey(obj);
        }

        public final Iterator iterator() {
            return new c() {
                {
                    super((byte) 0);
                }

                public final Object next() {
                    return a().f;
                }
            };
        }

        public final boolean remove(Object obj) {
            return g.this.a(obj) != null;
        }

        public final int size() {
            return g.this.c;
        }
    }

    static final class d implements Entry {
        d a;
        d b;
        d c;
        d d;
        d e;
        final Object f;
        Object g;
        int h;

        d() {
            this.f = null;
            this.e = this;
            this.d = this;
        }

        d(d dVar, Object obj, d dVar2, d dVar3) {
            this.a = dVar;
            this.f = obj;
            this.h = 1;
            this.d = dVar2;
            this.e = dVar3;
            dVar3.d = this;
            dVar2.e = this;
        }

        public final d a() {
            d dVar = this.b;
            while (dVar != null) {
                this = dVar;
                dVar = dVar.b;
            }
            return this;
        }

        public final d b() {
            d dVar = this.c;
            while (dVar != null) {
                this = dVar;
                dVar = dVar.c;
            }
            return this;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            if (this.f == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!this.f.equals(entry.getKey())) {
                return false;
            }
            if (this.g == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!this.g.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        public final Object getKey() {
            return this.f;
        }

        public final Object getValue() {
            return this.g;
        }

        public final int hashCode() {
            int hashCode;
            int i = 0;
            hashCode = this.f == null ? 0 : this.f.hashCode();
            if (this.g != null) {
                i = this.g.hashCode();
            }
            return hashCode ^ i;
        }

        public final Object setValue(Object obj) {
            Object obj2 = this.g;
            this.g = obj;
            return obj2;
        }

        public final String toString() {
            return this.f + "=" + this.g;
        }
    }

    static {
        f = !g.class.desiredAssertionStatus();
        g = new Comparator() {
            public final /* synthetic */ int compare(Object obj, Object obj2) {
                return ((Comparable) obj).compareTo((Comparable) obj2);
            }
        };
    }

    public g() {
        this(g);
    }

    private g(Comparator comparator) {
        this.c = 0;
        this.d = 0;
        this.e = new d();
        if (comparator == null) {
            comparator = g;
        }
        this.a = comparator;
    }

    private d a(Object obj, boolean z) {
        d dVar;
        int i;
        Comparator comparator = this.a;
        d dVar2 = this.b;
        if (dVar2 != null) {
            Comparable comparable;
            comparable = comparator == g ? (Comparable) obj : null;
            while (true) {
                int compareTo;
                compareTo = comparable != null ? comparable.compareTo(dVar2.f) : comparator.compare(obj, dVar2.f);
                if (compareTo == 0) {
                    return dVar2;
                }
                d dVar3;
                dVar3 = compareTo < 0 ? dVar2.b : dVar2.c;
                if (dVar3 != null) {
                    dVar2 = dVar3;
                } else {
                    int i2 = compareTo;
                    dVar = dVar2;
                    i = i2;
                }
            }
        } else {
            dVar = dVar2;
            i = 0;
        }
        if (!z) {
            return null;
        }
        d dVar4;
        d dVar5 = this.e;
        if (dVar != null) {
            dVar4 = new d(dVar, obj, dVar5, dVar5.e);
            if (i < 0) {
                dVar.b = dVar4;
            } else {
                dVar.c = dVar4;
            }
            b(dVar, true);
        } else if (comparator != g || obj instanceof Comparable) {
            dVar4 = new d(dVar, obj, dVar5, dVar5.e);
            this.b = dVar4;
        } else {
            throw new ClassCastException(obj.getClass().getName() + " is not Comparable");
        }
        this.c++;
        this.d++;
        return dVar4;
    }

    private void a(d dVar) {
        int i = 0;
        d dVar2 = dVar.b;
        d dVar3 = dVar.c;
        d dVar4 = dVar3.b;
        d dVar5 = dVar3.c;
        dVar.c = dVar4;
        if (dVar4 != null) {
            dVar4.a = dVar;
        }
        a(dVar, dVar3);
        dVar3.b = dVar;
        dVar.a = dVar3;
        dVar.h = Math.max(dVar2 != null ? dVar2.h : 0, dVar4 != null ? dVar4.h : 0) + 1;
        int i2 = dVar.h;
        if (dVar5 != null) {
            i = dVar5.h;
        }
        dVar3.h = Math.max(i2, i) + 1;
    }

    private void a(d dVar, d dVar2) {
        d dVar3 = dVar.a;
        dVar.a = null;
        if (dVar2 != null) {
            dVar2.a = dVar3;
        }
        if (dVar3 == null) {
            this.b = dVar2;
        } else if (dVar3.b == dVar) {
            dVar3.b = dVar2;
        } else if (f || dVar3.c == dVar) {
            dVar3.c = dVar2;
        } else {
            throw new AssertionError();
        }
    }

    private d b(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return a(obj, false);
        } catch (ClassCastException e) {
            return null;
        }
    }

    private void b(d dVar) {
        int i = 0;
        d dVar2 = dVar.b;
        d dVar3 = dVar.c;
        d dVar4 = dVar2.b;
        d dVar5 = dVar2.c;
        dVar.b = dVar5;
        if (dVar5 != null) {
            dVar5.a = dVar;
        }
        a(dVar, dVar2);
        dVar2.c = dVar;
        dVar.a = dVar2;
        dVar.h = Math.max(dVar3 != null ? dVar3.h : 0, dVar5 != null ? dVar5.h : 0) + 1;
        int i2 = dVar.h;
        if (dVar4 != null) {
            i = dVar4.h;
        }
        dVar2.h = Math.max(i2, i) + 1;
    }

    private void b(d dVar, boolean z) {
        while (dVar != null) {
            int i;
            int i2;
            d dVar2 = dVar.b;
            d dVar3 = dVar.c;
            i = dVar2 != null ? dVar2.h : 0;
            i2 = dVar3 != null ? dVar3.h : 0;
            int i3 = i - i2;
            d dVar4;
            if (i3 == -2) {
                dVar2 = dVar3.b;
                dVar4 = dVar3.c;
                i2 = (dVar2 != null ? dVar2.h : 0) - (dVar4 != null ? dVar4.h : 0);
                if (i2 == -1 || (i2 == 0 && !z)) {
                    a(dVar);
                } else if (f || i2 == 1) {
                    b(dVar3);
                    a(dVar);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                dVar3 = dVar2.b;
                dVar4 = dVar2.c;
                i2 = (dVar3 != null ? dVar3.h : 0) - (dVar4 != null ? dVar4.h : 0);
                if (i2 == 1 || (i2 == 0 && !z)) {
                    b(dVar);
                } else if (f || i2 == -1) {
                    a(dVar2);
                    b(dVar);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                dVar.h = i + 1;
                if (z) {
                    return;
                }
            } else if (f || i3 == -1 || i3 == 1) {
                dVar.h = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            } else {
                throw new AssertionError();
            }
            dVar = dVar.a;
        }
    }

    final d a(Object obj) {
        d b = b(obj);
        if (b != null) {
            a(b, true);
        }
        return b;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    final com.google.ads.interactivemedia.v3.a.b.g.d a(java.util.Map.Entry r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.ads.interactivemedia.v3.a.b.g.a(java.util.Map$Entry):com.google.ads.interactivemedia.v3.a.b.g$d");
        /*
        r5 = this;
        r1 = 1;
        r2 = 0;
        r0 = r6.getKey();
        r0 = r5.b(r0);
        if (r0 == 0) goto L_0x0024;
    L_0x000c:
        r3 = r0.g;
        r4 = r6.getValue();
        if (r3 == r4) goto L_0x001c;
    L_0x0014:
        if (r3 == 0) goto L_0x0022;
    L_0x0016:
        r3 = r3.equals(r4);
        if (r3 == 0) goto L_0x0022;
    L_0x001c:
        r3 = r1;
    L_0x001d:
        if (r3 == 0) goto L_0x0024;
    L_0x001f:
        if (r1 == 0) goto L_0x0026;
    L_0x0021:
        return r0;
    L_0x0022:
        r3 = r2;
        goto L_0x001d;
    L_0x0024:
        r1 = r2;
        goto L_0x001f;
    L_0x0026:
        r0 = 0;
        goto L_0x0021;
        */
    }

    final void a(d dVar, boolean z) {
        int i = 0;
        if (z) {
            dVar.e.d = dVar.d;
            dVar.d.e = dVar.e;
        }
        d dVar2 = dVar.b;
        d dVar3 = dVar.c;
        d dVar4 = dVar.a;
        if (dVar2 == null || dVar3 == null) {
            if (dVar2 != null) {
                a(dVar, dVar2);
                dVar.b = null;
            } else if (dVar3 != null) {
                a(dVar, dVar3);
                dVar.c = null;
            } else {
                a(dVar, null);
            }
            b(dVar4, false);
            this.c--;
            this.d++;
        } else {
            int i2;
            dVar2 = dVar2.h > dVar3.h ? dVar2.b() : dVar3.a();
            a(dVar2, false);
            dVar4 = dVar.b;
            if (dVar4 != null) {
                i2 = dVar4.h;
                dVar2.b = dVar4;
                dVar4.a = dVar2;
                dVar.b = null;
            } else {
                i2 = 0;
            }
            dVar4 = dVar.c;
            if (dVar4 != null) {
                i = dVar4.h;
                dVar2.c = dVar4;
                dVar4.a = dVar2;
                dVar.c = null;
            }
            dVar2.h = Math.max(i2, i) + 1;
            a(dVar, dVar2);
        }
    }

    public final void clear() {
        this.b = null;
        this.c = 0;
        this.d++;
        d dVar = this.e;
        dVar.e = dVar;
        dVar.d = dVar;
    }

    public final boolean containsKey(Object obj) {
        return b(obj) != null;
    }

    public final Set entrySet() {
        Set set = this.h;
        if (set != null) {
            return set;
        }
        set = new a();
        this.h = set;
        return set;
    }

    public final Object get(Object obj) {
        d b = b(obj);
        return b != null ? b.g : null;
    }

    public final Set keySet() {
        Set set = this.i;
        if (set != null) {
            return set;
        }
        set = new b();
        this.i = set;
        return set;
    }

    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        d a = a(obj, true);
        Object obj3 = a.g;
        a.g = obj2;
        return obj3;
    }

    public final Object remove(Object obj) {
        d a = a(obj);
        return a != null ? a.g : null;
    }

    public final int size() {
        return this.c;
    }
}