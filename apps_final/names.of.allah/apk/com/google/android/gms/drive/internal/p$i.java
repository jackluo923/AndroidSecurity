package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi.MetadataBufferResult;

abstract class p$i
  extends q<DriveApi.MetadataBufferResult>
{
  p$i(p paramp) {}
  
  public DriveApi.MetadataBufferResult r(Status paramStatus)
  {
    return new p.e(paramStatus, null, false);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.p.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */