package com.google.android.youtube.player.internal;

import com.google.android.youtube.player.YouTubePlayer.ErrorReason;
import com.google.android.youtube.player.YouTubePlayer.PlayerStateChangeListener;

final class s$3
  extends g.a
{
  s$3(s params, YouTubePlayer.PlayerStateChangeListener paramPlayerStateChangeListener) {}
  
  public final void a()
  {
    a.onLoading();
  }
  
  public final void a(String paramString)
  {
    a.onLoaded(paramString);
  }
  
  public final void b()
  {
    a.onAdStarted();
  }
  
  public final void b(String paramString)
  {
    try
    {
      paramString = YouTubePlayer.ErrorReason.valueOf(paramString);
      a.onError(paramString);
      return;
    }
    catch (IllegalArgumentException paramString)
    {
      for (;;)
      {
        paramString = YouTubePlayer.ErrorReason.UNKNOWN;
      }
    }
    catch (NullPointerException paramString)
    {
      for (;;)
      {
        paramString = YouTubePlayer.ErrorReason.UNKNOWN;
      }
    }
  }
  
  public final void c()
  {
    a.onVideoStarted();
  }
  
  public final void d()
  {
    a.onVideoEnded();
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.s.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */