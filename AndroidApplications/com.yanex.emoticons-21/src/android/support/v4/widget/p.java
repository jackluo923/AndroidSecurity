package android.support.v4.widget;

import android.widget.Scroller;

final class p implements o {
    p() {
    }

    public final void a(Object obj, int i, int i2, int i3, int i4, int i5) {
        ((Scroller) obj).startScroll(i, i2, i3, i4, i5);
    }

    public final boolean a(Object obj) {
        return ((Scroller) obj).isFinished();
    }

    public final int b(Object obj) {
        return ((Scroller) obj).getCurrX();
    }

    public final int c(Object obj) {
        return ((Scroller) obj).getCurrY();
    }

    public final boolean d(Object obj) {
        return ((Scroller) obj).computeScrollOffset();
    }

    public final void e(Object obj) {
        ((Scroller) obj).abortAnimation();
    }

    public final int f(Object obj) {
        return ((Scroller) obj).getFinalX();
    }

    public final int g(Object obj) {
        return ((Scroller) obj).getFinalY();
    }
}