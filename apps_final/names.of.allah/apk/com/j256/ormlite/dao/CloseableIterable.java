package com.j256.ormlite.dao;

public abstract interface CloseableIterable<T>
  extends Iterable<T>
{
  public abstract CloseableIterator<T> closeableIterator();
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.CloseableIterable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */