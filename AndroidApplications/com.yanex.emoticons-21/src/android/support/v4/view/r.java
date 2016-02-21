package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.KeyEvent;

public final class r {
    static final v a;

    static {
        if (VERSION.SDK_INT >= 11) {
            a = new u();
        } else {
            a = new s();
        }
    }

    public static boolean a(KeyEvent keyEvent) {
        return a.b(keyEvent.getMetaState());
    }

    public static boolean b(KeyEvent keyEvent) {
        return a.c(keyEvent.getMetaState());
    }

    public static void c(KeyEvent keyEvent) {
        a.a(keyEvent);
    }
}