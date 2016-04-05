package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.location.LocationClient.OnAddGeofencesResultListener;
import com.google.android.gms.location.LocationClient.OnRemoveGeofencesResultListener;

final class jh$b
  extends je.a
{
  private LocationClient.OnAddGeofencesResultListener VS;
  private LocationClient.OnRemoveGeofencesResultListener VT;
  private jh VU;
  
  public jh$b(LocationClient.OnAddGeofencesResultListener paramOnAddGeofencesResultListener, jh paramjh)
  {
    VS = paramOnAddGeofencesResultListener;
    VT = null;
    VU = paramjh;
  }
  
  public jh$b(LocationClient.OnRemoveGeofencesResultListener paramOnRemoveGeofencesResultListener, jh paramjh)
  {
    VT = paramOnRemoveGeofencesResultListener;
    VS = null;
    VU = paramjh;
  }
  
  public final void onAddGeofencesResult(int paramInt, String[] paramArrayOfString)
  {
    if (VU == null)
    {
      Log.wtf("LocationClientImpl", "onAddGeofenceResult called multiple times");
      return;
    }
    jh localjh1 = VU;
    jh localjh2 = VU;
    localjh2.getClass();
    localjh1.a(new jh.a(localjh2, VS, paramInt, paramArrayOfString));
    VU = null;
    VS = null;
    VT = null;
  }
  
  public final void onRemoveGeofencesByPendingIntentResult(int paramInt, PendingIntent paramPendingIntent)
  {
    if (VU == null)
    {
      Log.wtf("LocationClientImpl", "onRemoveGeofencesByPendingIntentResult called multiple times");
      return;
    }
    jh localjh1 = VU;
    jh localjh2 = VU;
    localjh2.getClass();
    localjh1.a(new jh.d(localjh2, 1, VT, paramInt, paramPendingIntent));
    VU = null;
    VS = null;
    VT = null;
  }
  
  public final void onRemoveGeofencesByRequestIdsResult(int paramInt, String[] paramArrayOfString)
  {
    if (VU == null)
    {
      Log.wtf("LocationClientImpl", "onRemoveGeofencesByRequestIdsResult called multiple times");
      return;
    }
    jh localjh1 = VU;
    jh localjh2 = VU;
    localjh2.getClass();
    localjh1.a(new jh.d(localjh2, 2, VT, paramInt, paramArrayOfString));
    VU = null;
    VS = null;
    VT = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jh.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */