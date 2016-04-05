package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.concurrent.locks.Lock;

class c$b
  extends Handler
{
  c$b(c paramc, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 1)
    {
      c.a(Eh).lock();
      try
      {
        if ((!Eh.isConnected()) && (!Eh.isConnecting())) {
          Eh.connect();
        }
        return;
      }
      finally
      {
        c.a(Eh).unlock();
      }
    }
    Log.wtf("GoogleApiClientImpl", "Don't know how to handle this message.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */