package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class a
  implements ServiceConnection
{
  boolean CN = false;
  private final BlockingQueue<IBinder> CO = new LinkedBlockingQueue();
  
  public IBinder er()
  {
    if (CN) {
      throw new IllegalStateException();
    }
    CN = true;
    return (IBinder)CO.take();
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      CO.put(paramIBinder);
      return;
    }
    catch (InterruptedException paramComponentName) {}
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */