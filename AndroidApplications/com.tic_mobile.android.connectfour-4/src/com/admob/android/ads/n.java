package com.admob.android.ads;

import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;

// compiled from: KeyFrameScaleAnimation.java
public final class n extends ScaleAnimation {
    public n(float f, float f2, float f3, float f4, float f5, float f6) {
        super(f, f2, f3, f4, f5, f6);
    }

    protected final void applyTransformation(float f, Transformation transformation) {
        if (((double) f) >= 0.0d || ((double) f) <= 1.0d) {
            super.applyTransformation(f, transformation);
        }
    }
}