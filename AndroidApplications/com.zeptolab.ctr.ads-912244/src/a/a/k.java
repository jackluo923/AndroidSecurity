package a.a;

import a.a;

class k implements a {
    final /* synthetic */ j a;
    private volatile Object b;

    k(j jVar) {
        this.a = jVar;
        this.b = j.b();
    }

    public Object a() {
        if (this.b == j.b()) {
            synchronized (this) {
                if (this.b == j.b()) {
                    this.b = j.a(this.a).get();
                }
            }
        }
        return this.b;
    }
}