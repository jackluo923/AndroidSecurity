package com.inmobi.monetization;

import java.util.Map;

public abstract interface IMInterstitialListener
{
  public abstract void onDismissInterstitialScreen(IMInterstitial paramIMInterstitial);
  
  public abstract void onInterstitialFailed(IMInterstitial paramIMInterstitial, IMErrorCode paramIMErrorCode);
  
  public abstract void onInterstitialInteraction(IMInterstitial paramIMInterstitial, Map<String, String> paramMap);
  
  public abstract void onInterstitialLoaded(IMInterstitial paramIMInterstitial);
  
  public abstract void onLeaveApplication(IMInterstitial paramIMInterstitial);
  
  public abstract void onShowInterstitialScreen(IMInterstitial paramIMInterstitial);
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMInterstitialListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */