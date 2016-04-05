package com.actionbarsherlock.internal.widget;

import com.actionbarsherlock.internal.nineoldandroids.animation.Animator;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator.AnimatorListener;
import com.actionbarsherlock.internal.view.menu.ActionMenuView;

public class AbsActionBarView$VisibilityAnimListener
  implements Animator.AnimatorListener
{
  private boolean mCanceled = false;
  int mFinalVisibility;
  
  protected AbsActionBarView$VisibilityAnimListener(AbsActionBarView paramAbsActionBarView) {}
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    mCanceled = true;
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (mCanceled) {}
    do
    {
      return;
      this$0.mVisibilityAnim = null;
      this$0.setVisibility(mFinalVisibility);
    } while ((this$0.mSplitView == null) || (this$0.mMenuView == null));
    this$0.mMenuView.setVisibility(mFinalVisibility);
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
 * Qualified Name:     com.actionbarsherlock.internal.widget.AbsActionBarView.VisibilityAnimListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */