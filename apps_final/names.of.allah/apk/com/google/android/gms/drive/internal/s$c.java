package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.drive.DriveApi.ContentsResult;
import com.google.android.gms.drive.DriveFile.DownloadProgressListener;

class s$c
  extends c
{
  private final DriveFile.DownloadProgressListener Jb;
  private final a.d<DriveApi.ContentsResult> yO;
  
  public s$c(a.d<DriveApi.ContentsResult> paramd, DriveFile.DownloadProgressListener paramDownloadProgressListener)
  {
    yO = paramd;
    Jb = paramDownloadProgressListener;
  }
  
  public void a(OnContentsResponse paramOnContentsResponse)
  {
    yO.a(new p.a(Status.Ek, paramOnContentsResponse.go()));
  }
  
  public void a(OnDownloadProgressResponse paramOnDownloadProgressResponse)
  {
    if (Jb != null) {
      Jb.onProgress(paramOnDownloadProgressResponse.gp(), paramOnDownloadProgressResponse.gq());
    }
  }
  
  public void o(Status paramStatus)
  {
    yO.a(new p.a(paramStatus, null));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.s.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */