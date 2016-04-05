package com.j256.ormlite.dao;

import com.j256.ormlite.support.DatabaseResults;
import java.util.Iterator;

public abstract interface CloseableIterator<T>
  extends Iterator<T>
{
  public abstract void close();
  
  public abstract void closeQuietly();
  
  public abstract T current();
  
  public abstract T first();
  
  public abstract DatabaseResults getRawResults();
  
  public abstract T moveRelative(int paramInt);
  
  public abstract void moveToNext();
  
  public abstract T nextThrow();
  
  public abstract T previous();
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.CloseableIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */