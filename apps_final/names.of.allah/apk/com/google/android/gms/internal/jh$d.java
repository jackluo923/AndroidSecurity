package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.location.LocationClient.OnRemoveGeofencesResultListener;
import com.google.android.gms.location.LocationStatusCodes;

final class jh$d
  extends hc<jf>.b<LocationClient.OnRemoveGeofencesResultListener>
{
  private final int CQ;
  private final String[] VQ;
  private final int VV;
  private final PendingIntent mPendingIntent;
  
  public jh$d(jh paramjh, int paramInt1, LocationClient.OnRemoveGeofencesResultListener paramOnRemoveGeofencesResultListener, int paramInt2, PendingIntent paramPendingIntent)
  {
    super(paramjh, paramOnRemoveGeofencesResultListener);
    if (paramInt1 == 1) {}
    for (;;)
    {
      gy.A(bool);
      VV = paramInt1;
      CQ = LocationStatusCodes.cJ(paramInt2);
      mPendingIntent = paramPendingIntent;
      VQ = null;
      return;
      bool = false;
    }
  }
  
  public jh$d(jh paramjh, int paramInt1, LocationClient.OnRemoveGeofencesResultListener paramOnRemoveGeofencesResultListener, int paramInt2, String[] paramArrayOfString)
  {
    super(paramjh, paramOnRemoveGeofencesResultListener);
    if (paramInt1 == 2) {}
    for (boolean bool = true;; bool = false)
    {
      gy.A(bool);
      VV = paramInt1;
      CQ = LocationStatusCodes.cJ(paramInt2);
      VQ = paramArrayOfString;
      mPendingIntent = null;
      return;
    }
  }
  
  protected final void a(LocationClient.OnRemoveGeofencesResultListener paramOnRemoveGeofencesResultListener)
  {
    if (paramOnRemoveGeofencesResultListener != null) {}
    switch (VV)
    {
    default: 
      Log.wtf("LocationClientImpl", "Unsupported action: " + VV);
      return;
    case 1: 
      paramOnRemoveGeofencesResultListener.onRemoveGeofencesByPendingIntentResult(CQ, mPendingIntent);
      return;
    }
    paramOnRemoveGeofencesResultListener.onRemoveGeofencesByRequestIdsResult(CQ, VQ);
  }
  
  protected final void fp() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jh.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */