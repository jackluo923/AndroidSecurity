package com.admob.android.ads;

import android.graphics.Color;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

// compiled from: BackgroundColorAnimation.java
public final class k extends Animation {
    private int[] a;
    private int[] b;
    private View c;

    public k(int i, int i2, View view) {
        this.c = view;
        this.a = new int[4];
        this.b = new int[4];
        this.a[0] = Color.alpha(i);
        this.a[1] = Color.red(i);
        this.a[2] = Color.green(i);
        this.a[3] = Color.blue(i);
        this.b[0] = Color.alpha(i2);
        this.b[1] = Color.red(i2);
        this.b[2] = Color.green(i2);
        this.b[3] = Color.blue(i2);
    }

    protected final void applyTransformation(float f, Transformation transformation) {
        transformation.setTransformationType(Transformation.TYPE_IDENTITY);
        if (((double) f) >= 0.0d && ((double) f) <= 1.0d) {
            int[] iArr = new int[4];
            int i = 0;
            while (i < 4) {
                iArr[i] = (int) (((float) this.a[i]) + ((float) (this.b[i] - this.a[i])) * f);
                i++;
            }
            this.c.setBackgroundColor(Color.argb(iArr[0], iArr[1], iArr[2], iArr[3]));
        }
    }
}