package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.HashSet;
import java.util.Iterator;

public class he$a$a
  implements ServiceConnection
{
  public he$a$a(he.a parama) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    synchronized (he.a(GC.GB))
    {
      he.a.a(GC, paramIBinder);
      he.a.a(GC, paramComponentName);
      Iterator localIterator = he.a.a(GC).iterator();
      if (localIterator.hasNext()) {
        ((hc.f)localIterator.next()).onServiceConnected(paramComponentName, paramIBinder);
      }
    }
    he.a.a(GC, 1);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    synchronized (he.a(GC.GB))
    {
      he.a.a(GC, null);
      he.a.a(GC, paramComponentName);
      Iterator localIterator = he.a.a(GC).iterator();
      if (localIterator.hasNext()) {
        ((hc.f)localIterator.next()).onServiceDisconnected(paramComponentName);
      }
    }
    he.a.a(GC, 2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.he.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */