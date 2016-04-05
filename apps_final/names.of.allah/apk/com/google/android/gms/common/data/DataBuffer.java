package com.google.android.gms.common.data;

import android.os.Bundle;
import com.google.android.gms.common.api.Releasable;
import java.util.Iterator;

public abstract class DataBuffer<T>
  implements Releasable, Iterable<T>
{
  protected final DataHolder DD;
  
  public DataBuffer(DataHolder paramDataHolder)
  {
    DD = paramDataHolder;
    if (DD != null) {
      DD.b(this);
    }
  }
  
  @Deprecated
  public final void close()
  {
    release();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Bundle eP()
  {
    return DD.eP();
  }
  
  public abstract T get(int paramInt);
  
  public int getCount()
  {
    if (DD == null) {
      return 0;
    }
    return DD.getCount();
  }
  
  @Deprecated
  public boolean isClosed()
  {
    if (DD == null) {
      return true;
    }
    return DD.isClosed();
  }
  
  public Iterator<T> iterator()
  {
    return new c(this);
  }
  
  public void release()
  {
    if (DD != null) {
      DD.close();
    }
  }
  
  public Iterator<T> singleRefIterator()
  {
    return new h(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.DataBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */