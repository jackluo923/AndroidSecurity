package android.support.v4.c;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

// compiled from: ProGuard
final class j implements Set {
    final /* synthetic */ g a;

    j(g gVar) {
        this.a = gVar;
    }

    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    public void clear() {
        this.a.c();
    }

    public boolean contains(Object obj) {
        return this.a.a(obj) >= 0;
    }

    public boolean containsAll(Collection collection) {
        return g.a(this.a.b(), collection);
    }

    public boolean equals(Object obj) {
        return g.a(this, obj);
    }

    public int hashCode() {
        int i = this.a.a() - 1;
        int i2 = 0;
        while (i >= 0) {
            Object a = this.a.a(i, 0);
            i2 += a == null ? 0 : a.hashCode();
            i--;
        }
        return i2;
    }

    public boolean isEmpty() {
        return this.a.a() == 0;
    }

    public Iterator iterator() {
        return new h(this.a, 0);
    }

    public boolean remove(Object obj) {
        int a = this.a.a(obj);
        if (a < 0) {
            return false;
        }
        this.a.a(a);
        return true;
    }

    public boolean removeAll(Collection collection) {
        return g.b(this.a.b(), collection);
    }

    public boolean retainAll(Collection collection) {
        return g.c(this.a.b(), collection);
    }

    public int size() {
        return this.a.a();
    }

    public Object[] toArray() {
        return this.a.b(0);
    }

    public Object[] toArray(Object[] objArr) {
        return this.a.a(objArr, 0);
    }
}