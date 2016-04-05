package com.actionbarsherlock.internal.nineoldandroids.view.animation;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.util.FloatMath;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class AnimatorProxy
  extends Animation
{
  public static final boolean NEEDS_PROXY;
  private static final WeakHashMap<View, AnimatorProxy> PROXIES;
  private final RectF mAfter = new RectF();
  private float mAlpha = 1.0F;
  private final RectF mBefore = new RectF();
  private float mScaleX = 1.0F;
  private float mScaleY = 1.0F;
  private final Matrix mTempMatrix = new Matrix();
  private float mTranslationX;
  private float mTranslationY;
  private final WeakReference<View> mView;
  
  static
  {
    if (Build.VERSION.SDK_INT < 11) {}
    for (boolean bool = true;; bool = false)
    {
      NEEDS_PROXY = bool;
      PROXIES = new WeakHashMap();
      return;
    }
  }
  
  private AnimatorProxy(View paramView)
  {
    setDuration(0L);
    setFillAfter(true);
    paramView.setAnimation(this);
    mView = new WeakReference(paramView);
  }
  
  private void computeRect(RectF paramRectF, View paramView)
  {
    paramRectF.set(0.0F, 0.0F, paramView.getWidth(), paramView.getHeight());
    Matrix localMatrix = mTempMatrix;
    localMatrix.reset();
    transformMatrix(localMatrix, paramView);
    mTempMatrix.mapRect(paramRectF);
    paramRectF.offset(paramView.getLeft(), paramView.getTop());
    float f;
    if (right < left)
    {
      f = right;
      right = left;
      left = f;
    }
    if (bottom < top)
    {
      f = top;
      top = bottom;
      bottom = f;
    }
  }
  
  private void invalidateAfterUpdate()
  {
    View localView1 = (View)mView.get();
    if (localView1 == null) {}
    View localView2;
    do
    {
      return;
      localView2 = (View)localView1.getParent();
    } while (localView2 == null);
    localView1.setAnimation(this);
    RectF localRectF = mAfter;
    computeRect(localRectF, localView1);
    localRectF.union(mBefore);
    localView2.invalidate((int)FloatMath.floor(left), (int)FloatMath.floor(top), (int)FloatMath.ceil(right), (int)FloatMath.ceil(bottom));
  }
  
  private void prepareForUpdate()
  {
    View localView = (View)mView.get();
    if (localView != null) {
      computeRect(mBefore, localView);
    }
  }
  
  private void transformMatrix(Matrix paramMatrix, View paramView)
  {
    float f4 = paramView.getWidth();
    float f3 = paramView.getHeight();
    float f1 = mScaleX;
    float f2 = mScaleY;
    if ((f1 != 1.0F) || (f2 != 1.0F))
    {
      f4 = (f1 * f4 - f4) / 2.0F;
      f3 = (f2 * f3 - f3) / 2.0F;
      paramMatrix.postScale(f1, f2);
      paramMatrix.postTranslate(-f4, -f3);
    }
    paramMatrix.postTranslate(mTranslationX, mTranslationY);
  }
  
  public static AnimatorProxy wrap(View paramView)
  {
    AnimatorProxy localAnimatorProxy2 = (AnimatorProxy)PROXIES.get(paramView);
    AnimatorProxy localAnimatorProxy1 = localAnimatorProxy2;
    if (localAnimatorProxy2 == null)
    {
      localAnimatorProxy1 = new AnimatorProxy(paramView);
      PROXIES.put(paramView, localAnimatorProxy1);
    }
    return localAnimatorProxy1;
  }
  
  protected final void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    View localView = (View)mView.get();
    if (localView != null)
    {
      paramTransformation.setAlpha(mAlpha);
      transformMatrix(paramTransformation.getMatrix(), localView);
    }
  }
  
  public final float getAlpha()
  {
    return mAlpha;
  }
  
  public final float getScaleX()
  {
    return mScaleX;
  }
  
  public final float getScaleY()
  {
    return mScaleY;
  }
  
  public final int getScrollX()
  {
    View localView = (View)mView.get();
    if (localView == null) {
      return 0;
    }
    return localView.getScrollX();
  }
  
  public final int getScrollY()
  {
    View localView = (View)mView.get();
    if (localView == null) {
      return 0;
    }
    return localView.getScrollY();
  }
  
  public final float getTranslationX()
  {
    return mTranslationX;
  }
  
  public final float getTranslationY()
  {
    return mTranslationY;
  }
  
  public final void reset() {}
  
  public final void setAlpha(float paramFloat)
  {
    if (mAlpha != paramFloat)
    {
      mAlpha = paramFloat;
      View localView = (View)mView.get();
      if (localView != null) {
        localView.invalidate();
      }
    }
  }
  
  public final void setScaleX(float paramFloat)
  {
    if (mScaleX != paramFloat)
    {
      prepareForUpdate();
      mScaleX = paramFloat;
      invalidateAfterUpdate();
    }
  }
  
  public final void setScaleY(float paramFloat)
  {
    if (mScaleY != paramFloat)
    {
      prepareForUpdate();
      mScaleY = paramFloat;
      invalidateAfterUpdate();
    }
  }
  
  public final void setScrollX(int paramInt)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      localView.scrollTo(paramInt, localView.getScrollY());
    }
  }
  
  public final void setScrollY(int paramInt)
  {
    View localView = (View)mView.get();
    if (localView != null) {
      localView.scrollTo(localView.getScrollY(), paramInt);
    }
  }
  
  public final void setTranslationX(float paramFloat)
  {
    if (mTranslationX != paramFloat)
    {
      prepareForUpdate();
      mTranslationX = paramFloat;
      invalidateAfterUpdate();
    }
  }
  
  public final void setTranslationY(float paramFloat)
  {
    if (mTranslationY != paramFloat)
    {
      prepareForUpdate();
      mTranslationY = paramFloat;
      invalidateAfterUpdate();
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.view.animation.AnimatorProxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */