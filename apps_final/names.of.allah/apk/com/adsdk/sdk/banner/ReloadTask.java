package com.adsdk.sdk.banner;

import java.util.TimerTask;

class ReloadTask
  extends TimerTask
{
  private final AdView mWebView;
  
  public ReloadTask(AdView paramAdView)
  {
    mWebView = paramAdView;
  }
  
  public void run()
  {
    mWebView.loadNextAd();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.banner.ReloadTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */