package android.support.v4.view;

import android.animation.ValueAnimator;
import android.graphics.Paint;
import android.view.View;

class av {
    public static int a(View view) {
        return view.getLayerType();
    }

    static long a() {
        return ValueAnimator.getFrameDelay();
    }

    public static void a(View view, int i, Paint paint) {
        view.setLayerType(i, paint);
    }
}