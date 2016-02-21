package android.support.v4.widget;

import android.os.Build.VERSION;

public final class n {
    static final o b;
    Object a;

    static {
        int i = VERSION.SDK_INT;
        if (i >= 14) {
            b = new r();
        } else if (i >= 9) {
            b = new q();
        } else {
            b = new p();
        }
    }

    public final void a(int i, int i2, int i3, int i4, int i5) {
        b.a(this.a, i, i2, i3, i4, i5);
    }

    public final boolean a() {
        return b.a(this.a);
    }

    public final int b() {
        return b.b(this.a);
    }

    public final int c() {
        return b.c(this.a);
    }

    public final int d() {
        return b.f(this.a);
    }

    public final int e() {
        return b.g(this.a);
    }

    public final boolean f() {
        return b.d(this.a);
    }

    public final void g() {
        b.e(this.a);
    }
}