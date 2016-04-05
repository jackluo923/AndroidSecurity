package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.DataItem;

public class g
  implements DataEvent
{
  private int AQ;
  private DataItem alE;
  
  public g(DataEvent paramDataEvent)
  {
    AQ = paramDataEvent.getType();
    alE = ((DataItem)paramDataEvent.getDataItem().freeze());
  }
  
  public DataItem getDataItem()
  {
    return alE;
  }
  
  public int getType()
  {
    return AQ;
  }
  
  public boolean isDataValid()
  {
    return true;
  }
  
  public DataEvent nk()
  {
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */