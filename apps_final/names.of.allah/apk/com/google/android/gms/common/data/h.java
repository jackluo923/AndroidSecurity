package com.google.android.gms.common.data;

import java.util.NoSuchElementException;

public class h<T>
  extends c<T>
{
  private T ET;
  
  public h(DataBuffer<T> paramDataBuffer)
  {
    super(paramDataBuffer);
  }
  
  public T next()
  {
    if (!hasNext()) {
      throw new NoSuchElementException("Cannot advance the iterator beyond " + Ey);
    }
    Ey += 1;
    if (Ey == 0)
    {
      ET = Ex.get(0);
      if (!(ET instanceof d)) {
        throw new IllegalStateException("DataBuffer reference of type " + ET.getClass() + " is not movable");
      }
    }
    else
    {
      ((d)ET).ac(Ey);
    }
    return (T)ET;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */