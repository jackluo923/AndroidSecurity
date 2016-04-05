package com.inmobi.re.container.mraidimpl;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class MRAIDInterstitialController$c
  implements Animation.AnimationListener
{
  MRAIDInterstitialController$c(MRAIDInterstitialController paramMRAIDInterstitialController) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    a.dismissWebview();
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.mraidimpl.MRAIDInterstitialController.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */