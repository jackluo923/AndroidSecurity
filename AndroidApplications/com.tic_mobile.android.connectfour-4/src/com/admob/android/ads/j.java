package com.admob.android.ads;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

// compiled from: Rotate3dAnimation.java
public final class j extends Animation {
    private final float[] a;
    private final float[] b;
    private final float c;
    private final float d;
    private final float e;
    private final boolean f;
    private Camera g;

    public j(float f, float f2, float f3, float f4, float f5, boolean z) {
        this(new float[]{0.0f, f, 0.0f}, new float[]{0.0f, f2, 0.0f}, f3, f4, f5, z);
    }

    public j(float[] fArr, float[] fArr2, float f, float f2, float f3, boolean z) {
        this.a = fArr;
        this.b = fArr2;
        this.c = f;
        this.d = f2;
        this.e = f3;
        this.f = z;
    }

    protected final void applyTransformation(float f, Transformation transformation) {
        if (((double) f) < 0.0d || ((double) f) > 1.0d) {
            transformation.setTransformationType(Transformation.TYPE_IDENTITY);
        } else {
            float[] fArr = this.a;
            float[] fArr2 = this.b;
            float[] fArr3 = new float[3];
            int i = 0;
            while (i < 3) {
                fArr3[i] = fArr[i] + (fArr2[i] - fArr[i]) * f;
                i++;
            }
            float f2 = this.c;
            float f3 = this.d;
            Camera camera = this.g;
            Matrix matrix = transformation.getMatrix();
            camera.save();
            if (this.f) {
                camera.translate(0.0f, 0.0f, this.e * f);
            } else {
                camera.translate(0.0f, 0.0f, this.e * (1.0f - f));
            }
            camera.rotateX(fArr3[0]);
            camera.rotateY(fArr3[1]);
            camera.rotateZ(fArr3[2]);
            camera.getMatrix(matrix);
            camera.restore();
            matrix.preTranslate(-f2, -f3);
            matrix.postTranslate(f2, f3);
            transformation.setTransformationType(Transformation.TYPE_MATRIX);
        }
    }

    public final void initialize(int i, int i2, int i3, int i4) {
        super.initialize(i, i2, i3, i4);
        this.g = new Camera();
    }
}