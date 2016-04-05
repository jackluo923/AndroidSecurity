package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.wearable.DataApi.DataListener;
import java.util.HashMap;

class au$7
  extends a
{
  au$7(au paramau, DataApi.DataListener paramDataListener, a.d paramd) {}
  
  public void a(Status paramStatus)
  {
    if (!paramStatus.isSuccess()) {}
    synchronized (au.b(ame))
    {
      au.b(ame).remove(alC);
      amf.a(paramStatus);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.au.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */