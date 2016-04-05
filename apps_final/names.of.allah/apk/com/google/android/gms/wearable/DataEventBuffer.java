package com.google.android.gms.wearable;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.g;
import com.google.android.gms.wearable.internal.h;

public class DataEventBuffer
  extends g<DataEvent>
  implements Result
{
  private final Status yw;
  
  public DataEventBuffer(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
    yw = new Status(paramDataHolder.getStatusCode());
  }
  
  protected String eU()
  {
    return "path";
  }
  
  public Status getStatus()
  {
    return yw;
  }
  
  protected DataEvent m(int paramInt1, int paramInt2)
  {
    return new h(DD, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.DataEventBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */