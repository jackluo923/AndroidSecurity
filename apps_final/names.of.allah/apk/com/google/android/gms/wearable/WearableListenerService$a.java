package com.google.android.gms.wearable;

import android.os.Handler;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.internal.ac.a;
import com.google.android.gms.wearable.internal.af;
import com.google.android.gms.wearable.internal.ai;

class WearableListenerService$a
  extends ac.a
{
  private WearableListenerService$a(WearableListenerService paramWearableListenerService) {}
  
  public void Y(DataHolder paramDataHolder)
  {
    if (Log.isLoggable("WearableLS", 3)) {
      Log.d("WearableLS", "onDataItemChanged: " + WearableListenerService.a(alr) + ": " + paramDataHolder);
    }
    WearableListenerService.b(alr);
    synchronized (WearableListenerService.c(alr))
    {
      if (WearableListenerService.d(alr))
      {
        paramDataHolder.close();
        return;
      }
      WearableListenerService.e(alr).post(new WearableListenerService.a.1(this, paramDataHolder));
      return;
    }
  }
  
  public void a(af paramaf)
  {
    if (Log.isLoggable("WearableLS", 3)) {
      Log.d("WearableLS", "onMessageReceived: " + paramaf);
    }
    WearableListenerService.b(alr);
    synchronized (WearableListenerService.c(alr))
    {
      if (WearableListenerService.d(alr)) {
        return;
      }
      WearableListenerService.e(alr).post(new WearableListenerService.a.2(this, paramaf));
      return;
    }
  }
  
  public void a(ai paramai)
  {
    if (Log.isLoggable("WearableLS", 3)) {
      Log.d("WearableLS", "onPeerConnected: " + WearableListenerService.a(alr) + ": " + paramai);
    }
    WearableListenerService.b(alr);
    synchronized (WearableListenerService.c(alr))
    {
      if (WearableListenerService.d(alr)) {
        return;
      }
      WearableListenerService.e(alr).post(new WearableListenerService.a.3(this, paramai));
      return;
    }
  }
  
  public void b(ai paramai)
  {
    if (Log.isLoggable("WearableLS", 3)) {
      Log.d("WearableLS", "onPeerDisconnected: " + WearableListenerService.a(alr) + ": " + paramai);
    }
    WearableListenerService.b(alr);
    synchronized (WearableListenerService.c(alr))
    {
      if (WearableListenerService.d(alr)) {
        return;
      }
      WearableListenerService.e(alr).post(new WearableListenerService.a.4(this, paramai));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.WearableListenerService.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */