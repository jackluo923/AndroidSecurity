package com.actionbarsherlock.internal.nineoldandroids.animation;

class Keyframe$ObjectKeyframe
  extends Keyframe
{
  Object mValue;
  
  Keyframe$ObjectKeyframe(float paramFloat, Object paramObject)
  {
    mFraction = paramFloat;
    mValue = paramObject;
    boolean bool;
    if (paramObject != null)
    {
      bool = true;
      mHasValue = bool;
      if (!mHasValue) {
        break label48;
      }
    }
    label48:
    for (paramObject = paramObject.getClass();; paramObject = Object.class)
    {
      mValueType = ((Class)paramObject);
      return;
      bool = false;
      break;
    }
  }
  
  public ObjectKeyframe clone()
  {
    ObjectKeyframe localObjectKeyframe = new ObjectKeyframe(getFraction(), mValue);
    localObjectKeyframe.setInterpolator(getInterpolator());
    return localObjectKeyframe;
  }
  
  public Object getValue()
  {
    return mValue;
  }
  
  public void setValue(Object paramObject)
  {
    mValue = paramObject;
    if (paramObject != null) {}
    for (boolean bool = true;; bool = false)
    {
      mHasValue = bool;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.Keyframe.ObjectKeyframe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */