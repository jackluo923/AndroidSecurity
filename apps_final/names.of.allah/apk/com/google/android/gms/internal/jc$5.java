package com.google.android.gms.internal;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;

class jc$5
  extends jc.a
{
  jc$5(jc paramjc, PendingIntent paramPendingIntent)
  {
    super(null);
  }
  
  protected void a(jh paramjh)
  {
    paramjh.removeLocationUpdates(Vr);
    b(Status.Ek);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jc.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */