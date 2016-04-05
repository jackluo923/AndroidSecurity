package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Arrays;

class KeyframeSet
{
  TypeEvaluator mEvaluator;
  Keyframe mFirstKeyframe;
  Interpolator mInterpolator;
  ArrayList<Keyframe> mKeyframes;
  Keyframe mLastKeyframe;
  int mNumKeyframes;
  
  public KeyframeSet(Keyframe... paramVarArgs)
  {
    mNumKeyframes = paramVarArgs.length;
    mKeyframes = new ArrayList();
    mKeyframes.addAll(Arrays.asList(paramVarArgs));
    mFirstKeyframe = ((Keyframe)mKeyframes.get(0));
    mLastKeyframe = ((Keyframe)mKeyframes.get(mNumKeyframes - 1));
    mInterpolator = mLastKeyframe.getInterpolator();
  }
  
  public static KeyframeSet ofFloat(float... paramVarArgs)
  {
    int i = 1;
    int j = paramVarArgs.length;
    Keyframe.FloatKeyframe[] arrayOfFloatKeyframe = new Keyframe.FloatKeyframe[Math.max(j, 2)];
    if (j == 1)
    {
      arrayOfFloatKeyframe[0] = ((Keyframe.FloatKeyframe)Keyframe.ofFloat(0.0F));
      arrayOfFloatKeyframe[1] = ((Keyframe.FloatKeyframe)Keyframe.ofFloat(1.0F, paramVarArgs[0]));
    }
    for (;;)
    {
      return new FloatKeyframeSet(arrayOfFloatKeyframe);
      arrayOfFloatKeyframe[0] = ((Keyframe.FloatKeyframe)Keyframe.ofFloat(0.0F, paramVarArgs[0]));
      while (i < j)
      {
        arrayOfFloatKeyframe[i] = ((Keyframe.FloatKeyframe)Keyframe.ofFloat(i / (j - 1), paramVarArgs[i]));
        i += 1;
      }
    }
  }
  
  public static KeyframeSet ofInt(int... paramVarArgs)
  {
    int i = 1;
    int j = paramVarArgs.length;
    Keyframe.IntKeyframe[] arrayOfIntKeyframe = new Keyframe.IntKeyframe[Math.max(j, 2)];
    if (j == 1)
    {
      arrayOfIntKeyframe[0] = ((Keyframe.IntKeyframe)Keyframe.ofInt(0.0F));
      arrayOfIntKeyframe[1] = ((Keyframe.IntKeyframe)Keyframe.ofInt(1.0F, paramVarArgs[0]));
    }
    for (;;)
    {
      return new IntKeyframeSet(arrayOfIntKeyframe);
      arrayOfIntKeyframe[0] = ((Keyframe.IntKeyframe)Keyframe.ofInt(0.0F, paramVarArgs[0]));
      while (i < j)
      {
        arrayOfIntKeyframe[i] = ((Keyframe.IntKeyframe)Keyframe.ofInt(i / (j - 1), paramVarArgs[i]));
        i += 1;
      }
    }
  }
  
  public static KeyframeSet ofKeyframe(Keyframe... paramVarArgs)
  {
    int n = 0;
    int i1 = paramVarArgs.length;
    int i = 0;
    int m = 0;
    int k = 0;
    int j = 0;
    if (i < i1)
    {
      if ((paramVarArgs[i] instanceof Keyframe.FloatKeyframe)) {
        j = 1;
      }
      for (;;)
      {
        i += 1;
        break;
        if ((paramVarArgs[i] instanceof Keyframe.IntKeyframe)) {
          k = 1;
        } else {
          m = 1;
        }
      }
    }
    Object localObject;
    if ((j != 0) && (k == 0) && (m == 0))
    {
      localObject = new Keyframe.FloatKeyframe[i1];
      i = n;
      while (i < i1)
      {
        localObject[i] = ((Keyframe.FloatKeyframe)paramVarArgs[i]);
        i += 1;
      }
      return new FloatKeyframeSet((Keyframe.FloatKeyframe[])localObject);
    }
    if ((k != 0) && (j == 0) && (m == 0))
    {
      localObject = new Keyframe.IntKeyframe[i1];
      i = 0;
      while (i < i1)
      {
        localObject[i] = ((Keyframe.IntKeyframe)paramVarArgs[i]);
        i += 1;
      }
      return new IntKeyframeSet((Keyframe.IntKeyframe[])localObject);
    }
    return new KeyframeSet(paramVarArgs);
  }
  
  public static KeyframeSet ofObject(Object... paramVarArgs)
  {
    int i = 1;
    int j = paramVarArgs.length;
    Keyframe.ObjectKeyframe[] arrayOfObjectKeyframe = new Keyframe.ObjectKeyframe[Math.max(j, 2)];
    if (j == 1)
    {
      arrayOfObjectKeyframe[0] = ((Keyframe.ObjectKeyframe)Keyframe.ofObject(0.0F));
      arrayOfObjectKeyframe[1] = ((Keyframe.ObjectKeyframe)Keyframe.ofObject(1.0F, paramVarArgs[0]));
    }
    for (;;)
    {
      return new KeyframeSet(arrayOfObjectKeyframe);
      arrayOfObjectKeyframe[0] = ((Keyframe.ObjectKeyframe)Keyframe.ofObject(0.0F, paramVarArgs[0]));
      while (i < j)
      {
        arrayOfObjectKeyframe[i] = ((Keyframe.ObjectKeyframe)Keyframe.ofObject(i / (j - 1), paramVarArgs[i]));
        i += 1;
      }
    }
  }
  
  public KeyframeSet clone()
  {
    ArrayList localArrayList = mKeyframes;
    int j = mKeyframes.size();
    Keyframe[] arrayOfKeyframe = new Keyframe[j];
    int i = 0;
    while (i < j)
    {
      arrayOfKeyframe[i] = ((Keyframe)localArrayList.get(i)).clone();
      i += 1;
    }
    return new KeyframeSet(arrayOfKeyframe);
  }
  
  public Object getValue(float paramFloat)
  {
    float f;
    if (mNumKeyframes == 2)
    {
      f = paramFloat;
      if (mInterpolator != null) {
        f = mInterpolator.getInterpolation(paramFloat);
      }
      return mEvaluator.evaluate(f, mFirstKeyframe.getValue(), mLastKeyframe.getValue());
    }
    Object localObject2;
    if (paramFloat <= 0.0F)
    {
      localObject1 = (Keyframe)mKeyframes.get(1);
      localObject2 = ((Keyframe)localObject1).getInterpolator();
      f = paramFloat;
      if (localObject2 != null) {
        f = ((Interpolator)localObject2).getInterpolation(paramFloat);
      }
      paramFloat = mFirstKeyframe.getFraction();
      paramFloat = (f - paramFloat) / (((Keyframe)localObject1).getFraction() - paramFloat);
      return mEvaluator.evaluate(paramFloat, mFirstKeyframe.getValue(), ((Keyframe)localObject1).getValue());
    }
    if (paramFloat >= 1.0F)
    {
      localObject1 = (Keyframe)mKeyframes.get(mNumKeyframes - 2);
      localObject2 = mLastKeyframe.getInterpolator();
      f = paramFloat;
      if (localObject2 != null) {
        f = ((Interpolator)localObject2).getInterpolation(paramFloat);
      }
      paramFloat = ((Keyframe)localObject1).getFraction();
      paramFloat = (f - paramFloat) / (mLastKeyframe.getFraction() - paramFloat);
      return mEvaluator.evaluate(paramFloat, ((Keyframe)localObject1).getValue(), mLastKeyframe.getValue());
    }
    Object localObject1 = mFirstKeyframe;
    int i = 1;
    while (i < mNumKeyframes)
    {
      localObject2 = (Keyframe)mKeyframes.get(i);
      if (paramFloat < ((Keyframe)localObject2).getFraction())
      {
        Interpolator localInterpolator = ((Keyframe)localObject2).getInterpolator();
        f = paramFloat;
        if (localInterpolator != null) {
          f = localInterpolator.getInterpolation(paramFloat);
        }
        paramFloat = ((Keyframe)localObject1).getFraction();
        paramFloat = (f - paramFloat) / (((Keyframe)localObject2).getFraction() - paramFloat);
        return mEvaluator.evaluate(paramFloat, ((Keyframe)localObject1).getValue(), ((Keyframe)localObject2).getValue());
      }
      i += 1;
      localObject1 = localObject2;
    }
    return mLastKeyframe.getValue();
  }
  
  public void setEvaluator(TypeEvaluator paramTypeEvaluator)
  {
    mEvaluator = paramTypeEvaluator;
  }
  
  public String toString()
  {
    String str = " ";
    int i = 0;
    while (i < mNumKeyframes)
    {
      str = str + ((Keyframe)mKeyframes.get(i)).getValue() + "  ";
      i += 1;
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.KeyframeSet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */