package android.support.v4.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.animation.Interpolator;

public class l {
    static final m b;
    Object a;

    static {
        int i = VERSION.SDK_INT;
        if (i >= 14) {
            b = new p();
        } else if (i >= 9) {
            b = new o();
        } else {
            b = new n();
        }
    }

    l(Context context, Interpolator interpolator) {
        this.a = b.a(context, interpolator);
    }

    public static l a(Context context, Interpolator interpolator) {
        return new l(context, interpolator);
    }

    public void a(int i, int i2, int i3, int i4, int i5) {
        b.a(this.a, i, i2, i3, i4, i5);
    }

    public boolean a() {
        return b.a(this.a);
    }

    public int b() {
        return b.b(this.a);
    }

    public int c() {
        return b.c(this.a);
    }

    public int d() {
        return b.f(this.a);
    }

    public int e() {
        return b.g(this.a);
    }

    public boolean f() {
        return b.d(this.a);
    }

    public void g() {
        b.e(this.a);
    }
}