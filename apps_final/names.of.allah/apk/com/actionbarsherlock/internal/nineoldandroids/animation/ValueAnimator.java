package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class ValueAnimator
  extends Animator
{
  static final int ANIMATION_FRAME = 1;
  static final int ANIMATION_START = 0;
  private static final long DEFAULT_FRAME_DELAY = 10L;
  public static final int INFINITE = -1;
  public static final int RESTART = 1;
  public static final int REVERSE = 2;
  static final int RUNNING = 1;
  static final int SEEKED = 2;
  static final int STOPPED = 0;
  private static ThreadLocal<ValueAnimator.AnimationHandler> sAnimationHandler = new ThreadLocal();
  private static final ThreadLocal<ArrayList<ValueAnimator>> sAnimations = new ValueAnimator.1();
  private static final Interpolator sDefaultInterpolator = new AccelerateDecelerateInterpolator();
  private static final ThreadLocal<ArrayList<ValueAnimator>> sDelayedAnims;
  private static final ThreadLocal<ArrayList<ValueAnimator>> sEndingAnims;
  private static long sFrameDelay = 10L;
  private static final ThreadLocal<ArrayList<ValueAnimator>> sPendingAnimations = new ValueAnimator.2();
  private static final ThreadLocal<ArrayList<ValueAnimator>> sReadyAnims;
  private float mCurrentFraction = 0.0F;
  private int mCurrentIteration = 0;
  private long mDelayStartTime;
  private long mDuration = 300L;
  boolean mInitialized = false;
  private Interpolator mInterpolator = sDefaultInterpolator;
  private boolean mPlayingBackwards = false;
  int mPlayingState = 0;
  private int mRepeatCount = 0;
  private int mRepeatMode = 1;
  private boolean mRunning = false;
  long mSeekTime = -1L;
  private long mStartDelay = 0L;
  long mStartTime;
  private boolean mStarted = false;
  private boolean mStartedDelay = false;
  private ArrayList<ValueAnimator.AnimatorUpdateListener> mUpdateListeners = null;
  PropertyValuesHolder[] mValues;
  HashMap<String, PropertyValuesHolder> mValuesMap;
  
  static
  {
    sDelayedAnims = new ValueAnimator.3();
    sEndingAnims = new ValueAnimator.4();
    sReadyAnims = new ValueAnimator.5();
  }
  
  public static void clearAllAnimations()
  {
    ((ArrayList)sAnimations.get()).clear();
    ((ArrayList)sPendingAnimations.get()).clear();
    ((ArrayList)sDelayedAnims.get()).clear();
  }
  
  private boolean delayedAnimationFrame(long paramLong)
  {
    if (!mStartedDelay)
    {
      mStartedDelay = true;
      mDelayStartTime = paramLong;
    }
    long l;
    do
    {
      return false;
      l = paramLong - mDelayStartTime;
    } while (l <= mStartDelay);
    mStartTime = (paramLong - (l - mStartDelay));
    mPlayingState = 1;
    return true;
  }
  
  private void endAnimation()
  {
    ((ArrayList)sAnimations.get()).remove(this);
    ((ArrayList)sPendingAnimations.get()).remove(this);
    ((ArrayList)sDelayedAnims.get()).remove(this);
    mPlayingState = 0;
    if ((mRunning) && (mListeners != null))
    {
      ArrayList localArrayList = (ArrayList)mListeners.clone();
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        ((Animator.AnimatorListener)localArrayList.get(i)).onAnimationEnd(this);
        i += 1;
      }
    }
    mRunning = false;
    mStarted = false;
  }
  
  public static int getCurrentAnimationsCount()
  {
    return ((ArrayList)sAnimations.get()).size();
  }
  
  public static long getFrameDelay()
  {
    return sFrameDelay;
  }
  
  public static ValueAnimator ofFloat(float... paramVarArgs)
  {
    ValueAnimator localValueAnimator = new ValueAnimator();
    localValueAnimator.setFloatValues(paramVarArgs);
    return localValueAnimator;
  }
  
  public static ValueAnimator ofInt(int... paramVarArgs)
  {
    ValueAnimator localValueAnimator = new ValueAnimator();
    localValueAnimator.setIntValues(paramVarArgs);
    return localValueAnimator;
  }
  
  public static ValueAnimator ofObject(TypeEvaluator paramTypeEvaluator, Object... paramVarArgs)
  {
    ValueAnimator localValueAnimator = new ValueAnimator();
    localValueAnimator.setObjectValues(paramVarArgs);
    localValueAnimator.setEvaluator(paramTypeEvaluator);
    return localValueAnimator;
  }
  
  public static ValueAnimator ofPropertyValuesHolder(PropertyValuesHolder... paramVarArgs)
  {
    ValueAnimator localValueAnimator = new ValueAnimator();
    localValueAnimator.setValues(paramVarArgs);
    return localValueAnimator;
  }
  
  public static void setFrameDelay(long paramLong)
  {
    sFrameDelay = paramLong;
  }
  
  private void start(boolean paramBoolean)
  {
    if (Looper.myLooper() == null) {
      throw new AndroidRuntimeException("Animators may only be run on Looper threads");
    }
    mPlayingBackwards = paramBoolean;
    mCurrentIteration = 0;
    mPlayingState = 0;
    mStarted = true;
    mStartedDelay = false;
    ((ArrayList)sPendingAnimations.get()).add(this);
    if (mStartDelay == 0L)
    {
      setCurrentPlayTime(getCurrentPlayTime());
      mPlayingState = 0;
      mRunning = true;
      if (mListeners != null)
      {
        localObject = (ArrayList)mListeners.clone();
        int j = ((ArrayList)localObject).size();
        int i = 0;
        while (i < j)
        {
          ((Animator.AnimatorListener)((ArrayList)localObject).get(i)).onAnimationStart(this);
          i += 1;
        }
      }
    }
    ValueAnimator.AnimationHandler localAnimationHandler = (ValueAnimator.AnimationHandler)sAnimationHandler.get();
    Object localObject = localAnimationHandler;
    if (localAnimationHandler == null)
    {
      localObject = new ValueAnimator.AnimationHandler(null);
      sAnimationHandler.set(localObject);
    }
    ((ValueAnimator.AnimationHandler)localObject).sendEmptyMessage(0);
  }
  
  private void startAnimation()
  {
    initAnimation();
    ((ArrayList)sAnimations.get()).add(this);
    if ((mStartDelay > 0L) && (mListeners != null))
    {
      ArrayList localArrayList = (ArrayList)mListeners.clone();
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        ((Animator.AnimatorListener)localArrayList.get(i)).onAnimationStart(this);
        i += 1;
      }
    }
  }
  
  public void addUpdateListener(ValueAnimator.AnimatorUpdateListener paramAnimatorUpdateListener)
  {
    if (mUpdateListeners == null) {
      mUpdateListeners = new ArrayList();
    }
    mUpdateListeners.add(paramAnimatorUpdateListener);
  }
  
  void animateValue(float paramFloat)
  {
    paramFloat = mInterpolator.getInterpolation(paramFloat);
    mCurrentFraction = paramFloat;
    int j = mValues.length;
    int i = 0;
    while (i < j)
    {
      mValues[i].calculateValue(paramFloat);
      i += 1;
    }
    if (mUpdateListeners != null)
    {
      j = mUpdateListeners.size();
      i = 0;
      while (i < j)
      {
        ((ValueAnimator.AnimatorUpdateListener)mUpdateListeners.get(i)).onAnimationUpdate(this);
        i += 1;
      }
    }
  }
  
  boolean animationFrame(long paramLong)
  {
    boolean bool2 = false;
    if (mPlayingState == 0)
    {
      mPlayingState = 1;
      if (mSeekTime >= 0L) {
        break label58;
      }
      mStartTime = paramLong;
    }
    for (;;)
    {
      switch (mPlayingState)
      {
      default: 
        return false;
        label58:
        mStartTime = (paramLong - mSeekTime);
        mSeekTime = -1L;
      }
    }
    float f1;
    if (mDuration > 0L) {
      f1 = (float)(paramLong - mStartTime) / (float)mDuration;
    }
    boolean bool1;
    for (;;)
    {
      if (f1 >= 1.0F) {
        if ((mCurrentIteration < mRepeatCount) || (mRepeatCount == -1))
        {
          if (mListeners != null)
          {
            int j = mListeners.size();
            int i = 0;
            for (;;)
            {
              if (i < j)
              {
                ((Animator.AnimatorListener)mListeners.get(i)).onAnimationRepeat(this);
                i += 1;
                continue;
                f1 = 1.0F;
                break;
              }
            }
          }
          if (mRepeatMode == 2)
          {
            if (mPlayingBackwards)
            {
              bool1 = false;
              mPlayingBackwards = bool1;
            }
          }
          else
          {
            mCurrentIteration += (int)f1;
            f1 %= 1.0F;
            mStartTime += mDuration;
            bool1 = bool2;
          }
        }
      }
    }
    for (;;)
    {
      float f2 = f1;
      if (mPlayingBackwards) {
        f2 = 1.0F - f1;
      }
      animateValue(f2);
      return bool1;
      bool1 = true;
      break;
      f1 = Math.min(f1, 1.0F);
      bool1 = true;
      continue;
      bool1 = bool2;
    }
  }
  
  public void cancel()
  {
    if ((mPlayingState != 0) || (((ArrayList)sPendingAnimations.get()).contains(this)) || (((ArrayList)sDelayedAnims.get()).contains(this)))
    {
      if ((mRunning) && (mListeners != null))
      {
        Iterator localIterator = ((ArrayList)mListeners.clone()).iterator();
        while (localIterator.hasNext()) {
          ((Animator.AnimatorListener)localIterator.next()).onAnimationCancel(this);
        }
      }
      endAnimation();
    }
  }
  
  public ValueAnimator clone()
  {
    int j = 0;
    ValueAnimator localValueAnimator = (ValueAnimator)super.clone();
    int k;
    int i;
    if (mUpdateListeners != null)
    {
      localObject = mUpdateListeners;
      mUpdateListeners = new ArrayList();
      k = ((ArrayList)localObject).size();
      i = 0;
      while (i < k)
      {
        mUpdateListeners.add(((ArrayList)localObject).get(i));
        i += 1;
      }
    }
    mSeekTime = -1L;
    mPlayingBackwards = false;
    mCurrentIteration = 0;
    mInitialized = false;
    mPlayingState = 0;
    mStartedDelay = false;
    Object localObject = mValues;
    if (localObject != null)
    {
      k = localObject.length;
      mValues = new PropertyValuesHolder[k];
      mValuesMap = new HashMap(k);
      i = j;
      while (i < k)
      {
        PropertyValuesHolder localPropertyValuesHolder = localObject[i].clone();
        mValues[i] = localPropertyValuesHolder;
        mValuesMap.put(localPropertyValuesHolder.getPropertyName(), localPropertyValuesHolder);
        i += 1;
      }
    }
    return localValueAnimator;
  }
  
  public void end()
  {
    if ((!((ArrayList)sAnimations.get()).contains(this)) && (!((ArrayList)sPendingAnimations.get()).contains(this)))
    {
      mStartedDelay = false;
      startAnimation();
      if ((mRepeatCount <= 0) || ((mRepeatCount & 0x1) != 1)) {
        break label82;
      }
      animateValue(0.0F);
    }
    for (;;)
    {
      endAnimation();
      return;
      if (mInitialized) {
        break;
      }
      initAnimation();
      break;
      label82:
      animateValue(1.0F);
    }
  }
  
  public float getAnimatedFraction()
  {
    return mCurrentFraction;
  }
  
  public Object getAnimatedValue()
  {
    if ((mValues != null) && (mValues.length > 0)) {
      return mValues[0].getAnimatedValue();
    }
    return null;
  }
  
  public Object getAnimatedValue(String paramString)
  {
    paramString = (PropertyValuesHolder)mValuesMap.get(paramString);
    if (paramString != null) {
      return paramString.getAnimatedValue();
    }
    return null;
  }
  
  public long getCurrentPlayTime()
  {
    if ((!mInitialized) || (mPlayingState == 0)) {
      return 0L;
    }
    return AnimationUtils.currentAnimationTimeMillis() - mStartTime;
  }
  
  public long getDuration()
  {
    return mDuration;
  }
  
  public Interpolator getInterpolator()
  {
    return mInterpolator;
  }
  
  public int getRepeatCount()
  {
    return mRepeatCount;
  }
  
  public int getRepeatMode()
  {
    return mRepeatMode;
  }
  
  public long getStartDelay()
  {
    return mStartDelay;
  }
  
  public PropertyValuesHolder[] getValues()
  {
    return mValues;
  }
  
  void initAnimation()
  {
    if (!mInitialized)
    {
      int j = mValues.length;
      int i = 0;
      while (i < j)
      {
        mValues[i].init();
        i += 1;
      }
      mInitialized = true;
    }
  }
  
  public boolean isRunning()
  {
    return (mPlayingState == 1) || (mRunning);
  }
  
  public boolean isStarted()
  {
    return mStarted;
  }
  
  public void removeAllUpdateListeners()
  {
    if (mUpdateListeners == null) {
      return;
    }
    mUpdateListeners.clear();
    mUpdateListeners = null;
  }
  
  public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener paramAnimatorUpdateListener)
  {
    if (mUpdateListeners == null) {}
    do
    {
      return;
      mUpdateListeners.remove(paramAnimatorUpdateListener);
    } while (mUpdateListeners.size() != 0);
    mUpdateListeners = null;
  }
  
  public void reverse()
  {
    if (!mPlayingBackwards) {}
    for (boolean bool = true;; bool = false)
    {
      mPlayingBackwards = bool;
      if (mPlayingState != 1) {
        break;
      }
      long l1 = AnimationUtils.currentAnimationTimeMillis();
      long l2 = mStartTime;
      mStartTime = (l1 - (mDuration - (l1 - l2)));
      return;
    }
    start(true);
  }
  
  public void setCurrentPlayTime(long paramLong)
  {
    initAnimation();
    long l = AnimationUtils.currentAnimationTimeMillis();
    if (mPlayingState != 1)
    {
      mSeekTime = paramLong;
      mPlayingState = 2;
    }
    mStartTime = (l - paramLong);
    animationFrame(l);
  }
  
  public ValueAnimator setDuration(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("Animators cannot have negative duration: " + paramLong);
    }
    mDuration = paramLong;
    return this;
  }
  
  public void setEvaluator(TypeEvaluator paramTypeEvaluator)
  {
    if ((paramTypeEvaluator != null) && (mValues != null) && (mValues.length > 0)) {
      mValues[0].setEvaluator(paramTypeEvaluator);
    }
  }
  
  public void setFloatValues(float... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length == 0)) {
      return;
    }
    if ((mValues == null) || (mValues.length == 0)) {
      setValues(new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat("", paramVarArgs) });
    }
    for (;;)
    {
      mInitialized = false;
      return;
      mValues[0].setFloatValues(paramVarArgs);
    }
  }
  
  public void setIntValues(int... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length == 0)) {
      return;
    }
    if ((mValues == null) || (mValues.length == 0)) {
      setValues(new PropertyValuesHolder[] { PropertyValuesHolder.ofInt("", paramVarArgs) });
    }
    for (;;)
    {
      mInitialized = false;
      return;
      mValues[0].setIntValues(paramVarArgs);
    }
  }
  
  public void setInterpolator(Interpolator paramInterpolator)
  {
    if (paramInterpolator != null)
    {
      mInterpolator = paramInterpolator;
      return;
    }
    mInterpolator = new LinearInterpolator();
  }
  
  public void setObjectValues(Object... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length == 0)) {
      return;
    }
    if ((mValues == null) || (mValues.length == 0)) {
      setValues(new PropertyValuesHolder[] { PropertyValuesHolder.ofObject("", null, paramVarArgs) });
    }
    for (;;)
    {
      mInitialized = false;
      return;
      mValues[0].setObjectValues(paramVarArgs);
    }
  }
  
  public void setRepeatCount(int paramInt)
  {
    mRepeatCount = paramInt;
  }
  
  public void setRepeatMode(int paramInt)
  {
    mRepeatMode = paramInt;
  }
  
  public void setStartDelay(long paramLong)
  {
    mStartDelay = paramLong;
  }
  
  public void setValues(PropertyValuesHolder... paramVarArgs)
  {
    int j = paramVarArgs.length;
    mValues = paramVarArgs;
    mValuesMap = new HashMap(j);
    int i = 0;
    while (i < j)
    {
      PropertyValuesHolder localPropertyValuesHolder = paramVarArgs[i];
      mValuesMap.put(localPropertyValuesHolder.getPropertyName(), localPropertyValuesHolder);
      i += 1;
    }
    mInitialized = false;
  }
  
  public void start()
  {
    start(false);
  }
  
  public String toString()
  {
    String str1 = "ValueAnimator@" + Integer.toHexString(hashCode());
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
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.ValueAnimator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */