package com.google.android.gms.drive.internal;

import com.google.android.gms.drive.Contents;

class s$2
  extends s.b
{
  s$2(s params, Contents paramContents)
  {
    super(params, null);
  }
  
  protected void a(r paramr)
  {
    IJ.close();
    paramr.gk().a(new CloseContentsRequest(IJ, true), new aw(this));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.s.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */