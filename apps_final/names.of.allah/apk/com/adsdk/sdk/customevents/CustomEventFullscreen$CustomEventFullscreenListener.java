package com.adsdk.sdk.customevents;

public abstract interface CustomEventFullscreen$CustomEventFullscreenListener
{
  public abstract void onFullscreenClosed();
  
  public abstract void onFullscreenFailed();
  
  public abstract void onFullscreenLeftApplication();
  
  public abstract void onFullscreenLoaded(CustomEventFullscreen paramCustomEventFullscreen);
  
  public abstract void onFullscreenOpened();
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.customevents.CustomEventFullscreen.CustomEventFullscreenListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */