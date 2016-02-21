package android.support.v4.a;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Build.VERSION;

// compiled from: ProGuard
public class f {
    private static final g a;

    static {
        int i = VERSION.SDK_INT;
        if (i >= 15) {
            a = new j();
        } else if (i >= 11) {
            a = new i();
        } else {
            a = new h();
        }
    }

    public static Intent a(ComponentName componentName) {
        return a.a(componentName);
    }
}