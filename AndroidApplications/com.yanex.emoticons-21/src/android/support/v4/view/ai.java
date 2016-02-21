package android.support.v4.view;

import android.animation.ValueAnimator;
import android.graphics.Paint;
import android.view.View;

class ai extends ah {
    ai() {
    }

    final long a() {
        return ValueAnimator.getFrameDelay();
    }

    public final void a(View view, int i, Paint paint) {
        view.setLayerType(i, paint);
    }

    public void a(View view, Paint paint) {
        view.setLayerType(view.getLayerType(), paint);
        view.invalidate();
    }

    public final int e(View view) {
        return view.getLayerType();
    }
}