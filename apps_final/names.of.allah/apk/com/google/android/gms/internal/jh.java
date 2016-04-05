package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.location.LocationClient.OnAddGeofencesResultListener;
import com.google.android.gms.location.LocationClient.OnRemoveGeofencesResultListener;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import java.util.List;

public class jh
  extends hc<jf>
{
  private final jk<jf> VG = new jh.c(this, null);
  private final jg VM = new jg(paramContext, VG);
  private final ka VN;
  private final ja VO;
  private final String VP;
  
  public jh(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString)
  {
    this(paramContext, paramLooper, paramContext.getPackageName(), paramConnectionCallbacks, paramOnConnectionFailedListener, paramString, null);
  }
  
  public jh(Context paramContext, Looper paramLooper, String paramString1, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString2, String paramString3)
  {
    super(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, new String[0]);
    VP = paramString2;
    VN = new ka(paramString1, VG);
    VO = ja.a(paramContext, paramString3, VG);
  }
  
  public jh(Context paramContext, GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString)
  {
    super(paramContext, paramConnectionCallbacks, paramOnConnectionFailedListener, new String[0]);
    VP = paramString;
    VN = new ka(paramContext.getPackageName(), VG);
    VO = ja.a(paramContext, null, VG);
  }
  
  protected void a(hj paramhj, hc.e parame)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("client_name", VP);
    paramhj.e(parame, 5077000, getContext().getPackageName(), localBundle);
  }
  
  public void addGeofences(List<ji> paramList, PendingIntent paramPendingIntent, LocationClient.OnAddGeofencesResultListener paramOnAddGeofencesResultListener)
  {
    ci();
    boolean bool;
    if ((paramList != null) && (paramList.size() > 0))
    {
      bool = true;
      hn.b(bool, "At least one geofence must be specified.");
      hn.b(paramPendingIntent, "PendingIntent must be specified.");
      hn.b(paramOnAddGeofencesResultListener, "OnAddGeofencesResultListener not provided.");
      if (paramOnAddGeofencesResultListener != null) {
        break label76;
      }
    }
    label76:
    for (paramOnAddGeofencesResultListener = null;; paramOnAddGeofencesResultListener = new jh.b(paramOnAddGeofencesResultListener, this))
    {
      ((jf)fo()).a(paramList, paramPendingIntent, paramOnAddGeofencesResultListener, getContext().getPackageName());
      return;
      bool = false;
      break;
    }
  }
  
  protected jf at(IBinder paramIBinder)
  {
    return jf.a.as(paramIBinder);
  }
  
  protected String bp()
  {
    return "com.google.android.location.internal.GoogleLocationManagerService.START";
  }
  
  protected String bq()
  {
    return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
  }
  
  public void disconnect()
  {
    synchronized (VM)
    {
      if (isConnected())
      {
        VM.removeAllListeners();
        VM.iT();
      }
      super.disconnect();
      return;
    }
  }
  
  public Location getLastLocation()
  {
    return VM.getLastLocation();
  }
  
  public void removeActivityUpdates(PendingIntent paramPendingIntent)
  {
    ci();
    hn.f(paramPendingIntent);
    ((jf)fo()).removeActivityUpdates(paramPendingIntent);
  }
  
  public void removeGeofences(PendingIntent paramPendingIntent, LocationClient.OnRemoveGeofencesResultListener paramOnRemoveGeofencesResultListener)
  {
    ci();
    hn.b(paramPendingIntent, "PendingIntent must be specified.");
    hn.b(paramOnRemoveGeofencesResultListener, "OnRemoveGeofencesResultListener not provided.");
    if (paramOnRemoveGeofencesResultListener == null) {}
    for (paramOnRemoveGeofencesResultListener = null;; paramOnRemoveGeofencesResultListener = new jh.b(paramOnRemoveGeofencesResultListener, this))
    {
      ((jf)fo()).a(paramPendingIntent, paramOnRemoveGeofencesResultListener, getContext().getPackageName());
      return;
    }
  }
  
  public void removeGeofences(List<String> paramList, LocationClient.OnRemoveGeofencesResultListener paramOnRemoveGeofencesResultListener)
  {
    ci();
    boolean bool;
    String[] arrayOfString;
    if ((paramList != null) && (paramList.size() > 0))
    {
      bool = true;
      hn.b(bool, "geofenceRequestIds can't be null nor empty.");
      hn.b(paramOnRemoveGeofencesResultListener, "OnRemoveGeofencesResultListener not provided.");
      arrayOfString = (String[])paramList.toArray(new String[0]);
      if (paramOnRemoveGeofencesResultListener != null) {
        break label82;
      }
    }
    label82:
    for (paramList = null;; paramList = new jh.b(paramOnRemoveGeofencesResultListener, this))
    {
      ((jf)fo()).a(arrayOfString, paramList, getContext().getPackageName());
      return;
      bool = false;
      break;
    }
  }
  
  public void removeLocationUpdates(PendingIntent paramPendingIntent)
  {
    VM.removeLocationUpdates(paramPendingIntent);
  }
  
  public void removeLocationUpdates(LocationListener paramLocationListener)
  {
    VM.removeLocationUpdates(paramLocationListener);
  }
  
  public void requestActivityUpdates(long paramLong, PendingIntent paramPendingIntent)
  {
    ci();
    hn.f(paramPendingIntent);
    if (paramLong >= 0L) {}
    for (boolean bool = true;; bool = false)
    {
      hn.b(bool, "detectionIntervalMillis must be >= 0");
      ((jf)fo()).a(paramLong, true, paramPendingIntent);
      return;
    }
  }
  
  public void requestLocationUpdates(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent)
  {
    VM.requestLocationUpdates(paramLocationRequest, paramPendingIntent);
  }
  
  public void requestLocationUpdates(LocationRequest paramLocationRequest, LocationListener paramLocationListener)
  {
    requestLocationUpdates(paramLocationRequest, paramLocationListener, null);
  }
  
  public void requestLocationUpdates(LocationRequest paramLocationRequest, LocationListener paramLocationListener, Looper paramLooper)
  {
    synchronized (VM)
    {
      VM.requestLocationUpdates(paramLocationRequest, paramLocationListener, paramLooper);
      return;
    }
  }
  
  public void setMockLocation(Location paramLocation)
  {
    VM.setMockLocation(paramLocation);
  }
  
  public void setMockMode(boolean paramBoolean)
  {
    VM.setMockMode(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */