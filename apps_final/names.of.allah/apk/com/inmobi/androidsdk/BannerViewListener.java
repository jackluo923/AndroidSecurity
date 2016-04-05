package com.inmobi.androidsdk;

import java.util.Map;

public abstract interface BannerViewListener
{
  public abstract void onAdRequestCompleted(BannerView paramBannerView);
  
  public abstract void onAdRequestFailed(BannerView paramBannerView, AdRequest.ErrorCode paramErrorCode);
  
  public abstract void onBannerInteraction(BannerView paramBannerView, Map<String, String> paramMap);
  
  public abstract void onDismissAdScreen(BannerView paramBannerView);
  
  public abstract void onLeaveApplication(BannerView paramBannerView);
  
  public abstract void onShowAdScreen(BannerView paramBannerView);
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.BannerViewListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */