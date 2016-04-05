package com.google.android.gms.internal;

import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.a.a;

class jg$b
  extends a.a
{
  private Handler VL;
  
  jg$b(LocationListener paramLocationListener, Looper paramLooper)
  {
    if (paramLooper == null) {}
    for (paramLocationListener = new jg.a(paramLocationListener);; paramLocationListener = new jg.a(paramLocationListener, paramLooper))
    {
      VL = paramLocationListener;
      return;
    }
  }
  
  public void onLocationChanged(Location paramLocation)
  {
    if (VL == null)
    {
      Log.e("LocationClientHelper", "Received a location in client after calling removeLocationUpdates.");
      return;
    }
    Message localMessage = Message.obtain();
    what = 1;
    obj = paramLocation;
    VL.sendMessage(localMessage);
  }
  
  public void release()
  {
    VL = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jg.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */