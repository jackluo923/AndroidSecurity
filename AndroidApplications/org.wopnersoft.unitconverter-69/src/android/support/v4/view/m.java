package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.MotionEvent;

// compiled from: ProGuard
public class m {
    static final p a;

    static {
        if (VERSION.SDK_INT >= 5) {
            a = new o();
        } else {
            a = new n();
        }
    }

    public static int a(MotionEvent motionEvent) {
        return motionEvent.getAction() & 255;
    }

    public static int a(MotionEvent motionEvent, int i) {
        return a.a(motionEvent, i);
    }

    public static int b(MotionEvent motionEvent) {
        return (motionEvent.getAction() & 65280) >> 8;
    }

    public static int b(MotionEvent motionEvent, int i) {
        return a.b(motionEvent, i);
    }

    public static float c(MotionEvent motionEvent, int i) {
        return a.c(motionEvent, i);
    }

    public static int c(MotionEvent motionEvent) {
        return a.a(motionEvent);
    }

    public static float d(MotionEvent motionEvent, int i) {
        return a.d(motionEvent, i);
    }
}