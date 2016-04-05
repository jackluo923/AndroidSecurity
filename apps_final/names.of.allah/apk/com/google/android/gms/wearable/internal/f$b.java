package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.DataApi.DeleteDataItemsResult;

public class f$b
  implements DataApi.DeleteDataItemsResult
{
  private final int alF;
  private final Status yw;
  
  public f$b(Status paramStatus, int paramInt)
  {
    yw = paramStatus;
    alF = paramInt;
  }
  
  public int getNumDeleted()
  {
    return alF;
  }
  
  public Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.f.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */