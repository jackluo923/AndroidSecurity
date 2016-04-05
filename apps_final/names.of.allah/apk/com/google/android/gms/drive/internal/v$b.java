package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.drive.DriveApi.MetadataBufferResult;
import com.google.android.gms.drive.MetadataBuffer;

class v$b
  extends c
{
  private final a.d<DriveApi.MetadataBufferResult> yO;
  
  public v$b(a.d<DriveApi.MetadataBufferResult> paramd)
  {
    yO = paramd;
  }
  
  public void a(OnListParentsResponse paramOnListParentsResponse)
  {
    paramOnListParentsResponse = new MetadataBuffer(paramOnListParentsResponse.gv(), null);
    yO.a(new p.e(Status.Ek, paramOnListParentsResponse, false));
  }
  
  public void o(Status paramStatus)
  {
    yO.a(new p.e(paramStatus, null, false));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.v.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */