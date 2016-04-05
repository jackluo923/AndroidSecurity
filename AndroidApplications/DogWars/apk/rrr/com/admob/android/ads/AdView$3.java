package com.admob.android.ads;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class AdView$3
  implements Animation.AnimationListener
{
  final AdView this$0;
  
  AdView$3(AdView paramAdView, AdContainer paramAdContainer) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    AdView localAdView1 = this$0;
    AdView.SwapViews localSwapViews = new com/admob/android/ads/AdView$SwapViews;
    AdView localAdView2 = this$0;
    AdContainer localAdContainer = val$newAd;
    localSwapViews.<init>(localAdView2, localAdContainer);
    localAdView1.post(localSwapViews);
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.admob.android.ads.AdView.3
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */