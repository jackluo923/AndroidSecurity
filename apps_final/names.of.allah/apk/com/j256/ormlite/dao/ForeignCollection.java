package com.j256.ormlite.dao;

import java.util.Collection;

public abstract interface ForeignCollection<T>
  extends CloseableIterable<T>, Collection<T>
{
  public abstract boolean add(T paramT);
  
  public abstract void closeLastIterator();
  
  public abstract CloseableIterator<T> closeableIterator(int paramInt);
  
  public abstract CloseableWrappedIterable<T> getWrappedIterable();
  
  public abstract CloseableWrappedIterable<T> getWrappedIterable(int paramInt);
  
  public abstract boolean isEager();
  
  public abstract CloseableIterator<T> iterator(int paramInt);
  
  public abstract CloseableIterator<T> iteratorThrow();
  
  public abstract CloseableIterator<T> iteratorThrow(int paramInt);
  
  public abstract int refresh(T paramT);
  
  public abstract int refreshAll();
  
  public abstract int refreshCollection();
  
  public abstract int update(T paramT);
  
  public abstract int updateAll();
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.ForeignCollection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */