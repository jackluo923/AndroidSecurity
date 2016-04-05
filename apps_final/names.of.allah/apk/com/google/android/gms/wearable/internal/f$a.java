package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.DataApi.DataItemResult;
import com.google.android.gms.wearable.DataItem;

public class f$a
  implements DataApi.DataItemResult
{
  private final DataItem alE;
  private final Status yw;
  
  public f$a(Status paramStatus, DataItem paramDataItem)
  {
    yw = paramStatus;
    alE = paramDataItem;
  }
  
  public DataItem getDataItem()
  {
    return alE;
  }
  
  public Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */