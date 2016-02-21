package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.VelocityTracker;

public class af {
    static final ai a;

    static {
        if (VERSION.SDK_INT >= 11) {
            a = new ah();
        } else {
            a = new ag();
        }
    }

    public static float a(VelocityTracker velocityTracker, int i) {
        return a.a(velocityTracker, i);
    }

    public static float b(VelocityTracker velocityTracker, int i) {
        return a.b(velocityTracker, i);
    }
}