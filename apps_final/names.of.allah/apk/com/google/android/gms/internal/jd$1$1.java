package com.google.android.gms.internal;

import com.google.android.gms.location.LocationClient.OnAddGeofencesResultListener;
import com.google.android.gms.location.LocationStatusCodes;

class jd$1$1
  implements LocationClient.OnAddGeofencesResultListener
{
  jd$1$1(jd.1 param1) {}
  
  public void onAddGeofencesResult(int paramInt, String[] paramArrayOfString)
  {
    VC.b(LocationStatusCodes.cK(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jd.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */