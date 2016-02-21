package com.admob.android.ads;

import android.view.View;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.Transformation;

// compiled from: ZPositionAnimation.java
public final class b extends Animation {
    private View a;
    private float b;
    private float c;

    // compiled from: ZPositionAnimation.java
    public static interface a {
        void f();
    }

    public b(float f, float f2, View view) {
        this.b = f;
        this.c = f2;
        this.a = view;
    }

    protected final void applyTransformation(float f, Transformation transformation) {
        transformation.setTransformationType(Transformation.TYPE_IDENTITY);
        if (((double) f) >= 0.0d && ((double) f) <= 1.0d) {
            float f2 = this.b + (this.c - this.b) * f;
            View view = this.a;
            if (view != null) {
                f c = f.c(view);
                c.a = f2;
                view.setTag(c);
            }
            ViewParent parent = this.a.getParent();
            if (parent instanceof a) {
                ((a) parent).f();
            }
        }
    }
}