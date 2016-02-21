package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewConfiguration;

public final class an {
    static final aq a;

    static {
        if (VERSION.SDK_INT >= 11) {
            a = new ap();
        } else {
            a = new ao();
        }
    }

    public static int a(ViewConfiguration viewConfiguration) {
        return a.a(viewConfiguration);
    }
}