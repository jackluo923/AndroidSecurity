package com.google.ads;

public abstract interface Ad
{
  public abstract boolean isReady();
  
  public abstract void loadAd(AdRequest paramAdRequest);
  
  public abstract void setAdListener(AdListener paramAdListener);
  
  public abstract void stopLoading();
}

/* Location:
 * Qualified Name:     com.google.ads.Ad
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */