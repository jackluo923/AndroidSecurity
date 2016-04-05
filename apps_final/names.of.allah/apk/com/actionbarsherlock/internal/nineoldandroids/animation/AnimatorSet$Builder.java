package com.actionbarsherlock.internal.nineoldandroids.animation;

import java.util.ArrayList;
import java.util.HashMap;

public class AnimatorSet$Builder
{
  private AnimatorSet.Node mCurrentNode;
  
  AnimatorSet$Builder(AnimatorSet paramAnimatorSet, Animator paramAnimator)
  {
    mCurrentNode = ((AnimatorSet.Node)AnimatorSet.access$100(paramAnimatorSet).get(paramAnimator));
    if (mCurrentNode == null)
    {
      mCurrentNode = new AnimatorSet.Node(paramAnimator);
      AnimatorSet.access$100(paramAnimatorSet).put(paramAnimator, mCurrentNode);
      AnimatorSet.access$400(paramAnimatorSet).add(mCurrentNode);
    }
  }
  
  public Builder after(long paramLong)
  {
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    localValueAnimator.setDuration(paramLong);
    after(localValueAnimator);
    return this;
  }
  
  public Builder after(Animator paramAnimator)
  {
    AnimatorSet.Node localNode2 = (AnimatorSet.Node)AnimatorSet.access$100(this$0).get(paramAnimator);
    AnimatorSet.Node localNode1 = localNode2;
    if (localNode2 == null)
    {
      localNode1 = new AnimatorSet.Node(paramAnimator);
      AnimatorSet.access$100(this$0).put(paramAnimator, localNode1);
      AnimatorSet.access$400(this$0).add(localNode1);
    }
    paramAnimator = new AnimatorSet.Dependency(localNode1, 1);
    mCurrentNode.addDependency(paramAnimator);
    return this;
  }
  
  public Builder before(Animator paramAnimator)
  {
    AnimatorSet.Node localNode2 = (AnimatorSet.Node)AnimatorSet.access$100(this$0).get(paramAnimator);
    AnimatorSet.Node localNode1 = localNode2;
    if (localNode2 == null)
    {
      localNode1 = new AnimatorSet.Node(paramAnimator);
      AnimatorSet.access$100(this$0).put(paramAnimator, localNode1);
      AnimatorSet.access$400(this$0).add(localNode1);
    }
    localNode1.addDependency(new AnimatorSet.Dependency(mCurrentNode, 1));
    return this;
  }
  
  public Builder with(Animator paramAnimator)
  {
    AnimatorSet.Node localNode2 = (AnimatorSet.Node)AnimatorSet.access$100(this$0).get(paramAnimator);
    AnimatorSet.Node localNode1 = localNode2;
    if (localNode2 == null)
    {
      localNode1 = new AnimatorSet.Node(paramAnimator);
      AnimatorSet.access$100(this$0).put(paramAnimator, localNode1);
      AnimatorSet.access$400(this$0).add(localNode1);
    }
    localNode1.addDependency(new AnimatorSet.Dependency(mCurrentNode, 0));
    return this;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */