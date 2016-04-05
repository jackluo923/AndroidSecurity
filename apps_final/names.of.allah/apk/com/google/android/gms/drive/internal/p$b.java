package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.drive.DriveApi.DriveIdResult;

class p$b
  extends c
{
  private final a.d<DriveApi.DriveIdResult> yO;
  
  public p$b(a.d<DriveApi.DriveIdResult> paramd)
  {
    yO = paramd;
  }
  
  public void a(OnDriveIdResponse paramOnDriveIdResponse)
  {
    yO.a(new p.c(Status.Ek, paramOnDriveIdResponse.getDriveId()));
  }
  
  public void a(OnMetadataResponse paramOnMetadataResponse)
  {
    yO.a(new p.c(Status.Ek, new l(paramOnMetadataResponse.gw()).getDriveId()));
  }
  
  public void o(Status paramStatus)
  {
    yO.a(new p.c(paramStatus, null));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.p.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */