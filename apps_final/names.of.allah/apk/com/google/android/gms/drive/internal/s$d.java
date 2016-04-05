package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi.ContentsResult;

abstract class s$d
  extends q<DriveApi.ContentsResult>
{
  private s$d(s params) {}
  
  public DriveApi.ContentsResult q(Status paramStatus)
  {
    return new p.a(paramStatus, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.s.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */