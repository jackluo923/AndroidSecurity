package com.actionbarsherlock.internal.nineoldandroids.animation;

import java.util.HashMap;

public final class ObjectAnimator
  extends ValueAnimator
{
  private static final boolean DBG = false;
  private String mPropertyName;
  private Object mTarget;
  
  public ObjectAnimator() {}
  
  private ObjectAnimator(Object paramObject, String paramString)
  {
    mTarget = paramObject;
    setPropertyName(paramString);
  }
  
  public static ObjectAnimator ofFloat(Object paramObject, String paramString, float... paramVarArgs)
  {
    paramObject = new ObjectAnimator(paramObject, paramString);
    ((ObjectAnimator)paramObject).setFloatValues(paramVarArgs);
    return (ObjectAnimator)paramObject;
  }
  
  public static ObjectAnimator ofInt(Object paramObject, String paramString, int... paramVarArgs)
  {
    paramObject = new ObjectAnimator(paramObject, paramString);
    ((ObjectAnimator)paramObject).setIntValues(paramVarArgs);
    return (ObjectAnimator)paramObject;
  }
  
  public static ObjectAnimator ofObject(Object paramObject, String paramString, TypeEvaluator paramTypeEvaluator, Object... paramVarArgs)
  {
    paramObject = new ObjectAnimator(paramObject, paramString);
    ((ObjectAnimator)paramObject).setObjectValues(paramVarArgs);
    ((ObjectAnimator)paramObject).setEvaluator(paramTypeEvaluator);
    return (ObjectAnimator)paramObject;
  }
  
  public static ObjectAnimator ofPropertyValuesHolder(Object paramObject, PropertyValuesHolder... paramVarArgs)
  {
    ObjectAnimator localObjectAnimator = new ObjectAnimator();
    mTarget = paramObject;
    localObjectAnimator.setValues(paramVarArgs);
    return localObjectAnimator;
  }
  
  final void animateValue(float paramFloat)
  {
    super.animateValue(paramFloat);
    int j = mValues.length;
    int i = 0;
    while (i < j)
    {
      mValues[i].setAnimatedValue(mTarget);
      i += 1;
    }
  }
  
  public final ObjectAnimator clone()
  {
    return (ObjectAnimator)super.clone();
  }
  
  public final String getPropertyName()
  {
    return mPropertyName;
  }
  
  public final Object getTarget()
  {
    return mTarget;
  }
  
  final void initAnimation()
  {
    if (!mInitialized)
    {
      int j = mValues.length;
      int i = 0;
      while (i < j)
      {
        mValues[i].setupSetterAndGetter(mTarget);
        i += 1;
      }
      super.initAnimation();
    }
  }
  
  public final ObjectAnimator setDuration(long paramLong)
  {
    super.setDuration(paramLong);
    return this;
  }
  
  public final void setFloatValues(float... paramVarArgs)
  {
    if ((mValues == null) || (mValues.length == 0))
    {
      setValues(new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(mPropertyName, paramVarArgs) });
      return;
    }
    super.setFloatValues(paramVarArgs);
  }
  
  public final void setIntValues(int... paramVarArgs)
  {
    if ((mValues == null) || (mValues.length == 0))
    {
      setValues(new PropertyValuesHolder[] { PropertyValuesHolder.ofInt(mPropertyName, paramVarArgs) });
      return;
    }
    super.setIntValues(paramVarArgs);
  }
  
  public final void setObjectValues(Object... paramVarArgs)
  {
    if ((mValues == null) || (mValues.length == 0))
    {
      setValues(new PropertyValuesHolder[] { PropertyValuesHolder.ofObject(mPropertyName, null, paramVarArgs) });
      return;
    }
    super.setObjectValues(paramVarArgs);
  }
  
  public final void setPropertyName(String paramString)
  {
    if (mValues != null)
    {
      PropertyValuesHolder localPropertyValuesHolder = mValues[0];
      String str = localPropertyValuesHolder.getPropertyName();
      localPropertyValuesHolder.setPropertyName(paramString);
      mValuesMap.remove(str);
      mValuesMap.put(paramString, localPropertyValuesHolder);
    }
    mPropertyName = paramString;
    mInitialized = false;
  }
  
  public final void setTarget(Object paramObject)
  {
    if (mTarget != paramObject)
    {
      Object localObject = mTarget;
      mTarget = paramObject;
      if ((localObject == null) || (paramObject == null) || (localObject.getClass() != paramObject.getClass())) {}
    }
    else
    {
      return;
    }
    mInitialized = false;
  }
  
  public final void setupEndValues()
  {
    initAnimation();
    int j = mValues.length;
    int i = 0;
    while (i < j)
    {
      mValues[i].setupEndValue(mTarget);
      i += 1;
    }
  }
  
  public final void setupStartValues()
  {
    initAnimation();
    int j = mValues.length;
    int i = 0;
    while (i < j)
    {
      mValues[i].setupStartValue(mTarget);
      i += 1;
    }
  }
  
  public final void start()
  {
    super.start();
  }
  
  public final String toString()
  {
    String str1 = "ObjectAnimator@" + Integer.toHexString(hashCode()) + ", target " + mTarget;
    String str2 = str1;
    if (mValues != null)
    {
      int i = 0;
      for (;;)
      {
        str2 = str1;
        if (i >= mValues.length) {
          break;
        }
        str1 = str1 + "\n    " + mValues[i].toString();
        i += 1;
      }
    }
    return str2;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.ObjectAnimator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */