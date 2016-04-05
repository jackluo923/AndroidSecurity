package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi.ContentsResult;

abstract class p$g
  extends q<DriveApi.ContentsResult>
{
  p$g(p paramp) {}
  
  public DriveApi.ContentsResult q(Status paramStatus)
  {
    return new p.a(paramStatus, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.p.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */