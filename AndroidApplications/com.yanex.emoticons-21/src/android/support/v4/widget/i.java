package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build.VERSION;

public final class i {
    private static final l b;
    private Object a;

    static {
        if (VERSION.SDK_INT >= 14) {
            b = new k();
        } else {
            b = new j();
        }
    }

    public i(Context context) {
        this.a = b.a(context);
    }

    public final void a(int i, int i2) {
        b.a(this.a, i, i2);
    }

    public final boolean a() {
        return b.a(this.a);
    }

    public final boolean a(float f) {
        return b.a(this.a, f);
    }

    public final boolean a(Canvas canvas) {
        return b.a(this.a, canvas);
    }

    public final void b() {
        b.b(this.a);
    }

    public final boolean c() {
        return b.c(this.a);
    }
}