package android.support.v4.c;

import java.util.Iterator;

// compiled from: ProGuard
final class h implements Iterator {
    final int a;
    int b;
    int c;
    boolean d;
    final /* synthetic */ g e;

    h(g gVar, int i) {
        this.e = gVar;
        this.d = false;
        this.a = i;
        this.b = gVar.a();
    }

    public boolean hasNext() {
        return this.c < this.b;
    }

    public Object next() {
        Object a = this.e.a(this.c, this.a);
        this.c++;
        this.d = true;
        return a;
    }

    public void remove() {
        if (this.d) {
            this.c--;
            this.b--;
            this.d = false;
            this.e.a(this.c);
        } else {
            throw new IllegalStateException();
        }
    }
}