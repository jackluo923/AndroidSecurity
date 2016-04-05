package com.appyet.c;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ProgressBar;

final class am
  implements Animation.AnimationListener
{
  private ProgressBar b;
  
  public am(r paramr, ProgressBar paramProgressBar)
  {
    b = paramProgressBar;
  }
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    b.setVisibility(8);
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.appyet.c.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */