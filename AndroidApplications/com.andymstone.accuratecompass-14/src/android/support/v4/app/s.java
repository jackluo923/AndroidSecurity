package android.support.v4.app;

class s implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ int b;
    final /* synthetic */ q c;

    s(q qVar, int i, int i2) {
        this.c = qVar;
        this.a = i;
        this.b = i2;
    }

    public void run() {
        this.c.a(this.c.o.a, null, this.a, this.b);
    }
}