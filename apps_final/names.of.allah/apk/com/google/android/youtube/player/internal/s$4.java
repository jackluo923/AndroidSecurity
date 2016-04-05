package com.google.android.youtube.player.internal;

import com.google.android.youtube.player.YouTubePlayer.PlaybackEventListener;

final class s$4
  extends f.a
{
  s$4(s params, YouTubePlayer.PlaybackEventListener paramPlaybackEventListener) {}
  
  public final void a()
  {
    a.onPlaying();
  }
  
  public final void a(int paramInt)
  {
    a.onSeekTo(paramInt);
  }
  
  public final void a(boolean paramBoolean)
  {
    a.onBuffering(paramBoolean);
  }
  
  public final void b()
  {
    a.onPaused();
  }
  
  public final void c()
  {
    a.onStopped();
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.s.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */