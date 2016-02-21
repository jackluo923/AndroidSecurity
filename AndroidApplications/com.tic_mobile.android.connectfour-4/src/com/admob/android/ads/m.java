package com.admob.android.ads;

import android.view.animation.AlphaAnimation;
import android.view.animation.Transformation;

// compiled from: KeyFrameAlphaAnimation.java
public final class m extends AlphaAnimation {
    public m(float f, float f2) {
        super(f, f2);
    }

    protected final void applyTransformation(float f, Transformation transformation) {
        if (((double) f) >= 0.0d || ((double) f) <= 1.0d) {
            super.applyTransformation(f, transformation);
        }
    }
}