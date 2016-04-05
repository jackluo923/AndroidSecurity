package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;

public final class dr$b
  extends dr
  implements GooglePlayServicesClient.ConnectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener
{
  private final Object lq = new Object();
  private final dq.a pR;
  private final ds pS;
  
  public dr$b(Context paramContext, dt paramdt, dq.a parama)
  {
    super(paramdt, parama);
    pR = parama;
    pS = new ds(paramContext, this, this, kO.sv);
    pS.connect();
  }
  
  public final void bn()
  {
    synchronized (lq)
    {
      if ((pS.isConnected()) || (pS.isConnecting())) {
        pS.disconnect();
      }
      return;
    }
  }
  
  public final dx bo()
  {
    synchronized (lq)
    {
      try
      {
        dx localdx = pS.br();
        return localdx;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        return null;
      }
    }
  }
  
  public final void onConnected(Bundle paramBundle)
  {
    start();
  }
  
  public final void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    pR.a(new dv(0));
  }
  
  public final void onDisconnected()
  {
    ev.z("Disconnected from remote ad request service.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dr.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */