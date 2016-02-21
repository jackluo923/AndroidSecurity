package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewGroup;

public class az {
    static final bc a;

    static {
        int i = VERSION.SDK_INT;
        if (i >= 14) {
            a = new bb();
        } else if (i >= 11) {
            a = new ba();
        } else {
            a = new bd();
        }
    }

    public static void a(ViewGroup viewGroup, boolean z) {
        a.a(viewGroup, z);
    }
}