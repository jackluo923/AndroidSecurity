package com.google.android.gms.wearable;

import android.app.Service;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;

public abstract class WearableListenerService
  extends Service
  implements DataApi.DataListener, MessageApi.MessageListener, NodeApi.NodeListener
{
  public static final String BIND_LISTENER_INTENT_ACTION = "com.google.android.gms.wearable.BIND_LISTENER";
  private IBinder Gz;
  private volatile int aln = -1;
  private Handler alo;
  private Object alp = new Object();
  private boolean alq;
  private String xN;
  
  private boolean ed(int paramInt)
  {
    boolean bool2 = false;
    String[] arrayOfString = getPackageManager().getPackagesForUid(paramInt);
    boolean bool1 = bool2;
    if (arrayOfString != null) {
      paramInt = 0;
    }
    for (;;)
    {
      bool1 = bool2;
      if (paramInt < arrayOfString.length)
      {
        if ("com.google.android.gms".equals(arrayOfString[paramInt])) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      paramInt += 1;
    }
  }
  
  private void ni()
  {
    int i = Binder.getCallingUid();
    if (i == aln) {
      return;
    }
    if ((GooglePlayServicesUtil.b(getPackageManager(), "com.google.android.gms")) && (ed(i)))
    {
      aln = i;
      return;
    }
    throw new SecurityException("Caller is not GooglePlayServices");
  }
  
  public final IBinder onBind(Intent paramIntent)
  {
    if ("com.google.android.gms.wearable.BIND_LISTENER".equals(paramIntent.getAction())) {
      return Gz;
    }
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    if (Log.isLoggable("WearableLS", 3)) {
      Log.d("WearableLS", "onCreate: " + getPackageName());
    }
    xN = getPackageName();
    HandlerThread localHandlerThread = new HandlerThread("WearableListenerService");
    localHandlerThread.start();
    alo = new Handler(localHandlerThread.getLooper());
    Gz = new WearableListenerService.a(this, null);
  }
  
  public void onDataChanged(DataEventBuffer paramDataEventBuffer) {}
  
  public void onDestroy()
  {
    synchronized (alp)
    {
      alq = true;
      alo.getLooper().quit();
      super.onDestroy();
      return;
    }
  }
  
  public void onMessageReceived(MessageEvent paramMessageEvent) {}
  
  public void onPeerConnected(Node paramNode) {}
  
  public void onPeerDisconnected(Node paramNode) {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.WearableListenerService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */