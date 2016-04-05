package com.google.android.youtube.player;

public abstract interface YouTubePlayer$PlayerStateChangeListener
{
  public abstract void onAdStarted();
  
  public abstract void onError(YouTubePlayer.ErrorReason paramErrorReason);
  
  public abstract void onLoaded(String paramString);
  
  public abstract void onLoading();
  
  public abstract void onVideoEnded();
  
  public abstract void onVideoStarted();
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.YouTubePlayer.PlayerStateChangeListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */