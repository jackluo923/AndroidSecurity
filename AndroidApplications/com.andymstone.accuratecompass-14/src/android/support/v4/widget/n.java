package android.support.v4.widget;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;

class n implements m {
    n() {
    }

    public Object a(Context context, Interpolator interpolator) {
        return interpolator != null ? new Scroller(context, interpolator) : new Scroller(context);
    }

    public void a(Object obj, int i, int i2, int i3, int i4, int i5) {
        ((Scroller) obj).startScroll(i, i2, i3, i4, i5);
    }

    public boolean a(Object obj) {
        return ((Scroller) obj).isFinished();
    }

    public int b(Object obj) {
        return ((Scroller) obj).getCurrX();
    }

    public int c(Object obj) {
        return ((Scroller) obj).getCurrY();
    }

    public boolean d(Object obj) {
        return ((Scroller) obj).computeScrollOffset();
    }

    public void e(Object obj) {
        ((Scroller) obj).abortAnimation();
    }

    public int f(Object obj) {
        return ((Scroller) obj).getFinalX();
    }

    public int g(Object obj) {
        return ((Scroller) obj).getFinalY();
    }
}