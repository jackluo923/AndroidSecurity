package com.google.android.youtube.player;

public abstract interface YouTubePlayer$OnInitializedListener
{
  public abstract void onInitializationFailure(YouTubePlayer.Provider paramProvider, YouTubeInitializationResult paramYouTubeInitializationResult);
  
  public abstract void onInitializationSuccess(YouTubePlayer.Provider paramProvider, YouTubePlayer paramYouTubePlayer, boolean paramBoolean);
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.YouTubePlayer.OnInitializedListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */