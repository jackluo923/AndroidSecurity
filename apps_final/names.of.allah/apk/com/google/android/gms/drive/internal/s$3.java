package com.google.android.gms.drive.internal;

import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.MetadataChangeSet;

class s$3
  extends s.a
{
  s$3(s params, Contents paramContents, MetadataChangeSet paramMetadataChangeSet)
  {
    super(params, null);
  }
  
  protected void a(r paramr)
  {
    IJ.close();
    paramr.gk().a(new CloseContentsAndUpdateMetadataRequest(IZ.Hw, Ja.gh(), IJ, false, null), new aw(this));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.s.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */