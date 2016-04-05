package com.inmobi.androidsdk;

import java.util.Map;

public abstract interface InterstitialViewListener
{
  public abstract void onAdRequestFailed(InterstitialView paramInterstitialView, AdRequest.ErrorCode paramErrorCode);
  
  public abstract void onAdRequestLoaded(InterstitialView paramInterstitialView);
  
  public abstract void onDismissAdScreen(InterstitialView paramInterstitialView);
  
  public abstract void onIncentCompleted(InterstitialView paramInterstitialView, Map<Object, Object> paramMap);
  
  public abstract void onInterstitialInteraction(InterstitialView paramInterstitialView, Map<String, String> paramMap);
  
  public abstract void onLeaveApplication(InterstitialView paramInterstitialView);
  
  public abstract void onShowAdScreen(InterstitialView paramInterstitialView);
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.InterstitialViewListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */