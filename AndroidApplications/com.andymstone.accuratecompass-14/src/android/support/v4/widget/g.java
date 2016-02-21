package android.support.v4.widget;

import android.graphics.Canvas;
import android.os.Build.VERSION;

public class g {
    private static final j b;
    private Object a;

    static {
        if (VERSION.SDK_INT >= 14) {
            b = new i();
        } else {
            b = new h();
        }
    }

    public void a(int i, int i2) {
        b.a(this.a, i, i2);
    }

    public boolean a() {
        return b.a(this.a);
    }

    public boolean a(float f) {
        return b.a(this.a, f);
    }

    public boolean a(Canvas canvas) {
        return b.a(this.a, canvas);
    }

    public void b() {
        b.b(this.a);
    }

    public boolean c() {
        return b.c(this.a);
    }
}