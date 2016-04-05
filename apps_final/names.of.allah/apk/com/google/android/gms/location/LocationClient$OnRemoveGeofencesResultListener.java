package com.google.android.gms.location;

import android.app.PendingIntent;

public abstract interface LocationClient$OnRemoveGeofencesResultListener
{
  public abstract void onRemoveGeofencesByPendingIntentResult(int paramInt, PendingIntent paramPendingIntent);
  
  public abstract void onRemoveGeofencesByRequestIdsResult(int paramInt, String[] paramArrayOfString);
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationClient.OnRemoveGeofencesResultListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */