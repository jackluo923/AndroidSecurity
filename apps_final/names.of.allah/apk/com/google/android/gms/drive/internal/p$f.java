package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.drive.DriveApi.ContentsResult;

class p$f
  extends c
{
  private final a.d<DriveApi.ContentsResult> yO;
  
  public p$f(a.d<DriveApi.ContentsResult> paramd)
  {
    yO = paramd;
  }
  
  public void a(OnContentsResponse paramOnContentsResponse)
  {
    yO.a(new p.a(Status.Ek, paramOnContentsResponse.go()));
  }
  
  public void o(Status paramStatus)
  {
    yO.a(new p.a(paramStatus, null));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.p.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */