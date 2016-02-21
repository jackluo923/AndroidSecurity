package com.admob.android.ads;

import android.view.animation.Transformation;
import android.view.animation.TranslateAnimation;

// compiled from: KeyFrameTranslateAnimation.java
public final class l extends TranslateAnimation {
    public l(int i, float f, int i2, float f2, int i3, float f3, int i4, float f4) {
        super(0, f, 0, f2, 0, f3, 0, f4);
    }

    protected final void applyTransformation(float f, Transformation transformation) {
        if (((double) f) >= 0.0d || ((double) f) <= 1.0d) {
            super.applyTransformation(f, transformation);
        }
    }
}