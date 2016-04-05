package com.google.android.gms.analytics;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.ff.a;

final class c$a
  implements ServiceConnection
{
  c$a(c paramc) {}
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    aa.C("service connected, binder: " + paramIBinder);
    try
    {
      if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(paramIBinder.getInterfaceDescriptor()))
      {
        aa.C("bound to service");
        c.a(ty, ff.a.z(paramIBinder));
        c.a(ty);
        return;
      }
    }
    catch (RemoteException paramComponentName)
    {
      c.b(ty).unbindService(this);
      c.a(ty, null);
      c.c(ty).a(2, null);
    }
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    aa.C("service disconnected: " + paramComponentName);
    c.a(ty, null);
    c.d(ty).onDisconnected();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */