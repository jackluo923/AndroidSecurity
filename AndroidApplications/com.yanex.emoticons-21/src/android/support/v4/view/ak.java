package android.support.v4.view;

import android.view.View;

class ak extends aj {
    ak() {
    }

    public final void a(View view, int i, int i2, int i3, int i4) {
        view.postInvalidate(i, i2, i3, i4);
    }

    public final void a(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    public final void b(View view) {
        view.postInvalidateOnAnimation();
    }

    public final int c(View view) {
        return view.getImportantForAccessibility();
    }

    public final void d(View view) {
        view.setImportantForAccessibility(1);
    }
}