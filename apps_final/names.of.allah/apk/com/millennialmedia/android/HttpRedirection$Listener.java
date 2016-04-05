package com.millennialmedia.android;

import android.net.Uri;

abstract interface HttpRedirection$Listener
{
  public abstract boolean canOpenOverlay();
  
  public abstract OverlaySettings getOverlaySettings();
  
  public abstract boolean isActivityStartable(Uri paramUri);
  
  public abstract boolean isExpandingToUrl();
  
  public abstract boolean isHandlingMMVideo(Uri paramUri);
  
  public abstract void startingActivity(Uri paramUri);
  
  public abstract void startingVideo();
  
  public abstract void updateLastVideoViewedTime();
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.HttpRedirection.Listener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */