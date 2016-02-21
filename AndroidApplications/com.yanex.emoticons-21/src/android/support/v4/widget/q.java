package android.support.v4.widget;

import android.widget.OverScroller;

class q implements o {
    q() {
    }

    public final void a(Object obj, int i, int i2, int i3, int i4, int i5) {
        ((OverScroller) obj).startScroll(i, i2, i3, i4, i5);
    }

    public final boolean a(Object obj) {
        return ((OverScroller) obj).isFinished();
    }

    public final int b(Object obj) {
        return ((OverScroller) obj).getCurrX();
    }

    public final int c(Object obj) {
        return ((OverScroller) obj).getCurrY();
    }

    public final boolean d(Object obj) {
        return ((OverScroller) obj).computeScrollOffset();
    }

    public final void e(Object obj) {
        ((OverScroller) obj).abortAnimation();
    }

    public final int f(Object obj) {
        return ((OverScroller) obj).getFinalX();
    }

    public final int g(Object obj) {
        return ((OverScroller) obj).getFinalY();
    }
}