package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.MessageApi.SendMessageResult;

public class ae$a
  implements MessageApi.SendMessageResult
{
  private final int qX;
  private final Status yw;
  
  public ae$a(Status paramStatus, int paramInt)
  {
    yw = paramStatus;
    qX = paramInt;
  }
  
  public int getRequestId()
  {
    return qX;
  }
  
  public Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.ae.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */