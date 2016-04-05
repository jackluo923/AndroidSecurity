package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveApi.ContentsResult;

public class p$a
  implements DriveApi.ContentsResult
{
  private final Contents HD;
  private final Status yw;
  
  public p$a(Status paramStatus, Contents paramContents)
  {
    yw = paramStatus;
    HD = paramContents;
  }
  
  public Contents getContents()
  {
    return HD;
  }
  
  public Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.p.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */