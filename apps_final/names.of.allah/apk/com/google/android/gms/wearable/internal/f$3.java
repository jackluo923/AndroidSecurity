package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.DataItemBuffer;

class f$3
  extends d<DataItemBuffer>
{
  f$3(f paramf) {}
  
  protected void a(au paramau)
  {
    paramau.o(this);
  }
  
  protected DataItemBuffer ar(Status paramStatus)
  {
    return new DataItemBuffer(DataHolder.af(paramStatus.getStatusCode()));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.f.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */