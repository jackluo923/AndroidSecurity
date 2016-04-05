package com.google.android.gms.internal;

import com.google.android.gms.location.LocationClient.OnAddGeofencesResultListener;
import com.google.android.gms.location.LocationStatusCodes;

final class jh$a
  extends hc<jf>.b<LocationClient.OnAddGeofencesResultListener>
{
  private final int CQ;
  private final String[] VQ;
  
  public jh$a(jh paramjh, LocationClient.OnAddGeofencesResultListener paramOnAddGeofencesResultListener, int paramInt, String[] paramArrayOfString)
  {
    super(paramjh, paramOnAddGeofencesResultListener);
    CQ = LocationStatusCodes.cJ(paramInt);
    VQ = paramArrayOfString;
  }
  
  protected final void a(LocationClient.OnAddGeofencesResultListener paramOnAddGeofencesResultListener)
  {
    if (paramOnAddGeofencesResultListener != null) {
      paramOnAddGeofencesResultListener.onAddGeofencesResult(CQ, VQ);
    }
  }
  
  protected final void fp() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jh.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */