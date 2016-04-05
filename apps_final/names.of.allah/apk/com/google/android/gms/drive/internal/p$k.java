package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.drive.Drive;

class p$k
  extends p.j
{
  p$k(GoogleApiClient paramGoogleApiClient, Status paramStatus)
  {
    a(new a.c(((r)paramGoogleApiClient.a(Drive.yE)).getLooper()));
    b(paramStatus);
  }
  
  protected void a(r paramr) {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.p.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */