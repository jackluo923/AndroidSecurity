package android.support.v4.c;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

// compiled from: ProGuard
final class i implements Set {
    final /* synthetic */ g a;

    i(g gVar) {
        this.a = gVar;
    }

    public boolean a(Entry entry) {
        throw new UnsupportedOperationException();
    }

    public /* synthetic */ boolean add(Object obj) {
        return a((Entry) obj);
    }

    public boolean addAll(Collection collection) {
        int a = this.a.a();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            this.a.a(entry.getKey(), entry.getValue());
        }
        return a != this.a.a();
    }

    public void clear() {
        this.a.c();
    }

    public boolean contains(Object obj) {
        if (!(obj instanceof Entry)) {
            return false;
        }
        Entry entry = (Entry) obj;
        int a = this.a.a(entry.getKey());
        return a >= 0 ? c.a(this.a.a(a, 1), entry.getValue()) : false;
    }

    public boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        return g.a(this, obj);
    }

    public int hashCode() {
        int i = this.a.a() - 1;
        int i2 = 0;
        while (i >= 0) {
            Object a = this.a.a(i, 0);
            Object a2 = this.a.a(i, 1);
            i--;
            i2 += (a2 == null ? 0 : a2.hashCode()) ^ (a == null ? 0 : a.hashCode());
        }
        return i2;
    }

    public boolean isEmpty() {
        return this.a.a() == 0;
    }

    public Iterator iterator() {
        return new k(this.a);
    }

    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    public int size() {
        return this.a.a();
    }

    public Object[] toArray() {
        throw new UnsupportedOperationException();
    }

    public Object[] toArray(Object[] objArr) {
        throw new UnsupportedOperationException();
    }
}