package com.inmobi.monetization;

import java.util.Map;

public abstract interface IMBannerListener
{
  public abstract void onBannerInteraction(IMBanner paramIMBanner, Map<String, String> paramMap);
  
  public abstract void onBannerRequestFailed(IMBanner paramIMBanner, IMErrorCode paramIMErrorCode);
  
  public abstract void onBannerRequestSucceeded(IMBanner paramIMBanner);
  
  public abstract void onDismissBannerScreen(IMBanner paramIMBanner);
  
  public abstract void onLeaveApplication(IMBanner paramIMBanner);
  
  public abstract void onShowBannerScreen(IMBanner paramIMBanner);
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMBannerListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */