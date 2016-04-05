package com.google.android.gms.drive.internal;

import com.google.android.gms.drive.DriveFile.DownloadProgressListener;

class s$1
  extends s.d
{
  s$1(s params, int paramInt, DriveFile.DownloadProgressListener paramDownloadProgressListener)
  {
    super(params, null);
  }
  
  protected void a(r paramr)
  {
    paramr.gk().a(new OpenContentsRequest(IZ.getDriveId(), IX), new s.c(this, IY));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.s.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */