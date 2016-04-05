package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class PropertyValuesHolder$IntPropertyValuesHolder
  extends PropertyValuesHolder
{
  int mIntAnimatedValue;
  IntKeyframeSet mIntKeyframeSet;
  
  public PropertyValuesHolder$IntPropertyValuesHolder(String paramString, IntKeyframeSet paramIntKeyframeSet)
  {
    super(paramString, null);
    mValueType = Integer.TYPE;
    mKeyframeSet = paramIntKeyframeSet;
    mIntKeyframeSet = ((IntKeyframeSet)mKeyframeSet);
  }
  
  public PropertyValuesHolder$IntPropertyValuesHolder(String paramString, int... paramVarArgs)
  {
    super(paramString, null);
    setIntValues(paramVarArgs);
  }
  
  void calculateValue(float paramFloat)
  {
    mIntAnimatedValue = mIntKeyframeSet.getIntValue(paramFloat);
  }
  
  public IntPropertyValuesHolder clone()
  {
    IntPropertyValuesHolder localIntPropertyValuesHolder = (IntPropertyValuesHolder)super.clone();
    mIntKeyframeSet = ((IntKeyframeSet)mKeyframeSet);
    return localIntPropertyValuesHolder;
  }
  
  Object getAnimatedValue()
  {
    return Integer.valueOf(mIntAnimatedValue);
  }
  
  void setAnimatedValue(Object paramObject)
  {
    if (mSetter != null) {}
    try
    {
      mTmpValueArray[0] = Integer.valueOf(mIntAnimatedValue);
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
  
  public void setIntValues(int... paramVarArgs)
  {
    super.setIntValues(paramVarArgs);
    mIntKeyframeSet = ((IntKeyframeSet)mKeyframeSet);
  }
  
  void setupSetter(Class paramClass)
  {
    super.setupSetter(paramClass);
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.PropertyValuesHolder.IntPropertyValuesHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */