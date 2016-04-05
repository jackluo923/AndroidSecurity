package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;

class jc$1
  extends jc.a
{
  jc$1(jc paramjc, LocationRequest paramLocationRequest, LocationListener paramLocationListener)
  {
    super(null);
  }
  
  protected void a(jh paramjh)
  {
    paramjh.requestLocationUpdates(Vt, Vu);
    b(Status.Ek);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jc.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */