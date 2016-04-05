package com.google.android.gms.drive.internal;

import com.google.android.gms.drive.MetadataChangeSet;

class u$2
  extends u.c
{
  u$2(u paramu, MetadataChangeSet paramMetadataChangeSet)
  {
    super(paramu, null);
  }
  
  protected void a(r paramr)
  {
    paramr.gk().a(new CreateFolderRequest(Jf.getDriveId(), Ja.gh()), new u.b(this));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.u.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */