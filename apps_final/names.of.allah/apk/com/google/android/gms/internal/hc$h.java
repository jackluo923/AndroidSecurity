package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;

public final class hc$h
  extends hc<T>.b<Boolean>
{
  public final Bundle Gk;
  public final IBinder Gl;
  public final int statusCode;
  
  public hc$h(hc paramhc, int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    super(paramhc, Boolean.valueOf(true));
    statusCode = paramInt;
    Gl = paramIBinder;
    Gk = paramBundle;
  }
  
  protected final void b(Boolean paramBoolean)
  {
    if (paramBoolean == null)
    {
      hc.a(Gf, 1);
      return;
    }
    switch (statusCode)
    {
    default: 
      if (Gk == null) {
        break;
      }
    }
    for (paramBoolean = (PendingIntent)Gk.getParcelable("pendingIntent");; paramBoolean = null)
    {
      if (hc.d(Gf) != null)
      {
        he.B(hc.e(Gf)).b(Gf.bp(), hc.d(Gf));
        hc.a(Gf, null);
      }
      hc.a(Gf, 1);
      hc.a(Gf, null);
      hc.a(Gf).a(new ConnectionResult(statusCode, paramBoolean));
      return;
      try
      {
        paramBoolean = Gl.getInterfaceDescriptor();
        if (Gf.bq().equals(paramBoolean))
        {
          hc.a(Gf, Gf.x(Gl));
          if (hc.c(Gf) != null)
          {
            hc.a(Gf, 3);
            hc.a(Gf).ck();
            return;
          }
        }
      }
      catch (RemoteException paramBoolean)
      {
        he.B(hc.e(Gf)).b(Gf.bp(), hc.d(Gf));
        hc.a(Gf, null);
        hc.a(Gf, 1);
        hc.a(Gf, null);
        hc.a(Gf).a(new ConnectionResult(8, null));
        return;
      }
      hc.a(Gf, 1);
      throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
    }
  }
  
  protected final void fp() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hc.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */