package com.google.android.gms.internal;

import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;

class jc$2
  extends jc.a
{
  jc$2(jc paramjc, LocationRequest paramLocationRequest, LocationListener paramLocationListener, Looper paramLooper)
  {
    super(null);
  }
  
  protected void a(jh paramjh)
  {
    paramjh.requestLocationUpdates(Vt, Vu, Vw);
    b(Status.Ek);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jc.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */