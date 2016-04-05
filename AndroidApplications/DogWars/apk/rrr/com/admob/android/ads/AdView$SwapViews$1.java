package com.admob.android.ads;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class AdView$SwapViews$1
  implements Animation.AnimationListener
{
  final AdView.SwapViews this$1;
  
  AdView$SwapViews$1(AdView.SwapViews paramSwapViews) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    Object localObject1 = this$1;
    localObject1 = AdView.SwapViews.access$1000((AdView.SwapViews)localObject1);
    if (localObject1 != null)
    {
      localObject1 = this$1;
      localObject1 = this$0;
      localObject2 = this$1;
      localObject2 = AdView.SwapViews.access$1000((AdView.SwapViews)localObject2);
      ((AdView)localObject1).removeView((View)localObject2);
      localObject1 = this$1;
      localObject1 = AdView.SwapViews.access$1000((AdView.SwapViews)localObject1);
      ((AdContainer)localObject1).recycleBitmaps();
    }
    localObject1 = this$1;
    localObject1 = this$0;
    Object localObject2 = this$1;
    localObject2 = AdView.SwapViews.access$1100((AdView.SwapViews)localObject2);
    AdView.access$202((AdView)localObject1, (AdContainer)localObject2);
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.admob.android.ads.AdView.SwapViews.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */