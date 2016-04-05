package com.actionbarsherlock.internal.nineoldandroids.animation;

import java.util.ArrayList;

class AnimatorSet$DependencyListener
  implements Animator.AnimatorListener
{
  private AnimatorSet mAnimatorSet;
  private AnimatorSet.Node mNode;
  private int mRule;
  
  public AnimatorSet$DependencyListener(AnimatorSet paramAnimatorSet, AnimatorSet.Node paramNode, int paramInt)
  {
    mAnimatorSet = paramAnimatorSet;
    mNode = paramNode;
    mRule = paramInt;
  }
  
  private void startIfReady(Animator paramAnimator)
  {
    if (mAnimatorSet.mTerminated) {
      return;
    }
    int j = mNode.tmpDependencies.size();
    int i = 0;
    label25:
    AnimatorSet.Dependency localDependency;
    if (i < j)
    {
      localDependency = (AnimatorSet.Dependency)mNode.tmpDependencies.get(i);
      if ((rule == mRule) && (node.animation == paramAnimator)) {
        paramAnimator.removeListener(this);
      }
    }
    for (paramAnimator = localDependency;; paramAnimator = null)
    {
      mNode.tmpDependencies.remove(paramAnimator);
      if (mNode.tmpDependencies.size() != 0) {
        break;
      }
      mNode.animation.start();
      AnimatorSet.access$000(mAnimatorSet).add(mNode.animation);
      return;
      i += 1;
      break label25;
    }
  }
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (mRule == 1) {
      startIfReady(paramAnimator);
    }
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator)
  {
    if (mRule == 0) {
      startIfReady(paramAnimator);
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.DependencyListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */