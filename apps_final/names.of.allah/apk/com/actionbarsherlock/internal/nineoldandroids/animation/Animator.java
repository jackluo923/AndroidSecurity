package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.view.animation.Interpolator;
import java.util.ArrayList;

public abstract class Animator
  implements Cloneable
{
  ArrayList<Animator.AnimatorListener> mListeners = null;
  
  public void addListener(Animator.AnimatorListener paramAnimatorListener)
  {
    if (mListeners == null) {
      mListeners = new ArrayList();
    }
    mListeners.add(paramAnimatorListener);
  }
  
  public void cancel() {}
  
  public Animator clone()
  {
    try
    {
      Animator localAnimator = (Animator)super.clone();
      if (mListeners != null)
      {
        ArrayList localArrayList = mListeners;
        mListeners = new ArrayList();
        int j = localArrayList.size();
        int i = 0;
        while (i < j)
        {
          mListeners.add(localArrayList.get(i));
          i += 1;
        }
      }
      return localCloneNotSupportedException;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError();
    }
  }
  
  public void end() {}
  
  public abstract long getDuration();
  
  public ArrayList<Animator.AnimatorListener> getListeners()
  {
    return mListeners;
  }
  
  public abstract long getStartDelay();
  
  public abstract boolean isRunning();
  
  public boolean isStarted()
  {
    return isRunning();
  }
  
  public void removeAllListeners()
  {
    if (mListeners != null)
    {
      mListeners.clear();
      mListeners = null;
    }
  }
  
  public void removeListener(Animator.AnimatorListener paramAnimatorListener)
  {
    if (mListeners == null) {}
    do
    {
      return;
      mListeners.remove(paramAnimatorListener);
    } while (mListeners.size() != 0);
    mListeners = null;
  }
  
  public abstract Animator setDuration(long paramLong);
  
  public abstract void setInterpolator(Interpolator paramInterpolator);
  
  public abstract void setStartDelay(long paramLong);
  
  public void setTarget(Object paramObject) {}
  
  public void setupEndValues() {}
  
  public void setupStartValues() {}
  
  public void start() {}
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.Animator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */