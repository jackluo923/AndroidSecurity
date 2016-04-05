package com.google.android.youtube.player;

import java.util.List;

public abstract interface YouTubePlayer
{
  public static final int FULLSCREEN_FLAG_ALWAYS_FULLSCREEN_IN_LANDSCAPE = 4;
  public static final int FULLSCREEN_FLAG_CONTROL_ORIENTATION = 1;
  public static final int FULLSCREEN_FLAG_CONTROL_SYSTEM_UI = 2;
  public static final int FULLSCREEN_FLAG_CUSTOM_LAYOUT = 8;
  
  public abstract void addFullscreenControlFlag(int paramInt);
  
  public abstract void cuePlaylist(String paramString);
  
  public abstract void cuePlaylist(String paramString, int paramInt1, int paramInt2);
  
  public abstract void cueVideo(String paramString);
  
  public abstract void cueVideo(String paramString, int paramInt);
  
  public abstract void cueVideos(List<String> paramList);
  
  public abstract void cueVideos(List<String> paramList, int paramInt1, int paramInt2);
  
  public abstract int getCurrentTimeMillis();
  
  public abstract int getDurationMillis();
  
  public abstract int getFullscreenControlFlags();
  
  public abstract boolean hasNext();
  
  public abstract boolean hasPrevious();
  
  public abstract boolean isPlaying();
  
  public abstract void loadPlaylist(String paramString);
  
  public abstract void loadPlaylist(String paramString, int paramInt1, int paramInt2);
  
  public abstract void loadVideo(String paramString);
  
  public abstract void loadVideo(String paramString, int paramInt);
  
  public abstract void loadVideos(List<String> paramList);
  
  public abstract void loadVideos(List<String> paramList, int paramInt1, int paramInt2);
  
  public abstract void next();
  
  public abstract void pause();
  
  public abstract void play();
  
  public abstract void previous();
  
  public abstract void release();
  
  public abstract void seekRelativeMillis(int paramInt);
  
  public abstract void seekToMillis(int paramInt);
  
  public abstract void setFullscreen(boolean paramBoolean);
  
  public abstract void setFullscreenControlFlags(int paramInt);
  
  public abstract void setManageAudioFocus(boolean paramBoolean);
  
  public abstract void setOnFullscreenListener(YouTubePlayer.OnFullscreenListener paramOnFullscreenListener);
  
  public abstract void setPlaybackEventListener(YouTubePlayer.PlaybackEventListener paramPlaybackEventListener);
  
  public abstract void setPlayerStateChangeListener(YouTubePlayer.PlayerStateChangeListener paramPlayerStateChangeListener);
  
  public abstract void setPlayerStyle(YouTubePlayer.PlayerStyle paramPlayerStyle);
  
  public abstract void setPlaylistEventListener(YouTubePlayer.PlaylistEventListener paramPlaylistEventListener);
  
  public abstract void setShowFullscreenButton(boolean paramBoolean);
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.YouTubePlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */