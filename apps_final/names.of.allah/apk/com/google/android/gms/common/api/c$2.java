package com.google.android.gms.common.api;

import android.os.Bundle;
import android.os.Handler;
import java.util.concurrent.locks.Lock;

class c$2
  implements GoogleApiClient.ConnectionCallbacks
{
  c$2(c paramc) {}
  
  public void onConnected(Bundle paramBundle)
  {
    c.a(Eh).lock();
    try
    {
      if (c.b(Eh) == 1)
      {
        if (paramBundle != null) {
          c.c(Eh).putAll(paramBundle);
        }
        c.d(Eh);
      }
      return;
    }
    finally
    {
      c.a(Eh).unlock();
    }
  }
  
  public void onConnectionSuspended(int paramInt)
  {
    c.a(Eh).lock();
    for (;;)
    {
      try
      {
        c.a(Eh, paramInt);
        switch (paramInt)
        {
        default: 
          return;
        }
      }
      finally
      {
        c.a(Eh).unlock();
      }
      Eh.connect();
      continue;
      boolean bool = c.e(Eh);
      if (bool)
      {
        c.a(Eh).unlock();
        return;
      }
      c.b(Eh, 2);
      Eh.DZ.sendMessageDelayed(Eh.DZ.obtainMessage(1), c.f(Eh));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.c.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */