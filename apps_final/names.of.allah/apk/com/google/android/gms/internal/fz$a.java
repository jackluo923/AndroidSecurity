package com.google.android.gms.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

abstract class fz$a<T>
  implements Result
{
  private final Status yw;
  protected final T yx;
  
  public fz$a(Status paramStatus, T paramT)
  {
    yw = paramStatus;
    yx = paramT;
  }
  
  public Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fz.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */