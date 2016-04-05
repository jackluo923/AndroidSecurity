package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.drive.DriveApi.MetadataBufferResult;
import com.google.android.gms.drive.MetadataBuffer;

class p$h
  extends c
{
  private final a.d<DriveApi.MetadataBufferResult> yO;
  
  public p$h(a.d<DriveApi.MetadataBufferResult> paramd)
  {
    yO = paramd;
  }
  
  public void a(OnListEntriesResponse paramOnListEntriesResponse)
  {
    MetadataBuffer localMetadataBuffer = new MetadataBuffer(paramOnListEntriesResponse.gt(), null);
    yO.a(new p.e(Status.Ek, localMetadataBuffer, paramOnListEntriesResponse.gu()));
  }
  
  public void o(Status paramStatus)
  {
    yO.a(new p.e(paramStatus, null, false));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.p.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */