package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.drive.DriveResource.MetadataResult;

class v$d
  extends c
{
  private final a.d<DriveResource.MetadataResult> yO;
  
  public v$d(a.d<DriveResource.MetadataResult> paramd)
  {
    yO = paramd;
  }
  
  public void a(OnMetadataResponse paramOnMetadataResponse)
  {
    yO.a(new v.e(Status.Ek, new l(paramOnMetadataResponse.gw())));
  }
  
  public void o(Status paramStatus)
  {
    yO.a(new v.e(paramStatus, null));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.v.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */