package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Build.VERSION;

public final class d {
    private static final e a;

    static {
        int i = VERSION.SDK_INT;
        if (i >= 15) {
            a = new h();
        } else if (i >= 11) {
            a = new g();
        } else {
            a = new f();
        }
    }

    public static Intent a(ComponentName componentName) {
        return a.a(componentName);
    }
}