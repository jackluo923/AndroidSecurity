package com.google.android.youtube.player.internal;

import android.os.IBinder;
import com.google.android.youtube.player.YouTubeInitializationResult;

public final class r$c
  extends r<T>.b<Boolean>
{
  public final YouTubeInitializationResult b;
  public final IBinder c;
  
  public r$c(r paramr, String paramString, IBinder paramIBinder)
  {
    super(paramr, Boolean.valueOf(true));
    b = r.a(paramString);
    c = paramIBinder;
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.r.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */