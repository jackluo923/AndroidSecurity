package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi.MetadataBufferResult;

abstract class v$c
  extends q<DriveApi.MetadataBufferResult>
{
  private v$c(v paramv) {}
  
  public DriveApi.MetadataBufferResult r(Status paramStatus)
  {
    return new p.e(paramStatus, null, false);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.v.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */