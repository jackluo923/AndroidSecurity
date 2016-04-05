package com.admob.android.ads;

import android.view.animation.Animation.AnimationListener;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;

final class AdView$SwapViews
  implements Runnable
{
  private AdContainer newAd;
  private AdContainer oldAd;
  final AdView this$0;
  
  public AdView$SwapViews(AdView paramAdView, AdContainer paramAdContainer)
  {
    newAd = paramAdContainer;
  }
  
  public void run()
  {
    int n = 0;
    float f7 = 2.0F;
    Object localObject1 = this$0;
    localObject1 = AdView.access$200((AdView)localObject1);
    oldAd = ((AdContainer)localObject1);
    localObject1 = oldAd;
    if (localObject1 != null)
    {
      localObject1 = oldAd;
      int k = 8;
      ((AdContainer)localObject1).setVisibility(k);
    }
    localObject1 = newAd;
    ((AdContainer)localObject1).setVisibility(n);
    localObject1 = this$0;
    int i = ((AdView)localObject1).getWidth();
    float f1 = i;
    float f4 = f1 / f7;
    AdView localAdView1 = this$0;
    int j = localAdView1.getHeight();
    float f2 = j;
    float f5 = f2 / f7;
    f2 = -0.4F;
    AdView localAdView2 = this$0;
    int m = localAdView2.getWidth();
    float f3 = m;
    float f6 = f2 * f3;
    Rotate3dAnimation localRotate3dAnimation = new com/admob/android/ads/Rotate3dAnimation;
    f2 = 90.0F;
    f3 = 0.0F;
    localRotate3dAnimation.<init>(f2, f3, f4, f5, f6, n);
    long l = 700L;
    localRotate3dAnimation.setDuration(l);
    boolean bool = true;
    localRotate3dAnimation.setFillAfter(bool);
    Object localObject2 = new android/view/animation/DecelerateInterpolator;
    ((DecelerateInterpolator)localObject2).<init>();
    localRotate3dAnimation.setInterpolator((Interpolator)localObject2);
    localObject2 = new com/admob/android/ads/AdView$SwapViews$1;
    ((AdView.SwapViews.1)localObject2).<init>(this);
    localRotate3dAnimation.setAnimationListener((Animation.AnimationListener)localObject2);
    localObject2 = this$0;
    ((AdView)localObject2).startAnimation(localRotate3dAnimation);
  }
}

/* Location:
 * Qualified Name:     com.admob.android.ads.AdView.SwapViews
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */