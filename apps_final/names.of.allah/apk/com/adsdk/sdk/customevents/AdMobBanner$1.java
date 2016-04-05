package com.adsdk.sdk.customevents;

import com.google.android.gms.ads.AdListener;

class AdMobBanner$1
  extends AdListener
{
  AdMobBanner$1(AdMobBanner paramAdMobBanner) {}
  
  public void onAdClosed()
  {
    if (this$0.listener != null) {
      this$0.listener.onBannerClosed();
    }
  }
  
  public void onAdFailedToLoad(int paramInt)
  {
    if (this$0.listener != null) {
      this$0.listener.onBannerFailed();
    }
  }
  
  public void onAdLoaded()
  {
    this$0.reportImpression();
    if (this$0.listener != null) {
      this$0.listener.onBannerLoaded(AdMobBanner.access$0(this$0));
    }
  }
  
  public void onAdOpened()
  {
    if (this$0.listener != null) {
      this$0.listener.onBannerExpanded();
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.customevents.AdMobBanner.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */