package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.view.animation.Interpolator;

public abstract class Keyframe
  implements Cloneable
{
  float mFraction;
  boolean mHasValue = false;
  private Interpolator mInterpolator = null;
  Class mValueType;
  
  public static Keyframe ofFloat(float paramFloat)
  {
    return new Keyframe.FloatKeyframe(paramFloat);
  }
  
  public static Keyframe ofFloat(float paramFloat1, float paramFloat2)
  {
    return new Keyframe.FloatKeyframe(paramFloat1, paramFloat2);
  }
  
  public static Keyframe ofInt(float paramFloat)
  {
    return new Keyframe.IntKeyframe(paramFloat);
  }
  
  public static Keyframe ofInt(float paramFloat, int paramInt)
  {
    return new Keyframe.IntKeyframe(paramFloat, paramInt);
  }
  
  public static Keyframe ofObject(float paramFloat)
  {
    return new Keyframe.ObjectKeyframe(paramFloat, null);
  }
  
  public static Keyframe ofObject(float paramFloat, Object paramObject)
  {
    return new Keyframe.ObjectKeyframe(paramFloat, paramObject);
  }
  
  public abstract Keyframe clone();
  
  public float getFraction()
  {
    return mFraction;
  }
  
  public Interpolator getInterpolator()
  {
    return mInterpolator;
  }
  
  public Class getType()
  {
    return mValueType;
  }
  
  public abstract Object getValue();
  
  public boolean hasValue()
  {
    return mHasValue;
  }
  
  public void setFraction(float paramFloat)
  {
    mFraction = paramFloat;
  }
  
  public void setInterpolator(Interpolator paramInterpolator)
  {
    mInterpolator = paramInterpolator;
  }
  
  public abstract void setValue(Object paramObject);
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.Keyframe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */