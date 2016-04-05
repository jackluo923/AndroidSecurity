package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationListener;

class jc$4
  extends jc.a
{
  jc$4(jc paramjc, LocationListener paramLocationListener)
  {
    super(null);
  }
  
  protected void a(jh paramjh)
  {
    paramjh.removeLocationUpdates(Vu);
    b(Status.Ek);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jc.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */