package android.support.v4.view;

import android.graphics.Paint;
import android.os.Build.VERSION;
import android.view.View;

public final class af {
    static final am a;

    static {
        int i = VERSION.SDK_INT;
        if (i >= 17) {
            a = new al();
        } else if (i >= 16) {
            a = new ak();
        } else if (i >= 14) {
            a = new aj();
        } else if (i >= 11) {
            a = new ai();
        } else if (i >= 9) {
            a = new ah();
        } else {
            a = new ag();
        }
    }

    public static int a(View view) {
        return a.a(view);
    }

    public static void a(View view, int i, int i2, int i3, int i4) {
        a.a(view, i, i2, i3, i4);
    }

    public static void a(View view, int i, Paint paint) {
        a.a(view, i, paint);
    }

    public static void a(View view, Paint paint) {
        a.a(view, paint);
    }

    public static void a(View view, a aVar) {
        a.a(view, aVar);
    }

    public static void a(View view, Runnable runnable) {
        a.a(view, runnable);
    }

    public static boolean a(View view, int i) {
        return a.a(view, i);
    }

    public static void b(View view) {
        a.b(view);
    }

    public static int c(View view) {
        return a.c(view);
    }

    public static void d(View view) {
        a.d(view);
    }

    public static int e(View view) {
        return a.e(view);
    }

    public static int f(View view) {
        return a.f(view);
    }
}