package com.inmobi.androidsdk.impl.anim;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public class Rotate3dAnimationVert extends Animation {
    private final float a;
    private final float b;
    private final float c;
    private final float d;
    private final float e;
    private final boolean f;
    private Camera g;

    public Rotate3dAnimationVert(float f, float f2, float f3, float f4, float f5, boolean z) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
        this.e = f5;
        this.f = z;
    }

    protected void applyTransformation(float f, Transformation transformation) {
        float f2 = this.a;
        f2 += (this.b - f2) * f;
        float f3 = this.c;
        float f4 = this.d;
        Camera camera = this.g;
        Matrix matrix = transformation.getMatrix();
        camera.save();
        if (this.f) {
            camera.translate(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.e * f);
        } else {
            camera.translate(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.e * (1.0f - f));
        }
        camera.rotateY(f2);
        camera.getMatrix(matrix);
        camera.restore();
        matrix.preTranslate(-f3, -f4);
        matrix.postTranslate(f3, f4);
    }

    public void initialize(int i, int i2, int i3, int i4) {
        super.initialize(i, i2, i3, i4);
        this.g = new Camera();
    }
}