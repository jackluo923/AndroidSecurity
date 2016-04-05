package com.actionbarsherlock.internal.nineoldandroids.animation;

import java.util.ArrayList;
import java.util.HashMap;

class AnimatorSet$AnimatorSetListener
  implements Animator.AnimatorListener
{
  private AnimatorSet mAnimatorSet;
  
  AnimatorSet$AnimatorSetListener(AnimatorSet paramAnimatorSet1, AnimatorSet paramAnimatorSet2)
  {
    mAnimatorSet = paramAnimatorSet2;
  }
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    if ((!this$0.mTerminated) && (AnimatorSet.access$000(this$0).size() == 0) && (this$0.mListeners != null))
    {
      int j = this$0.mListeners.size();
      int i = 0;
      while (i < j)
      {
        ((Animator.AnimatorListener)this$0.mListeners.get(i)).onAnimationCancel(mAnimatorSet);
        i += 1;
      }
    }
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    paramAnimator.removeListener(this);
    AnimatorSet.access$000(this$0).remove(paramAnimator);
    access$100mAnimatorSet).get(paramAnimator)).done = true;
    int j;
    if (!this$0.mTerminated)
    {
      paramAnimator = AnimatorSet.access$200(mAnimatorSet);
      j = paramAnimator.size();
      i = 0;
      if (i >= j) {
        break label162;
      }
      if (getdone) {}
    }
    label162:
    for (int i = 0;; i = 1)
    {
      if (i != 0)
      {
        if (this$0.mListeners != null)
        {
          paramAnimator = (ArrayList)this$0.mListeners.clone();
          j = paramAnimator.size();
          i = 0;
          for (;;)
          {
            if (i < j)
            {
              ((Animator.AnimatorListener)paramAnimator.get(i)).onAnimationEnd(mAnimatorSet);
              i += 1;
              continue;
              i += 1;
              break;
            }
          }
        }
        AnimatorSet.access$302(mAnimatorSet, false);
      }
      return;
    }
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.AnimatorSetListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */