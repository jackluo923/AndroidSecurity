package android.support.v4.c;

import java.util.Collection;
import java.util.Iterator;

// compiled from: ProGuard
final class l implements Collection {
    final /* synthetic */ g a;

    l(g gVar) {
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
        return this.a.b(obj) >= 0;
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

    public boolean isEmpty() {
        return this.a.a() == 0;
    }

    public Iterator iterator() {
        return new h(this.a, 1);
    }

    public boolean remove(Object obj) {
        int b = this.a.b(obj);
        if (b < 0) {
            return false;
        }
        this.a.a(b);
        return true;
    }

    public boolean removeAll(Collection collection) {
        int i = 0;
        int a = this.a.a();
        boolean z = false;
        while (i < a) {
            if (collection.contains(this.a.a(i, 1))) {
                this.a.a(i);
                i--;
                a--;
                z = true;
            }
            i++;
        }
        return z;
    }

    public boolean retainAll(Collection collection) {
        int i = 0;
        int a = this.a.a();
        boolean z = false;
        while (i < a) {
            if (!collection.contains(this.a.a(i, 1))) {
                this.a.a(i);
                i--;
                a--;
                z = true;
            }
            i++;
        }
        return z;
    }

    public int size() {
        return this.a.a();
    }

    public Object[] toArray() {
        return this.a.b(1);
    }

    public Object[] toArray(Object[] objArr) {
        return this.a.a(objArr, 1);
    }
}