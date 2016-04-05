package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.drive.DriveFolder.DriveFileResult;

class u$a
  extends c
{
  private final a.d<DriveFolder.DriveFileResult> yO;
  
  public u$a(a.d<DriveFolder.DriveFileResult> paramd)
  {
    yO = paramd;
  }
  
  public void a(OnDriveIdResponse paramOnDriveIdResponse)
  {
    yO.a(new u.d(Status.Ek, new s(paramOnDriveIdResponse.getDriveId())));
  }
  
  public void o(Status paramStatus)
  {
    yO.a(new u.d(paramStatus, null));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.u.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */