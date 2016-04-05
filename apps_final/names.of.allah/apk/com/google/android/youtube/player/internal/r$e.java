package com.google.android.youtube.player.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

final class r$e
  implements ServiceConnection
{
  r$e(r paramr) {}
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    a.b(paramIBinder);
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    r.a(a, null);
    a.h();
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.r.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */