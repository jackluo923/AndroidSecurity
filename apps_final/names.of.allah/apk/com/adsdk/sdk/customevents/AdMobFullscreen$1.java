package com.adsdk.sdk.customevents;

import com.google.android.gms.ads.AdListener;

class AdMobFullscreen$1
  extends AdListener
{
  AdMobFullscreen$1(AdMobFullscreen paramAdMobFullscreen) {}
  
  public void onAdClosed()
  {
    if (this$0.listener != null) {
      this$0.listener.onFullscreenClosed();
    }
  }
  
  public void onAdFailedToLoad(int paramInt)
  {
    if (this$0.listener != null) {
      this$0.listener.onFullscreenFailed();
    }
  }
  
  public void onAdLeftApplication()
  {
    if (this$0.listener != null) {
      this$0.listener.onFullscreenLeftApplication();
    }
  }
  
  public void onAdLoaded()
  {
    if (this$0.listener != null) {
      this$0.listener.onFullscreenLoaded(this$0);
    }
  }
  
  public void onAdOpened()
  {
    if (this$0.listener != null)
    {
      this$0.reportImpression();
      this$0.listener.onFullscreenOpened();
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.customevents.AdMobFullscreen.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */