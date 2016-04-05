package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;

public final class hc$e
  extends hi.a
{
  private hc Gi;
  
  public hc$e(hc paramhc)
  {
    Gi = paramhc;
  }
  
  public final void b(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    hn.b("onPostInitComplete can be called only once per call to getServiceFromBroker", Gi);
    Gi.a(paramInt, paramIBinder, paramBundle);
    Gi = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hc.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */