package android.support.v4.view;

import android.graphics.Paint;
import android.os.Build.VERSION;
import android.view.View;

// compiled from: ProGuard
public class x {
    static final ag a;

    static {
        int i = VERSION.SDK_INT;
        if (i >= 19) {
            a = new af();
        } else if (i >= 17) {
            a = new ae();
        } else if (i >= 16) {
            a = new ad();
        } else if (i >= 14) {
            a = new ac();
        } else if (i >= 11) {
            a = new ab();
        } else if (i >= 9) {
            a = new aa();
        } else {
            a = new y();
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

    public static int d(View view) {
        return a.d(view);
    }

    public static boolean e(View view) {
        return a.e(view);
    }
}