package android.support.v4.widget;

import android.graphics.Canvas;
import android.widget.EdgeEffect;

// compiled from: ProGuard
class o {
    public static void a(Object obj, int i, int i2) {
        ((EdgeEffect) obj).setSize(i, i2);
    }

    public static boolean a(Object obj) {
        return ((EdgeEffect) obj).isFinished();
    }

    public static boolean a(Object obj, float f) {
        ((EdgeEffect) obj).onPull(f);
        return true;
    }

    public static boolean a(Object obj, Canvas canvas) {
        return ((EdgeEffect) obj).draw(canvas);
    }

    public static void b(Object obj) {
        ((EdgeEffect) obj).finish();
    }

    public static boolean c(Object obj) {
        EdgeEffect edgeEffect = (EdgeEffect) obj;
        edgeEffect.onRelease();
        return edgeEffect.isFinished();
    }
}