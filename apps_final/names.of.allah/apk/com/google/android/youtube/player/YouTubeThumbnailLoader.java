package com.google.android.youtube.player;

public abstract interface YouTubeThumbnailLoader
{
  public abstract void first();
  
  public abstract boolean hasNext();
  
  public abstract boolean hasPrevious();
  
  public abstract void next();
  
  public abstract void previous();
  
  public abstract void release();
  
  public abstract void setOnThumbnailLoadedListener(YouTubeThumbnailLoader.OnThumbnailLoadedListener paramOnThumbnailLoadedListener);
  
  public abstract void setPlaylist(String paramString);
  
  public abstract void setPlaylist(String paramString, int paramInt);
  
  public abstract void setVideo(String paramString);
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.YouTubeThumbnailLoader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */