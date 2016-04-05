package com.actionbarsherlock.internal.app;

import com.actionbarsherlock.internal.nineoldandroids.animation.Animator;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorListenerAdapter;
import com.actionbarsherlock.internal.nineoldandroids.widget.NineFrameLayout;
import com.actionbarsherlock.internal.widget.ActionBarContainer;

class ActionBarImpl$1
  extends AnimatorListenerAdapter
{
  ActionBarImpl$1(ActionBarImpl paramActionBarImpl) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (ActionBarImpl.access$000(this$0) != null)
    {
      ActionBarImpl.access$000(this$0).setTranslationY(0.0F);
      ActionBarImpl.access$100(this$0).setTranslationY(0.0F);
    }
    if ((ActionBarImpl.access$200(this$0) != null) && (ActionBarImpl.access$300(this$0) == 1)) {
      ActionBarImpl.access$200(this$0).setVisibility(8);
    }
    ActionBarImpl.access$100(this$0).setVisibility(8);
    ActionBarImpl.access$100(this$0).setTransitioning(false);
    ActionBarImpl.access$402(this$0, null);
    this$0.completeDeferredDestroyActionMode();
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.app.ActionBarImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */