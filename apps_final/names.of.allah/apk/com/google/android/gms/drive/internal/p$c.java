package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi.DriveIdResult;
import com.google.android.gms.drive.DriveId;

class p$c
  implements DriveApi.DriveIdResult
{
  private final DriveId Hw;
  private final Status yw;
  
  public p$c(Status paramStatus, DriveId paramDriveId)
  {
    yw = paramStatus;
    Hw = paramDriveId;
  }
  
  public DriveId getDriveId()
  {
    return Hw;
  }
  
  public Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.p.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */