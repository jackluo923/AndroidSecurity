package com.adsdk.sdk.nativeads;

public abstract interface NativeAdListener
{
  public abstract void adClicked();
  
  public abstract void adFailedToLoad();
  
  public abstract void adLoaded(NativeAd paramNativeAd);
  
  public abstract void impression();
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.nativeads.NativeAdListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */