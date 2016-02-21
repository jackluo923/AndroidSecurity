package com.chartboost.sdk.impl;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public final class q extends Animation {
    private final float a;
    private final float b;
    private final float c;
    private final float d;
    private boolean e;
    private Camera f;

    public q(float f, float f2, float f3, float f4, boolean z) {
        this.e = true;
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
        this.e = z;
    }

    protected void applyTransformation(float f, Transformation transformation) {
        float f2 = this.a + (this.b - this.a) * f;
        Camera camera = this.f;
        Matrix matrix = transformation.getMatrix();
        camera.save();
        if (this.e) {
            camera.rotateY(f2);
        } else {
            camera.rotateX(f2);
        }
        camera.getMatrix(matrix);
        camera.restore();
        matrix.preTranslate(-this.c, -this.d);
        matrix.postTranslate(this.c, this.d);
    }

    public void initialize(int i, int i2, int i3, int i4) {
        super.initialize(i, i2, i3, i4);
        this.f = new Camera();
    }
}