package android.support.v4.widget;

import android.widget.OverScroller;

// compiled from: ProGuard
class v {
    public static void a(Object obj, int i, int i2, int i3, int i4, int i5) {
        ((OverScroller) obj).startScroll(i, i2, i3, i4, i5);
    }

    public static boolean a(Object obj) {
        return ((OverScroller) obj).isFinished();
    }

    public static int b(Object obj) {
        return ((OverScroller) obj).getCurrX();
    }

    public static int c(Object obj) {
        return ((OverScroller) obj).getCurrY();
    }

    public static boolean d(Object obj) {
        return ((OverScroller) obj).computeScrollOffset();
    }

    public static void e(Object obj) {
        ((OverScroller) obj).abortAnimation();
    }

    public static int f(Object obj) {
        return ((OverScroller) obj).getFinalX();
    }

    public static int g(Object obj) {
        return ((OverScroller) obj).getFinalY();
    }
}