package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.KeyEvent;

// compiled from: ProGuard
public class f {
    static final j a;

    static {
        if (VERSION.SDK_INT >= 11) {
            a = new i();
        } else {
            a = new g();
        }
    }

    public static boolean a(KeyEvent keyEvent) {
        return a.b(keyEvent.getMetaState());
    }

    public static boolean a(KeyEvent keyEvent, int i) {
        return a.a(keyEvent.getMetaState(), i);
    }

    public static void b(KeyEvent keyEvent) {
        a.a(keyEvent);
    }
}