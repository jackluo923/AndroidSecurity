package com.google.android.gms.common.data;

import com.google.android.gms.internal.hn;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class c<T>
  implements Iterator<T>
{
  protected final DataBuffer<T> Ex;
  protected int Ey;
  
  public c(DataBuffer<T> paramDataBuffer)
  {
    Ex = ((DataBuffer)hn.f(paramDataBuffer));
    Ey = -1;
  }
  
  public boolean hasNext()
  {
    return Ey < Ex.getCount() - 1;
  }
  
  public T next()
  {
    if (!hasNext()) {
      throw new NoSuchElementException("Cannot advance the iterator beyond " + Ey);
    }
    DataBuffer localDataBuffer = Ex;
    int i = Ey + 1;
    Ey = i;
    return (T)localDataBuffer.get(i);
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */