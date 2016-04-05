package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveFolder.DriveFolderResult;

abstract class u$c
  extends q<DriveFolder.DriveFolderResult>
{
  private u$c(u paramu) {}
  
  public DriveFolder.DriveFolderResult t(Status paramStatus)
  {
    return new u.e(paramStatus, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.u.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */