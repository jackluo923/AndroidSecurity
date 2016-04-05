package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;

public class jc
  implements FusedLocationProviderApi
{
  public Location getLastLocation(GoogleApiClient paramGoogleApiClient)
  {
    paramGoogleApiClient = LocationServices.e(paramGoogleApiClient);
    try
    {
      paramGoogleApiClient = paramGoogleApiClient.getLastLocation();
      return paramGoogleApiClient;
    }
    catch (Exception paramGoogleApiClient) {}
    return null;
  }
  
  public PendingResult<Status> removeLocationUpdates(GoogleApiClient paramGoogleApiClient, PendingIntent paramPendingIntent)
  {
    return paramGoogleApiClient.b(new jc.5(this, paramPendingIntent));
  }
  
  public PendingResult<Status> removeLocationUpdates(GoogleApiClient paramGoogleApiClient, LocationListener paramLocationListener)
  {
    return paramGoogleApiClient.b(new jc.4(this, paramLocationListener));
  }
  
  public PendingResult<Status> requestLocationUpdates(GoogleApiClient paramGoogleApiClient, LocationRequest paramLocationRequest, PendingIntent paramPendingIntent)
  {
    return paramGoogleApiClient.b(new jc.3(this, paramLocationRequest, paramPendingIntent));
  }
  
  public PendingResult<Status> requestLocationUpdates(GoogleApiClient paramGoogleApiClient, LocationRequest paramLocationRequest, LocationListener paramLocationListener)
  {
    return paramGoogleApiClient.b(new jc.1(this, paramLocationRequest, paramLocationListener));
  }
  
  public PendingResult<Status> requestLocationUpdates(GoogleApiClient paramGoogleApiClient, LocationRequest paramLocationRequest, LocationListener paramLocationListener, Looper paramLooper)
  {
    return paramGoogleApiClient.b(new jc.2(this, paramLocationRequest, paramLocationListener, paramLooper));
  }
  
  public PendingResult<Status> setMockLocation(GoogleApiClient paramGoogleApiClient, Location paramLocation)
  {
    return paramGoogleApiClient.b(new jc.7(this, paramLocation));
  }
  
  public PendingResult<Status> setMockMode(GoogleApiClient paramGoogleApiClient, boolean paramBoolean)
  {
    return paramGoogleApiClient.b(new jc.6(this, paramBoolean));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */