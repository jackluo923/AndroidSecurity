package com.actionbarsherlock.internal.nineoldandroids.animation;

class Keyframe$IntKeyframe
  extends Keyframe
{
  int mValue;
  
  Keyframe$IntKeyframe(float paramFloat)
  {
    mFraction = paramFloat;
    mValueType = Integer.TYPE;
  }
  
  Keyframe$IntKeyframe(float paramFloat, int paramInt)
  {
    mFraction = paramFloat;
    mValue = paramInt;
    mValueType = Integer.TYPE;
    mHasValue = true;
  }
  
  public IntKeyframe clone()
  {
    IntKeyframe localIntKeyframe = new IntKeyframe(getFraction(), mValue);
    localIntKeyframe.setInterpolator(getInterpolator());
    return localIntKeyframe;
  }
  
  public int getIntValue()
  {
    return mValue;
  }
  
  public Object getValue()
  {
    return Integer.valueOf(mValue);
  }
  
  public void setValue(Object paramObject)
  {
    if ((paramObject != null) && (paramObject.getClass() == Integer.class))
    {
      mValue = ((Integer)paramObject).intValue();
      mHasValue = true;
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.Keyframe.IntKeyframe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */