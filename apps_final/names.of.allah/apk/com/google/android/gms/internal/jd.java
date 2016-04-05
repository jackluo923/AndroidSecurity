package com.google.android.gms.internal;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.Geofence;
import com.google.android.gms.location.GeofencingApi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class jd
  implements GeofencingApi
{
  public PendingResult<Status> addGeofences(GoogleApiClient paramGoogleApiClient, List<Geofence> paramList, PendingIntent paramPendingIntent)
  {
    ArrayList localArrayList;
    if (paramList != null)
    {
      localArrayList = new ArrayList(paramList.size());
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Geofence localGeofence = (Geofence)paramList.next();
        hn.b(localGeofence instanceof ji, "Geofence must be created using Geofence.Builder.");
        localArrayList.add((ji)localGeofence);
      }
    }
    for (paramList = localArrayList;; paramList = null) {
      return paramGoogleApiClient.b(new jd.1(this, paramList, paramPendingIntent));
    }
  }
  
  public PendingResult<Status> removeGeofences(GoogleApiClient paramGoogleApiClient, PendingIntent paramPendingIntent)
  {
    return paramGoogleApiClient.b(new jd.2(this, paramPendingIntent));
  }
  
  public PendingResult<Status> removeGeofences(GoogleApiClient paramGoogleApiClient, List<String> paramList)
  {
    return paramGoogleApiClient.b(new jd.3(this, paramList));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */