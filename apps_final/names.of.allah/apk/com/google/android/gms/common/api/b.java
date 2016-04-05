package com.google.android.gms.common.api;

import com.google.android.gms.common.data.DataHolder;

public abstract class b
  implements Releasable, Result
{
  protected final DataHolder DD;
  protected final Status yw;
  
  public b(DataHolder paramDataHolder)
  {
    yw = new Status(paramDataHolder.getStatusCode());
    DD = paramDataHolder;
  }
  
  public Status getStatus()
  {
    return yw;
  }
  
  public void release()
  {
    if (DD != null) {
      DD.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */