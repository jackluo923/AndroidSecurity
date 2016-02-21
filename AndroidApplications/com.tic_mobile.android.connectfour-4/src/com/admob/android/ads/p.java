package com.admob.android.ads;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.view.animation.Animation;
import android.view.animation.Transformation;

// compiled from: SkewAnimation.java
public final class p extends Animation {
    private float[] a;
    private float[] b;

    public p(float[] fArr, float[] fArr2, PointF pointF) {
        this.a = fArr;
        this.b = fArr2;
    }

    protected final void applyTransformation(float f, Transformation transformation) {
        if (((double) f) < 0.0d || ((double) f) > 1.0d) {
            transformation.setTransformationType(Transformation.TYPE_IDENTITY);
        } else {
            Matrix matrix = transformation.getMatrix();
            float[] fArr = new float[this.a.length];
            int i = 0;
            while (i < this.a.length) {
                fArr[i] = this.a[i] + (this.b[i] - this.a[i]) * f;
                i++;
            }
            matrix.setSkew(this.a[0], this.a[1]);
            transformation.setTransformationType(Transformation.TYPE_MATRIX);
        }
    }
}