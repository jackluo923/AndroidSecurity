package com.google.android.youtube.player;

public abstract interface YouTubePlayer$PlaybackEventListener
{
  public abstract void onBuffering(boolean paramBoolean);
  
  public abstract void onPaused();
  
  public abstract void onPlaying();
  
  public abstract void onSeekTo(int paramInt);
  
  public abstract void onStopped();
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.YouTubePlayer.PlaybackEventListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */