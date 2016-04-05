package com.adsdk.sdk.customevents;

import android.view.View;

public abstract interface CustomEventBanner$CustomEventBannerListener
{
  public abstract void onBannerClosed();
  
  public abstract void onBannerExpanded();
  
  public abstract void onBannerFailed();
  
  public abstract void onBannerLoaded(View paramView);
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.customevents.CustomEventBanner.CustomEventBannerListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */