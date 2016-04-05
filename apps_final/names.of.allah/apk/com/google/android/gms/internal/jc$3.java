package com.google.android.gms.internal;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationRequest;

class jc$3
  extends jc.a
{
  jc$3(jc paramjc, LocationRequest paramLocationRequest, PendingIntent paramPendingIntent)
  {
    super(null);
  }
  
  protected void a(jh paramjh)
  {
    paramjh.requestLocationUpdates(Vt, Vr);
    b(Status.Ek);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jc.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */