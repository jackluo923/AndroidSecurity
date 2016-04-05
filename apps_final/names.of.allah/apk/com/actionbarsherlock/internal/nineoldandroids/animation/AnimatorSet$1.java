package com.actionbarsherlock.internal.nineoldandroids.animation;

import java.util.ArrayList;

class AnimatorSet$1
  extends AnimatorListenerAdapter
{
  boolean canceled = false;
  
  AnimatorSet$1(AnimatorSet paramAnimatorSet, ArrayList paramArrayList) {}
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    canceled = true;
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (!canceled)
    {
      int j = val$nodesToStart.size();
      int i = 0;
      while (i < j)
      {
        paramAnimator = (AnimatorSet.Node)val$nodesToStart.get(i);
        animation.start();
        AnimatorSet.access$000(this$0).add(animation);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */