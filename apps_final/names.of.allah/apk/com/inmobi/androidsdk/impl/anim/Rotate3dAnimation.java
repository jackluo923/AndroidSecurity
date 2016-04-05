package com.inmobi.androidsdk.impl.anim;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class Rotate3dAnimation
  extends Animation
{
  private final float a;
  private final float b;
  private final float c;
  private final float d;
  private final float e;
  private final boolean f;
  private Camera g;
  
  public Rotate3dAnimation(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, boolean paramBoolean)
  {
    a = paramFloat1;
    b = paramFloat2;
    c = paramFloat3;
    d = paramFloat4;
    e = paramFloat5;
    f = paramBoolean;
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    float f1 = a;
    float f2 = b;
    float f3 = c;
    float f4 = d;
    Camera localCamera = g;
    paramTransformation = paramTransformation.getMatrix();
    localCamera.save();
    if (f) {
      localCamera.translate(0.0F, 0.0F, e * paramFloat);
    }
    for (;;)
    {
      localCamera.rotateX(f1 + (f2 - f1) * paramFloat);
      localCamera.getMatrix(paramTransformation);
      localCamera.restore();
      paramTransformation.preTranslate(-f3, -f4);
      paramTransformation.postTranslate(f3, f4);
      return;
      localCamera.translate(0.0F, 0.0F, e * (1.0F - paramFloat));
    }
  }
  
  public void initialize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.initialize(paramInt1, paramInt2, paramInt3, paramInt4);
    g = new Camera();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.anim.Rotate3dAnimation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */