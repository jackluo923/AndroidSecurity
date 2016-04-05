package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.location.LocationClient.OnRemoveGeofencesResultListener;
import com.google.android.gms.location.LocationStatusCodes;

class jd$2$1
  implements LocationClient.OnRemoveGeofencesResultListener
{
  jd$2$1(jd.2 param2) {}
  
  public void onRemoveGeofencesByPendingIntentResult(int paramInt, PendingIntent paramPendingIntent)
  {
    VD.b(LocationStatusCodes.cK(paramInt));
  }
  
  public void onRemoveGeofencesByRequestIdsResult(int paramInt, String[] paramArrayOfString)
  {
    Log.wtf("GeofencingImpl", "Request ID callback shouldn't have been called");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jd.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */