package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class jg
{
  private final jk<jf> VG;
  private ContentProviderClient VH = null;
  private boolean VI = false;
  private HashMap<LocationListener, jg.b> VJ = new HashMap();
  private final Context mContext;
  
  public jg(Context paramContext, jk<jf> paramjk)
  {
    mContext = paramContext;
    VG = paramjk;
  }
  
  public Location getLastLocation()
  {
    VG.ci();
    try
    {
      Location localLocation = ((jf)VG.fo()).bo(mContext.getPackageName());
      return localLocation;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  public void iT()
  {
    if (VI) {}
    try
    {
      setMockMode(false);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  public void removeAllListeners()
  {
    try
    {
      synchronized (VJ)
      {
        Iterator localIterator = VJ.values().iterator();
        while (localIterator.hasNext())
        {
          jg.b localb = (jg.b)localIterator.next();
          if (localb != null) {
            ((jf)VG.fo()).a(localb);
          }
        }
      }
      VJ.clear();
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  public void removeLocationUpdates(PendingIntent paramPendingIntent)
  {
    VG.ci();
    ((jf)VG.fo()).a(paramPendingIntent);
  }
  
  public void removeLocationUpdates(LocationListener paramLocationListener)
  {
    VG.ci();
    hn.b(paramLocationListener, "Invalid null listener");
    synchronized (VJ)
    {
      paramLocationListener = (jg.b)VJ.remove(paramLocationListener);
      if ((VH != null) && (VJ.isEmpty()))
      {
        VH.release();
        VH = null;
      }
      if (paramLocationListener != null)
      {
        paramLocationListener.release();
        ((jf)VG.fo()).a(paramLocationListener);
      }
      return;
    }
  }
  
  public void requestLocationUpdates(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent)
  {
    VG.ci();
    ((jf)VG.fo()).a(paramLocationRequest, paramPendingIntent);
  }
  
  public void requestLocationUpdates(LocationRequest paramLocationRequest, LocationListener paramLocationListener, Looper paramLooper)
  {
    VG.ci();
    if (paramLooper == null) {
      hn.b(Looper.myLooper(), "Can't create handler inside thread that has not called Looper.prepare()");
    }
    for (;;)
    {
      jg.b localb;
      synchronized (VJ)
      {
        localb = (jg.b)VJ.get(paramLocationListener);
        if (localb == null)
        {
          paramLooper = new jg.b(paramLocationListener, paramLooper);
          VJ.put(paramLocationListener, paramLooper);
          ((jf)VG.fo()).a(paramLocationRequest, paramLooper, mContext.getPackageName());
          return;
        }
      }
      paramLooper = localb;
    }
  }
  
  public void setMockLocation(Location paramLocation)
  {
    VG.ci();
    ((jf)VG.fo()).setMockLocation(paramLocation);
  }
  
  public void setMockMode(boolean paramBoolean)
  {
    VG.ci();
    ((jf)VG.fo()).setMockMode(paramBoolean);
    VI = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */