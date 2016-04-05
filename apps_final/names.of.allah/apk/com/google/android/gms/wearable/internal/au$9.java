package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.wearable.NodeApi.NodeListener;
import java.util.HashMap;

class au$9
  extends a
{
  au$9(au paramau, NodeApi.NodeListener paramNodeListener, a.d paramd) {}
  
  public void a(Status paramStatus)
  {
    if (!paramStatus.isSuccess()) {}
    synchronized (au.d(ame))
    {
      au.d(ame).remove(alV);
      amf.a(paramStatus);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.au.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */