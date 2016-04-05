package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.wearable.MessageApi.MessageListener;
import java.util.HashMap;

class au$8
  extends a
{
  au$8(au paramau, MessageApi.MessageListener paramMessageListener, a.d paramd) {}
  
  public void a(Status paramStatus)
  {
    if (!paramStatus.isSuccess()) {}
    synchronized (au.c(ame))
    {
      au.c(ame).remove(alR);
      amf.a(paramStatus);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.au.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */