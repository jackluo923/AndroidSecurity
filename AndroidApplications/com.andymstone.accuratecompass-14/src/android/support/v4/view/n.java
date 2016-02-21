package android.support.v4.view;

import android.os.Build.VERSION;

public class n {
    static final o a;

    static {
        if (VERSION.SDK_INT >= 17) {
            a = new q();
        } else {
            a = new p();
        }
    }

    public static int a(int i, int i2) {
        return a.a(i, i2);
    }
}