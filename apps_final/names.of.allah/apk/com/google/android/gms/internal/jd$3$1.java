package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.location.LocationClient.OnRemoveGeofencesResultListener;
import com.google.android.gms.location.LocationStatusCodes;

class jd$3$1
  implements LocationClient.OnRemoveGeofencesResultListener
{
  jd$3$1(jd.3 param3) {}
  
  public void onRemoveGeofencesByPendingIntentResult(int paramInt, PendingIntent paramPendingIntent)
  {
    Log.wtf("GeofencingImpl", "PendingIntent callback shouldn't have been called");
  }
  
  public void onRemoveGeofencesByRequestIdsResult(int paramInt, String[] paramArrayOfString)
  {
    VF.b(LocationStatusCodes.cK(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jd.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */