package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import java.util.ArrayList;

final class hd$a
  extends Handler
{
  public hd$a(hd paramhd, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    if (what == 1) {
      synchronized (hd.a(Gr))
      {
        if ((hd.b(Gr).eJ()) && (hd.b(Gr).isConnected()) && (hd.a(Gr).contains(obj)))
        {
          Bundle localBundle = hd.b(Gr).ea();
          ((GoogleApiClient.ConnectionCallbacks)obj).onConnected(localBundle);
        }
        return;
      }
    }
    Log.wtf("GmsClientEvents", "Don't know how to handle this message.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hd.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */