package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveResource.MetadataResult;
import com.google.android.gms.drive.Metadata;

class v$e
  implements DriveResource.MetadataResult
{
  private final Metadata Jj;
  private final Status yw;
  
  public v$e(Status paramStatus, Metadata paramMetadata)
  {
    yw = paramStatus;
    Jj = paramMetadata;
  }
  
  public Metadata getMetadata()
  {
    return Jj;
  }
  
  public Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.v.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */