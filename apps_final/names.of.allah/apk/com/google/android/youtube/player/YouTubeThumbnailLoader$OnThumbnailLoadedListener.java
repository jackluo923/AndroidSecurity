package com.google.android.youtube.player;

public abstract interface YouTubeThumbnailLoader$OnThumbnailLoadedListener
{
  public abstract void onThumbnailError(YouTubeThumbnailView paramYouTubeThumbnailView, YouTubeThumbnailLoader.ErrorReason paramErrorReason);
  
  public abstract void onThumbnailLoaded(YouTubeThumbnailView paramYouTubeThumbnailView, String paramString);
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.YouTubeThumbnailLoader.OnThumbnailLoadedListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */