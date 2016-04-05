package com.actionbarsherlock.internal.widget;

import com.actionbarsherlock.internal.nineoldandroids.animation.Animator;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator.AnimatorListener;

public class ScrollingTabContainerView$VisibilityAnimListener
  implements Animator.AnimatorListener
{
  private boolean mCanceled = false;
  private int mFinalVisibility;
  
  protected ScrollingTabContainerView$VisibilityAnimListener(ScrollingTabContainerView paramScrollingTabContainerView) {}
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    mCanceled = true;
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (mCanceled) {
      return;
    }
    this$0.mVisibilityAnim = null;
    this$0.setVisibility(mFinalVisibility);
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator)
  {
    this$0.setVisibility(0);
    this$0.mVisibilityAnim = paramAnimator;
    mCanceled = false;
  }
  
  public VisibilityAnimListener withFinalVisibility(int paramInt)
  {
    mFinalVisibility = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.ScrollingTabContainerView.VisibilityAnimListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */