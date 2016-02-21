package android.support.v4.widget;

import android.view.animation.Interpolator;

final class ab implements Interpolator {
    ab() {
    }

    public float getInterpolation(float f) {
        float f2 = f - 1.0f;
        return f2 * (((f2 * f2) * f2) * f2) + 1.0f;
    }
}