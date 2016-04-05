package com.adsdk.sdk;

public abstract interface AdListener
{
  public abstract void adClicked();
  
  public abstract void adClosed(Ad paramAd, boolean paramBoolean);
  
  public abstract void adLoadSucceeded(Ad paramAd);
  
  public abstract void adShown(Ad paramAd, boolean paramBoolean);
  
  public abstract void noAdFound();
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.AdListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */