package com.adsdk.sdk.banner;

import com.adsdk.sdk.AdListener;
import com.adsdk.sdk.Log;

class BannerAdView$4
  implements Runnable
{
  BannerAdView$4(BannerAdView paramBannerAdView) {}
  
  public void run()
  {
    if (BannerAdView.access$5(this$0) != null)
    {
      Log.d("ADSDK", "notify bannerListener of ad clicked: " + BannerAdView.access$5(this$0).getClass().getName());
      BannerAdView.access$5(this$0).adClicked();
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.banner.BannerAdView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */