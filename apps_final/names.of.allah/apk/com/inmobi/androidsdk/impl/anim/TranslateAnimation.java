package com.inmobi.androidsdk.impl.anim;

import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class TranslateAnimation
  extends Animation
{
  private int a = 0;
  private int b = 0;
  private int c = 0;
  private int d = 0;
  private float e = 0.0F;
  private float f = 0.0F;
  private float g = 0.0F;
  private float h = 0.0F;
  private float i;
  private float j;
  private float k;
  private float l;
  
  public TranslateAnimation(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    e = paramFloat1;
    f = paramFloat2;
    g = paramFloat3;
    h = paramFloat4;
    a = 0;
    b = 0;
    c = 0;
    d = 0;
  }
  
  public TranslateAnimation(int paramInt1, float paramFloat1, int paramInt2, float paramFloat2, int paramInt3, float paramFloat3, int paramInt4, float paramFloat4)
  {
    e = paramFloat1;
    f = paramFloat2;
    g = paramFloat3;
    h = paramFloat4;
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = paramInt4;
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    float f1 = i;
    float f2 = k;
    if (i != j) {
      f1 = i + (j - i) * paramFloat;
    }
    if (k != l) {
      f2 = k + (l - k) * paramFloat;
    }
    paramTransformation.getMatrix().setTranslate(f1, f2);
  }
  
  public void initialize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.initialize(paramInt1, paramInt2, paramInt3, paramInt4);
    i = resolveSize(a, e, paramInt1, paramInt3);
    j = resolveSize(b, f, paramInt1, paramInt3);
    k = resolveSize(c, g, paramInt2, paramInt4);
    l = resolveSize(d, h, paramInt2, paramInt4);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.anim.TranslateAnimation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */