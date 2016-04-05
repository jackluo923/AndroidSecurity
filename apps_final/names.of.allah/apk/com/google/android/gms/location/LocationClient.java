package com.google.android.gms.location;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.internal.hn;
import com.google.android.gms.internal.jh;
import com.google.android.gms.internal.ji;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Deprecated
public class LocationClient
  implements GooglePlayServicesClient
{
  public static final String KEY_LOCATION_CHANGED = "com.google.android.location.LOCATION";
  public static final String KEY_MOCK_LOCATION = "mockLocation";
  private final jh UR;
  
  public LocationClient(Context paramContext, GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    UR = new jh(paramContext, paramConnectionCallbacks, paramOnConnectionFailedListener, "location");
  }
  
  public static int getErrorCode(Intent paramIntent)
  {
    return paramIntent.getIntExtra("gms_error_code", -1);
  }
  
  public static int getGeofenceTransition(Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("com.google.android.location.intent.extra.transition", -1);
    if (i == -1) {}
    while ((i != 1) && (i != 2) && (i != 4)) {
      return -1;
    }
    return i;
  }
  
  public static List<Geofence> getTriggeringGeofences(Intent paramIntent)
  {
    Object localObject = (ArrayList)paramIntent.getSerializableExtra("com.google.android.location.intent.extra.geofence_list");
    if (localObject == null) {
      return null;
    }
    paramIntent = new ArrayList(((ArrayList)localObject).size());
    localObject = ((ArrayList)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      paramIntent.add(ji.h((byte[])((Iterator)localObject).next()));
    }
    return paramIntent;
  }
  
  public static Location getTriggeringLocation(Intent paramIntent)
  {
    return (Location)paramIntent.getParcelableExtra("com.google.android.location.intent.extra.triggering_location");
  }
  
  public static boolean hasError(Intent paramIntent)
  {
    return paramIntent.hasExtra("gms_error_code");
  }
  
  public void addGeofences(List<Geofence> paramList, PendingIntent paramPendingIntent, LocationClient.OnAddGeofencesResultListener paramOnAddGeofencesResultListener)
  {
    ArrayList localArrayList = null;
    if (paramList != null)
    {
      localArrayList = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Geofence localGeofence = (Geofence)paramList.next();
        hn.b(localGeofence instanceof ji, "Geofence must be created using Geofence.Builder.");
        localArrayList.add((ji)localGeofence);
      }
    }
    try
    {
      UR.addGeofences(localArrayList, paramPendingIntent, paramOnAddGeofencesResultListener);
      return;
    }
    catch (RemoteException paramList)
    {
      throw new IllegalStateException(paramList);
    }
  }
  
  public void connect()
  {
    UR.connect();
  }
  
  public void disconnect()
  {
    UR.disconnect();
  }
  
  public Location getLastLocation()
  {
    return UR.getLastLocation();
  }
  
  public boolean isConnected()
  {
    return UR.isConnected();
  }
  
  public boolean isConnecting()
  {
    return UR.isConnecting();
  }
  
  public boolean isConnectionCallbacksRegistered(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    return UR.isConnectionCallbacksRegistered(paramConnectionCallbacks);
  }
  
  public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return UR.isConnectionFailedListenerRegistered(paramOnConnectionFailedListener);
  }
  
  public void registerConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    UR.registerConnectionCallbacks(paramConnectionCallbacks);
  }
  
  public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    UR.registerConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  public void removeGeofences(PendingIntent paramPendingIntent, LocationClient.OnRemoveGeofencesResultListener paramOnRemoveGeofencesResultListener)
  {
    try
    {
      UR.removeGeofences(paramPendingIntent, paramOnRemoveGeofencesResultListener);
      return;
    }
    catch (RemoteException paramPendingIntent)
    {
      throw new IllegalStateException(paramPendingIntent);
    }
  }
  
  public void removeGeofences(List<String> paramList, LocationClient.OnRemoveGeofencesResultListener paramOnRemoveGeofencesResultListener)
  {
    try
    {
      UR.removeGeofences(paramList, paramOnRemoveGeofencesResultListener);
      return;
    }
    catch (RemoteException paramList)
    {
      throw new IllegalStateException(paramList);
    }
  }
  
  public void removeLocationUpdates(PendingIntent paramPendingIntent)
  {
    try
    {
      UR.removeLocationUpdates(paramPendingIntent);
      return;
    }
    catch (RemoteException paramPendingIntent)
    {
      throw new IllegalStateException(paramPendingIntent);
    }
  }
  
  public void removeLocationUpdates(LocationListener paramLocationListener)
  {
    try
    {
      UR.removeLocationUpdates(paramLocationListener);
      return;
    }
    catch (RemoteException paramLocationListener)
    {
      throw new IllegalStateException(paramLocationListener);
    }
  }
  
  public void requestLocationUpdates(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent)
  {
    try
    {
      UR.requestLocationUpdates(paramLocationRequest, paramPendingIntent);
      return;
    }
    catch (RemoteException paramLocationRequest)
    {
      throw new IllegalStateException(paramLocationRequest);
    }
  }
  
  public void requestLocationUpdates(LocationRequest paramLocationRequest, LocationListener paramLocationListener)
  {
    try
    {
      UR.requestLocationUpdates(paramLocationRequest, paramLocationListener);
      return;
    }
    catch (RemoteException paramLocationRequest)
    {
      throw new IllegalStateException(paramLocationRequest);
    }
  }
  
  public void requestLocationUpdates(LocationRequest paramLocationRequest, LocationListener paramLocationListener, Looper paramLooper)
  {
    try
    {
      UR.requestLocationUpdates(paramLocationRequest, paramLocationListener, paramLooper);
      return;
    }
    catch (RemoteException paramLocationRequest)
    {
      throw new IllegalStateException(paramLocationRequest);
    }
  }
  
  public void setMockLocation(Location paramLocation)
  {
    try
    {
      UR.setMockLocation(paramLocation);
      return;
    }
    catch (RemoteException paramLocation)
    {
      throw new IllegalStateException(paramLocation);
    }
  }
  
  public void setMockMode(boolean paramBoolean)
  {
    try
    {
      UR.setMockMode(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  public void unregisterConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    UR.unregisterConnectionCallbacks(paramConnectionCallbacks);
  }
  
  public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    UR.unregisterConnectionFailedListener(paramOnConnectionFailedListener);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */