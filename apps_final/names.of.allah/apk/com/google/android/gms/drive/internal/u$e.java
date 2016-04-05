package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.DriveFolder.DriveFolderResult;

class u$e
  implements DriveFolder.DriveFolderResult
{
  private final DriveFolder Jh;
  private final Status yw;
  
  public u$e(Status paramStatus, DriveFolder paramDriveFolder)
  {
    yw = paramStatus;
    Jh = paramDriveFolder;
  }
  
  public DriveFolder getDriveFolder()
  {
    return Jh;
  }
  
  public Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.u.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */