package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveResource.MetadataResult;

abstract class v$a
  extends q<DriveResource.MetadataResult>
{
  private v$a(v paramv) {}
  
  public DriveResource.MetadataResult u(Status paramStatus)
  {
    return new v.e(paramStatus, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.v.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */