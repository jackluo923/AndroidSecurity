package com.millennialmedia.a.a.b;

import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;

public final class t extends AbstractMap implements Serializable {
    static final /* synthetic */ boolean g;
    private static final Comparator h;
    Comparator a;
    f[] b;
    final f c;
    int d;
    int e;
    int f;
    private c i;
    private d j;

    static final class a {
        private f a;
        private int b;
        private int c;
        private int d;

        a() {
        }

        f a_() {
            f fVar = this.a;
            if (fVar.a == null) {
                return fVar;
            }
            throw new IllegalStateException();
        }

        void a_(int i) {
            this.b = Integer.highestOneBit(i) * 2 - 1 - i;
            this.d = 0;
            this.c = 0;
            this.a = null;
        }

        void a_(f fVar) {
            fVar.c = null;
            fVar.a = null;
            fVar.b = null;
            fVar.i = 1;
            if (this.b > 0 && (this.d & 1) == 0) {
                this.d++;
                this.b--;
                this.c++;
            }
            fVar.a = this.a;
            this.a = fVar;
            this.d++;
            if (this.b > 0 && (this.d & 1) == 0) {
                this.d++;
                this.b--;
                this.c++;
            }
            int i = GoogleScorer.CLIENT_APPSTATE;
            while ((this.d & (i - 1)) == i - 1) {
                f fVar2;
                f fVar3;
                if (this.c == 0) {
                    fVar2 = this.a;
                    fVar3 = fVar2.a;
                    f fVar4 = fVar3.a;
                    fVar3.a = fVar4.a;
                    this.a = fVar3;
                    fVar3.b = fVar4;
                    fVar3.c = fVar2;
                    fVar2.i++;
                    fVar4.a = fVar3;
                    fVar2.a = fVar3;
                } else if (this.c == 1) {
                    fVar2 = this.a;
                    fVar3 = fVar2.a;
                    this.a = fVar3;
                    fVar3.c = fVar2;
                    fVar2.i++;
                    fVar2.a = fVar3;
                    this.c = 0;
                } else if (this.c == 2) {
                    this.c = 0;
                }
                i *= 2;
            }
        }
    }

    static class b {
        private f a;

        b() {
        }

        public f a() {
            f fVar = this.a;
            if (fVar == null) {
                return null;
            }
            f fVar2 = fVar.a;
            fVar.a = null;
            f fVar3 = fVar.c;
            while (fVar3 != null) {
                fVar3.a = fVar2;
                fVar2 = fVar3;
                fVar3 = fVar3.b;
            }
            this.a = fVar2;
            return fVar;
        }

        void a(f fVar) {
            f fVar2 = null;
            while (fVar != null) {
                fVar.a = fVar2;
                fVar2 = fVar;
                fVar = fVar.b;
            }
            this.a = fVar2;
        }
    }

    class c extends AbstractSet {
        c() {
        }

        public void clear() {
            t.this.clear();
        }

        public boolean contains(Object obj) {
            return obj instanceof Entry && t.this.a((Entry) obj) != null;
        }

        public Iterator iterator() {
            return new v(this);
        }

        public boolean remove(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            f a = t.this.a((Entry) obj);
            if (a == null) {
                return false;
            }
            t.this.a(a, true);
            return true;
        }

        public int size() {
            return t.this.d;
        }
    }

    class d extends AbstractSet {
        d() {
        }

        public void clear() {
            t.this.clear();
        }

        public boolean contains(Object obj) {
            return t.this.containsKey(obj);
        }

        public Iterator iterator() {
            return new w(this);
        }

        public boolean remove(Object obj) {
            return t.this.b(obj) != null;
        }

        public int size() {
            return t.this.d;
        }
    }

    private abstract class e implements Iterator {
        f b;
        f c;
        int d;

        private e() {
            this.b = t.this.c.d;
            this.c = null;
            this.d = t.this;
        }

        final f b() {
            f fVar = this.b;
            if (fVar == t.this.c) {
                throw new NoSuchElementException();
            } else if (t.this != this.d) {
                throw new ConcurrentModificationException();
            } else {
                this.b = fVar.d;
                this.c = fVar;
                return fVar;
            }
        }

        public final boolean hasNext() {
            return this.b != t.this.c;
        }

        public final void remove() {
            if (this.c == null) {
                throw new IllegalStateException();
            }
            t.this.a(this.c, true);
            this.c = null;
            this.d = t.this;
        }
    }

    static final class f implements Entry {
        f a;
        f b;
        f c;
        f d;
        f e;
        final Object f;
        final int g;
        Object h;
        int i;

        f() {
            this.f = null;
            this.g = -1;
            this.e = this;
            this.d = this;
        }

        f(f fVar, Object obj, int i, f fVar2, f fVar3) {
            this.a = fVar;
            this.f = obj;
            this.g = i;
            this.i = 1;
            this.d = fVar2;
            this.e = fVar3;
            fVar3.d = this;
            fVar2.e = this;
        }

        public f a() {
            f fVar = this.b;
            while (fVar != null) {
                this = fVar;
                fVar = fVar.b;
            }
            return this;
        }

        public f b() {
            f fVar = this.c;
            while (fVar != null) {
                this = fVar;
                fVar = fVar.c;
            }
            return this;
        }

        public boolean equals(Object obj) {
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
            if (this.h == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!this.h.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        public Object getKey() {
            return this.f;
        }

        public Object getValue() {
            return this.h;
        }

        public int hashCode() {
            int hashCode;
            int i = 0;
            hashCode = this.f == null ? 0 : this.f.hashCode();
            if (this.h != null) {
                i = this.h.hashCode();
            }
            return hashCode ^ i;
        }

        public Object setValue(Object obj) {
            Object obj2 = this.h;
            this.h = obj;
            return obj2;
        }

        public String toString() {
            return this.f + "=" + this.h;
        }
    }

    static {
        g = !t.class.desiredAssertionStatus();
        h = new u();
    }

    public t() {
        this(h);
    }

    public t(Comparator comparator) {
        this.d = 0;
        this.e = 0;
        if (comparator == null) {
            comparator = h;
        }
        this.a = comparator;
        this.c = new f();
        this.b = new f[16];
        this.f = this.b.length / 2 + this.b.length / 4;
    }

    private static int a(int i) {
        int i2 = ((i >>> 20) ^ (i >>> 12)) ^ i;
        return (i2 >>> 4) ^ ((i2 >>> 7) ^ i2);
    }

    private void a() {
        this.b = a(this.b);
        this.f = this.b.length / 2 + this.b.length / 4;
    }

    private void a(f fVar) {
        int i = 0;
        f fVar2 = fVar.b;
        f fVar3 = fVar.c;
        f fVar4 = fVar3.b;
        f fVar5 = fVar3.c;
        fVar.c = fVar4;
        if (fVar4 != null) {
            fVar4.a = fVar;
        }
        a(fVar, fVar3);
        fVar3.b = fVar;
        fVar.a = fVar3;
        fVar.i = Math.max(fVar2 != null ? fVar2.i : 0, fVar4 != null ? fVar4.i : 0) + 1;
        int i2 = fVar.i;
        if (fVar5 != null) {
            i = fVar5.i;
        }
        fVar3.i = Math.max(i2, i) + 1;
    }

    private void a(f fVar, f fVar2) {
        f fVar3 = fVar.a;
        fVar.a = null;
        if (fVar2 != null) {
            fVar2.a = fVar3;
        }
        if (fVar3 == null) {
            this.b[fVar.g & (this.b.length - 1)] = fVar2;
        } else if (fVar3.b == fVar) {
            fVar3.b = fVar2;
        } else if (g || fVar3.c == fVar) {
            fVar3.c = fVar2;
        } else {
            throw new AssertionError();
        }
    }

    private boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    static f[] a(f[] fVarArr) {
        int length = fVarArr.length;
        f[] fVarArr2 = new f[(length * 2)];
        b bVar = new b();
        a aVar = new a();
        a aVar2 = new a();
        int i = 0;
        while (i < length) {
            f fVar = fVarArr[i];
            if (fVar != null) {
                f a;
                bVar.a(fVar);
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    f a2 = bVar.a();
                    if (a2 == null) {
                        break;
                    } else if ((a2.g & length) == 0) {
                        i3++;
                    } else {
                        i2++;
                    }
                }
                if (i3 > 0 && i2 > 0) {
                    aVar.a(i3);
                    aVar2.a(i2);
                    bVar.a(fVar);
                    while (true) {
                        a = bVar.a();
                        if (a == null) {
                            break;
                        } else if ((a.g & length) == 0) {
                            aVar.a(a);
                        } else {
                            aVar2.a(a);
                        }
                    }
                    fVar = aVar.a();
                    a = aVar2.a();
                } else if (i3 > 0) {
                    a = null;
                } else {
                    a = fVar;
                    fVar = null;
                }
                fVarArr2[i] = fVar;
                fVarArr2[i + length] = a;
            }
            i++;
        }
        return fVarArr2;
    }

    private Object b() {
        return new LinkedHashMap(this);
    }

    private void b(f fVar) {
        int i = 0;
        f fVar2 = fVar.b;
        f fVar3 = fVar.c;
        f fVar4 = fVar2.b;
        f fVar5 = fVar2.c;
        fVar.b = fVar5;
        if (fVar5 != null) {
            fVar5.a = fVar;
        }
        a(fVar, fVar2);
        fVar2.c = fVar;
        fVar.a = fVar2;
        fVar.i = Math.max(fVar3 != null ? fVar3.i : 0, fVar5 != null ? fVar5.i : 0) + 1;
        int i2 = fVar.i;
        if (fVar4 != null) {
            i = fVar4.i;
        }
        fVar2.i = Math.max(i2, i) + 1;
    }

    private void b(f fVar, boolean z) {
        while (fVar != null) {
            int i;
            int i2;
            f fVar2 = fVar.b;
            f fVar3 = fVar.c;
            i = fVar2 != null ? fVar2.i : 0;
            i2 = fVar3 != null ? fVar3.i : 0;
            int i3 = i - i2;
            f fVar4;
            if (i3 == -2) {
                fVar2 = fVar3.b;
                fVar4 = fVar3.c;
                i2 = (fVar2 != null ? fVar2.i : 0) - (fVar4 != null ? fVar4.i : 0);
                if (i2 == -1 || (i2 == 0 && !z)) {
                    a(fVar);
                } else if (g || i2 == 1) {
                    b(fVar3);
                    a(fVar);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                fVar3 = fVar2.b;
                fVar4 = fVar2.c;
                i2 = (fVar3 != null ? fVar3.i : 0) - (fVar4 != null ? fVar4.i : 0);
                if (i2 == 1 || (i2 == 0 && !z)) {
                    b(fVar);
                } else if (g || i2 == -1) {
                    a(fVar2);
                    b(fVar);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                fVar.i = i + 1;
                if (z) {
                    return;
                }
            } else if (g || i3 == -1 || i3 == 1) {
                fVar.i = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            } else {
                throw new AssertionError();
            }
            fVar = fVar.a;
        }
    }

    f a(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return a(obj, false);
        } catch (ClassCastException e) {
            return null;
        }
    }

    f a(Object obj, boolean z) {
        int i;
        Comparator comparator = this.a;
        f[] fVarArr = this.b;
        int a = a(obj.hashCode());
        int length = a & (fVarArr.length - 1);
        f fVar = fVarArr[length];
        if (fVar != null) {
            Comparable comparable;
            comparable = comparator == h ? (Comparable) obj : null;
            while (true) {
                int compareTo;
                compareTo = comparable != null ? comparable.compareTo(fVar.f) : comparator.compare(obj, fVar.f);
                if (compareTo == 0) {
                    return fVar;
                }
                f fVar2;
                fVar2 = compareTo < 0 ? fVar.b : fVar.c;
                if (fVar2 == null) {
                    i = compareTo;
                } else {
                    fVar = fVar2;
                }
            }
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        f fVar3;
        f fVar4 = this.c;
        if (fVar != null) {
            fVar3 = new f(fVar, obj, a, fVar4, fVar4.e);
            if (i < 0) {
                fVar.b = fVar3;
            } else {
                fVar.c = fVar3;
            }
            b(fVar, true);
        } else if (comparator != h || obj instanceof Comparable) {
            fVar3 = new f(fVar, obj, a, fVar4, fVar4.e);
            fVarArr[length] = fVar3;
        } else {
            throw new ClassCastException(obj.getClass().getName() + " is not Comparable");
        }
        int i2 = this.d;
        this.d = i2 + 1;
        if (i2 > this.f) {
            a();
        }
        this.e++;
        return fVar3;
    }

    f a(Entry entry) {
        f a = a(entry.getKey());
        int i = (a == null || !a(a.h, entry.getValue())) ? 0 : 1;
        return i != 0 ? a : null;
    }

    void a(f fVar, boolean z) {
        int i = 0;
        if (z) {
            fVar.e.d = fVar.d;
            fVar.d.e = fVar.e;
            fVar.e = null;
            fVar.d = null;
        }
        f fVar2 = fVar.b;
        f fVar3 = fVar.c;
        f fVar4 = fVar.a;
        if (fVar2 == null || fVar3 == null) {
            if (fVar2 != null) {
                a(fVar, fVar2);
                fVar.b = null;
            } else if (fVar3 != null) {
                a(fVar, fVar3);
                fVar.c = null;
            } else {
                a(fVar, null);
            }
            b(fVar4, false);
            this.d--;
            this.e++;
        } else {
            int i2;
            fVar2 = fVar2.i > fVar3.i ? fVar2.b() : fVar3.a();
            a(fVar2, false);
            fVar4 = fVar.b;
            if (fVar4 != null) {
                i2 = fVar4.i;
                fVar2.b = fVar4;
                fVar4.a = fVar2;
                fVar.b = null;
            } else {
                i2 = 0;
            }
            fVar4 = fVar.c;
            if (fVar4 != null) {
                i = fVar4.i;
                fVar2.c = fVar4;
                fVar4.a = fVar2;
                fVar.c = null;
            }
            fVar2.i = Math.max(i2, i) + 1;
            a(fVar, fVar2);
        }
    }

    f b(Object obj) {
        f a = a(obj);
        if (a != null) {
            a(a, true);
        }
        return a;
    }

    public void clear() {
        Arrays.fill(this.b, null);
        this.d = 0;
        this.e++;
        f fVar = this.c;
        f fVar2 = fVar.d;
        while (fVar2 != fVar) {
            f fVar3 = fVar2.d;
            fVar2.e = null;
            fVar2.d = null;
            fVar2 = fVar3;
        }
        fVar.e = fVar;
        fVar.d = fVar;
    }

    public boolean containsKey(Object obj) {
        return a(obj) != null;
    }

    public Set entrySet() {
        Set set = this.i;
        if (set != null) {
            return set;
        }
        set = new c();
        this.i = set;
        return set;
    }

    public Object get(Object obj) {
        f a = a(obj);
        return a != null ? a.h : null;
    }

    public Set keySet() {
        Set set = this.j;
        if (set != null) {
            return set;
        }
        set = new d();
        this.j = set;
        return set;
    }

    public Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        f a = a(obj, true);
        Object obj3 = a.h;
        a.h = obj2;
        return obj3;
    }

    public Object remove(Object obj) {
        f b = b(obj);
        return b != null ? b.h : null;
    }

    public int size() {
        return this.d;
    }
}