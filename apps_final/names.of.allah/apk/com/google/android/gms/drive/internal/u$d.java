package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFolder.DriveFileResult;

class u$d
  implements DriveFolder.DriveFileResult
{
  private final DriveFile Jg;
  private final Status yw;
  
  public u$d(Status paramStatus, DriveFile paramDriveFile)
  {
    yw = paramStatus;
    Jg = paramDriveFile;
  }
  
  public DriveFile getDriveFile()
  {
    return Jg;
  }
  
  public Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.u.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */