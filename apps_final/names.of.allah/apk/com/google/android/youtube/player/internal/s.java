package com.google.android.youtube.player.internal;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.KeyEvent;
import android.view.View;
import com.google.android.youtube.player.YouTubePlayer;
import com.google.android.youtube.player.YouTubePlayer.OnFullscreenListener;
import com.google.android.youtube.player.YouTubePlayer.PlaybackEventListener;
import com.google.android.youtube.player.YouTubePlayer.PlayerStateChangeListener;
import com.google.android.youtube.player.YouTubePlayer.PlayerStyle;
import com.google.android.youtube.player.YouTubePlayer.PlaylistEventListener;
import java.util.List;

public final class s
  implements YouTubePlayer
{
  private b a;
  private d b;
  
  public s(b paramb, d paramd)
  {
    a = ((b)ac.a(paramb, "connectionClient cannot be null"));
    b = ((d)ac.a(paramd, "embeddedPlayer cannot be null"));
  }
  
  public final View a()
  {
    try
    {
      View localView = (View)v.a(b.s());
      return localView;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final void a(Configuration paramConfiguration)
  {
    try
    {
      b.a(paramConfiguration);
      return;
    }
    catch (RemoteException paramConfiguration)
    {
      throw new q(paramConfiguration);
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    try
    {
      b.a(paramBoolean);
      a.a(paramBoolean);
      a.d();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    try
    {
      boolean bool = b.a(paramInt, paramKeyEvent);
      return bool;
    }
    catch (RemoteException paramKeyEvent)
    {
      throw new q(paramKeyEvent);
    }
  }
  
  public final boolean a(Bundle paramBundle)
  {
    try
    {
      boolean bool = b.a(paramBundle);
      return bool;
    }
    catch (RemoteException paramBundle)
    {
      throw new q(paramBundle);
    }
  }
  
  public final void addFullscreenControlFlag(int paramInt)
  {
    try
    {
      b.d(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final void b()
  {
    try
    {
      b.m();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final void b(boolean paramBoolean)
  {
    try
    {
      b.e(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final boolean b(int paramInt, KeyEvent paramKeyEvent)
  {
    try
    {
      boolean bool = b.b(paramInt, paramKeyEvent);
      return bool;
    }
    catch (RemoteException paramKeyEvent)
    {
      throw new q(paramKeyEvent);
    }
  }
  
  public final void c()
  {
    try
    {
      b.n();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final void cuePlaylist(String paramString)
  {
    cuePlaylist(paramString, 0, 0);
  }
  
  public final void cuePlaylist(String paramString, int paramInt1, int paramInt2)
  {
    try
    {
      b.a(paramString, paramInt1, paramInt2);
      return;
    }
    catch (RemoteException paramString)
    {
      throw new q(paramString);
    }
  }
  
  public final void cueVideo(String paramString)
  {
    cueVideo(paramString, 0);
  }
  
  public final void cueVideo(String paramString, int paramInt)
  {
    try
    {
      b.a(paramString, paramInt);
      return;
    }
    catch (RemoteException paramString)
    {
      throw new q(paramString);
    }
  }
  
  public final void cueVideos(List<String> paramList)
  {
    cueVideos(paramList, 0, 0);
  }
  
  public final void cueVideos(List<String> paramList, int paramInt1, int paramInt2)
  {
    try
    {
      b.a(paramList, paramInt1, paramInt2);
      return;
    }
    catch (RemoteException paramList)
    {
      throw new q(paramList);
    }
  }
  
  public final void d()
  {
    try
    {
      b.o();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final void e()
  {
    try
    {
      b.p();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final void f()
  {
    try
    {
      b.q();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final void g()
  {
    try
    {
      b.l();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final int getCurrentTimeMillis()
  {
    try
    {
      int i = b.h();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final int getDurationMillis()
  {
    try
    {
      int i = b.i();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final int getFullscreenControlFlags()
  {
    try
    {
      int i = b.j();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final Bundle h()
  {
    try
    {
      Bundle localBundle = b.r();
      return localBundle;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final boolean hasNext()
  {
    try
    {
      boolean bool = b.d();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final boolean hasPrevious()
  {
    try
    {
      boolean bool = b.e();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final boolean isPlaying()
  {
    try
    {
      boolean bool = b.c();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final void loadPlaylist(String paramString)
  {
    loadPlaylist(paramString, 0, 0);
  }
  
  public final void loadPlaylist(String paramString, int paramInt1, int paramInt2)
  {
    try
    {
      b.b(paramString, paramInt1, paramInt2);
      return;
    }
    catch (RemoteException paramString)
    {
      throw new q(paramString);
    }
  }
  
  public final void loadVideo(String paramString)
  {
    loadVideo(paramString, 0);
  }
  
  public final void loadVideo(String paramString, int paramInt)
  {
    try
    {
      b.b(paramString, paramInt);
      return;
    }
    catch (RemoteException paramString)
    {
      throw new q(paramString);
    }
  }
  
  public final void loadVideos(List<String> paramList)
  {
    loadVideos(paramList, 0, 0);
  }
  
  public final void loadVideos(List<String> paramList, int paramInt1, int paramInt2)
  {
    try
    {
      b.b(paramList, paramInt1, paramInt2);
      return;
    }
    catch (RemoteException paramList)
    {
      throw new q(paramList);
    }
  }
  
  public final void next()
  {
    try
    {
      b.f();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final void pause()
  {
    try
    {
      b.b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final void play()
  {
    try
    {
      b.a();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final void previous()
  {
    try
    {
      b.g();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final void release()
  {
    a(true);
  }
  
  public final void seekRelativeMillis(int paramInt)
  {
    try
    {
      b.b(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final void seekToMillis(int paramInt)
  {
    try
    {
      b.a(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final void setFullscreen(boolean paramBoolean)
  {
    try
    {
      b.b(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final void setFullscreenControlFlags(int paramInt)
  {
    try
    {
      b.c(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final void setManageAudioFocus(boolean paramBoolean)
  {
    try
    {
      b.d(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
  
  public final void setOnFullscreenListener(YouTubePlayer.OnFullscreenListener paramOnFullscreenListener)
  {
    try
    {
      b.a(new s.1(this, paramOnFullscreenListener));
      return;
    }
    catch (RemoteException paramOnFullscreenListener)
    {
      throw new q(paramOnFullscreenListener);
    }
  }
  
  public final void setPlaybackEventListener(YouTubePlayer.PlaybackEventListener paramPlaybackEventListener)
  {
    try
    {
      b.a(new s.4(this, paramPlaybackEventListener));
      return;
    }
    catch (RemoteException paramPlaybackEventListener)
    {
      throw new q(paramPlaybackEventListener);
    }
  }
  
  public final void setPlayerStateChangeListener(YouTubePlayer.PlayerStateChangeListener paramPlayerStateChangeListener)
  {
    try
    {
      b.a(new s.3(this, paramPlayerStateChangeListener));
      return;
    }
    catch (RemoteException paramPlayerStateChangeListener)
    {
      throw new q(paramPlayerStateChangeListener);
    }
  }
  
  public final void setPlayerStyle(YouTubePlayer.PlayerStyle paramPlayerStyle)
  {
    try
    {
      b.a(paramPlayerStyle.name());
      return;
    }
    catch (RemoteException paramPlayerStyle)
    {
      throw new q(paramPlayerStyle);
    }
  }
  
  public final void setPlaylistEventListener(YouTubePlayer.PlaylistEventListener paramPlaylistEventListener)
  {
    try
    {
      b.a(new s.2(this, paramPlaylistEventListener));
      return;
    }
    catch (RemoteException paramPlaylistEventListener)
    {
      throw new q(paramPlaylistEventListener);
    }
  }
  
  public final void setShowFullscreenButton(boolean paramBoolean)
  {
    try
    {
      b.c(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new q(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */