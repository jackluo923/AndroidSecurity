package com.google.android.gms.internal;

import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.location.LocationListener;

class jg$a
  extends Handler
{
  private final LocationListener VK;
  
  public jg$a(LocationListener paramLocationListener)
  {
    VK = paramLocationListener;
  }
  
  public jg$a(LocationListener paramLocationListener, Looper paramLooper)
  {
    super(paramLooper);
    VK = paramLocationListener;
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      Log.e("LocationClientHelper", "unknown message in LocationHandler.handleMessage");
      return;
    }
    paramMessage = new Location((Location)obj);
    VK.onLocationChanged(paramMessage);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jg.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */