package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class PropertyValuesHolder$FloatPropertyValuesHolder
  extends PropertyValuesHolder
{
  float mFloatAnimatedValue;
  FloatKeyframeSet mFloatKeyframeSet;
  
  public PropertyValuesHolder$FloatPropertyValuesHolder(String paramString, FloatKeyframeSet paramFloatKeyframeSet)
  {
    super(paramString, null);
    mValueType = Float.TYPE;
    mKeyframeSet = paramFloatKeyframeSet;
    mFloatKeyframeSet = ((FloatKeyframeSet)mKeyframeSet);
  }
  
  public PropertyValuesHolder$FloatPropertyValuesHolder(String paramString, float... paramVarArgs)
  {
    super(paramString, null);
    setFloatValues(paramVarArgs);
  }
  
  void calculateValue(float paramFloat)
  {
    mFloatAnimatedValue = mFloatKeyframeSet.getFloatValue(paramFloat);
  }
  
  public FloatPropertyValuesHolder clone()
  {
    FloatPropertyValuesHolder localFloatPropertyValuesHolder = (FloatPropertyValuesHolder)super.clone();
    mFloatKeyframeSet = ((FloatKeyframeSet)mKeyframeSet);
    return localFloatPropertyValuesHolder;
  }
  
  Object getAnimatedValue()
  {
    return Float.valueOf(mFloatAnimatedValue);
  }
  
  void setAnimatedValue(Object paramObject)
  {
    if (mSetter != null) {}
    try
    {
      mTmpValueArray[0] = Float.valueOf(mFloatAnimatedValue);
      mSetter.invoke(paramObject, mTmpValueArray);
      return;
    }
    catch (InvocationTargetException paramObject)
    {
      Log.e("PropertyValuesHolder", ((InvocationTargetException)paramObject).toString());
      return;
    }
    catch (IllegalAccessException paramObject)
    {
      Log.e("PropertyValuesHolder", ((IllegalAccessException)paramObject).toString());
    }
  }
  
  public void setFloatValues(float... paramVarArgs)
  {
    super.setFloatValues(paramVarArgs);
    mFloatKeyframeSet = ((FloatKeyframeSet)mKeyframeSet);
  }
  
  void setupSetter(Class paramClass)
  {
    super.setupSetter(paramClass);
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.PropertyValuesHolder.FloatPropertyValuesHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */