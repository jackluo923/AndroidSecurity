package android.support.v4.c;

import java.util.Iterator;
import java.util.Map.Entry;

// compiled from: ProGuard
final class k implements Iterator, Entry {
    int a;
    int b;
    boolean c;
    final /* synthetic */ g d;

    k(g gVar) {
        this.d = gVar;
        this.c = false;
        this.a = gVar.a() - 1;
        this.b = -1;
    }

    public Entry a() {
        this.b++;
        this.c = true;
        return this;
    }

    public final boolean equals(Object obj) {
        int i = 1;
        if (!this.c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        } else if (!(obj instanceof Entry)) {
            return false;
        } else {
            Entry entry = (Entry) obj;
            if (!(c.a(entry.getKey(), this.d.a(this.b, 0)) && c.a(entry.getValue(), this.d.a(this.b, 1)))) {
                i = 0;
            }
            return z;
        }
    }

    public Object getKey() {
        if (this.c) {
            return this.d.a(this.b, 0);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    public Object getValue() {
        if (this.c) {
            return this.d.a(this.b, 1);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    public boolean hasNext() {
        return this.b < this.a;
    }

    public final int hashCode() {
        int i = 0;
        if (this.c) {
            int hashCode;
            Object a = this.d.a(this.b, 0);
            Object a2 = this.d.a(this.b, 1);
            hashCode = a == null ? 0 : a.hashCode();
            if (a2 != null) {
                i = a2.hashCode();
            }
            return i ^ hashCode;
        } else {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
    }

    public /* synthetic */ Object next() {
        return a();
    }

    public void remove() {
        if (this.c) {
            this.d.a(this.b);
            this.b--;
            this.a--;
            this.c = false;
        } else {
            throw new IllegalStateException();
        }
    }

    public Object setValue(Object obj) {
        if (this.c) {
            return this.d.a(this.b, obj);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}