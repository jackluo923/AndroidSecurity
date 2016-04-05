package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;

public abstract class hc$d<TListener>
  extends hc<T>.b<TListener>
{
  private final DataHolder DD;
  
  public hc$d(TListener paramTListener, DataHolder paramDataHolder)
  {
    super(paramTListener, paramDataHolder);
    DataHolder localDataHolder;
    DD = localDataHolder;
  }
  
  protected abstract void a(TListener paramTListener, DataHolder paramDataHolder);
  
  protected final void d(TListener paramTListener)
  {
    a(paramTListener, DD);
  }
  
  protected void fp()
  {
    if (DD != null) {
      DD.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hc.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */