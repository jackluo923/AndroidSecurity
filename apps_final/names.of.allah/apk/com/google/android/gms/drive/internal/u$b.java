package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.drive.DriveFolder.DriveFolderResult;

class u$b
  extends c
{
  private final a.d<DriveFolder.DriveFolderResult> yO;
  
  public u$b(a.d<DriveFolder.DriveFolderResult> paramd)
  {
    yO = paramd;
  }
  
  public void a(OnDriveIdResponse paramOnDriveIdResponse)
  {
    yO.a(new u.e(Status.Ek, new u(paramOnDriveIdResponse.getDriveId())));
  }
  
  public void o(Status paramStatus)
  {
    yO.a(new u.e(paramStatus, null));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.u.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */