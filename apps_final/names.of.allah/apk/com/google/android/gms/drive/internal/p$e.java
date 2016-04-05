package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi.MetadataBufferResult;
import com.google.android.gms.drive.MetadataBuffer;

class p$e
  implements DriveApi.MetadataBufferResult
{
  private final MetadataBuffer IL;
  private final boolean IM;
  private final Status yw;
  
  public p$e(Status paramStatus, MetadataBuffer paramMetadataBuffer, boolean paramBoolean)
  {
    yw = paramStatus;
    IL = paramMetadataBuffer;
    IM = paramBoolean;
  }
  
  public MetadataBuffer getMetadataBuffer()
  {
    return IL;
  }
  
  public Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.p.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */