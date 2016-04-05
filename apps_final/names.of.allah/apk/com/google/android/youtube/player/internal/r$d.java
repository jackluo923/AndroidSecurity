package com.google.android.youtube.player.internal;

import android.os.Handler;
import android.os.IBinder;

public final class r$d
  extends c.a
{
  protected r$d(r paramr) {}
  
  public final void a(String paramString, IBinder paramIBinder)
  {
    a.a.sendMessage(a.a.obtainMessage(1, new r.c(a, paramString, paramIBinder)));
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.r.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */