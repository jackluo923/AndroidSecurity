package com.google.android.gms.common.api;

import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;

class c$4
  implements GoogleApiClient.OnConnectionFailedListener
{
  c$4(c paramc, Api.b paramb) {}
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    c.a(Eh).lock();
    try
    {
      if ((c.h(Eh) == null) || (Ei.getPriority() < c.i(Eh)))
      {
        c.a(Eh, paramConnectionResult);
        c.c(Eh, Ei.getPriority());
      }
      c.d(Eh);
      return;
    }
    finally
    {
      c.a(Eh).unlock();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.c.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */