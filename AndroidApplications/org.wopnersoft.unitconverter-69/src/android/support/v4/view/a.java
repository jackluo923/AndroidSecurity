package android.support.v4.view;

import android.os.Build.VERSION;

// compiled from: ProGuard
public class a {
    static final b a;

    static {
        if (VERSION.SDK_INT >= 17) {
            a = new d();
        } else {
            a = new c();
        }
    }

    public static int a_(int i, int i2) {
        return a.a(i, i2);
    }
}