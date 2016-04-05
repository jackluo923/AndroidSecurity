package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveFolder.DriveFileResult;
import com.google.android.gms.drive.MetadataChangeSet;

class u$1
  extends q<DriveFolder.DriveFileResult>
{
  u$1(u paramu, Contents paramContents, MetadataChangeSet paramMetadataChangeSet, int paramInt, boolean paramBoolean, String paramString) {}
  
  protected void a(r paramr)
  {
    if (IJ != null) {
      IJ.close();
    }
    paramr.gk().a(new CreateFileRequest(Jf.getDriveId(), Ja.gh(), IJ, Jc, Jd, Je), new u.a(this));
  }
  
  public DriveFolder.DriveFileResult s(Status paramStatus)
  {
    return new u.d(paramStatus, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.u.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */