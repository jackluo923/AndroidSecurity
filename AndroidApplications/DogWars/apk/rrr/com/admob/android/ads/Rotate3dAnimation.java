package com.admob.android.ads;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

class Rotate3dAnimation
  extends Animation
{
  private Camera mCamera;
  private final float mCenterX;
  private final float mCenterY;
  private final float mDepthZ;
  private final float mFromDegrees;
  private final boolean mReverse;
  private final float mToDegrees;
  
  public Rotate3dAnimation(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, boolean paramBoolean)
  {
    mFromDegrees = paramFloat1;
    mToDegrees = paramFloat2;
    mCenterX = paramFloat3;
    mCenterY = paramFloat4;
    mDepthZ = paramFloat5;
    mReverse = paramBoolean;
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    float f8 = 0.0F;
    float f4 = mFromDegrees;
    float f5 = mToDegrees;
    f5 -= f4;
    f5 *= paramFloat;
    float f3 = f4 + f5;
    float f1 = mCenterX;
    float f2 = mCenterY;
    Camera localCamera = mCamera;
    Matrix localMatrix = paramTransformation.getMatrix();
    localCamera.save();
    boolean bool = mReverse;
    float f6;
    if (bool)
    {
      f6 = mDepthZ;
      f6 *= paramFloat;
      localCamera.translate(f8, f8, f6);
    }
    for (;;)
    {
      localCamera.rotateY(f3);
      localCamera.getMatrix(localMatrix);
      localCamera.restore();
      f6 = -f1;
      float f7 = -f2;
      localMatrix.preTranslate(f6, f7);
      localMatrix.postTranslate(f1, f2);
      return;
      f6 = mDepthZ;
      f7 = 1.0F;
      f7 -= paramFloat;
      f6 *= f7;
      localCamera.translate(f8, f8, f6);
    }
  }
  
  public void initialize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.initialize(paramInt1, paramInt2, paramInt3, paramInt4);
    Camera localCamera = new android/graphics/Camera;
    localCamera.<init>();
    mCamera = localCamera;
  }
}

/* Location:
 * Qualified Name:     com.admob.android.ads.Rotate3dAnimation
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */