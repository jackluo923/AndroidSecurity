package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;

final class hc$f
  implements ServiceConnection
{
  hc$f(hc paramhc) {}
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    Gf.I(paramIBinder);
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    Gf.mHandler.sendMessage(Gf.mHandler.obtainMessage(4, Integer.valueOf(1)));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hc.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */