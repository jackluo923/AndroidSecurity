package com.actionbarsherlock.internal.nineoldandroids.animation;

class Keyframe$FloatKeyframe
  extends Keyframe
{
  float mValue;
  
  Keyframe$FloatKeyframe(float paramFloat)
  {
    mFraction = paramFloat;
    mValueType = Float.TYPE;
  }
  
  Keyframe$FloatKeyframe(float paramFloat1, float paramFloat2)
  {
    mFraction = paramFloat1;
    mValue = paramFloat2;
    mValueType = Float.TYPE;
    mHasValue = true;
  }
  
  public FloatKeyframe clone()
  {
    FloatKeyframe localFloatKeyframe = new FloatKeyframe(getFraction(), mValue);
    localFloatKeyframe.setInterpolator(getInterpolator());
    return localFloatKeyframe;
  }
  
  public float getFloatValue()
  {
    return mValue;
  }
  
  public Object getValue()
  {
    return Float.valueOf(mValue);
  }
  
  public void setValue(Object paramObject)
  {
    if ((paramObject != null) && (paramObject.getClass() == Float.class))
    {
      mValue = ((Float)paramObject).floatValue();
      mHasValue = true;
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.Keyframe.FloatKeyframe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */