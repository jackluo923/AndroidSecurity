package com.google.android.gms.wearable.internal;

import android.net.Uri;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.DataItemBuffer;

class f$4
  extends d<DataItemBuffer>
{
  f$4(f paramf, Uri paramUri) {}
  
  protected void a(au paramau)
  {
    paramau.b(this, abh);
  }
  
  protected DataItemBuffer ar(Status paramStatus)
  {
    return new DataItemBuffer(DataHolder.af(paramStatus.getStatusCode()));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.f.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */