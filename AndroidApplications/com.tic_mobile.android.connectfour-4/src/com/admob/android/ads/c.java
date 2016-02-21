package com.admob.android.ads;

import android.view.animation.Interpolator;

// compiled from: AdjustedInterpolator.java
public final class c implements Interpolator {
    private Interpolator a;
    private float b;
    private float c;

    public c(Interpolator interpolator, long j, long j2, long j3) {
        this.a = interpolator;
        this.b = ((float) j) / ((float) j3);
        this.c = ((float) j2) / ((float) j3);
    }

    public final float getInterpolation(float f) {
        if (f <= this.b) {
            return -1.0f;
        }
        return f <= this.b + this.c ? this.a.getInterpolation((f - this.b) / this.c) : 2.0f;
    }
}