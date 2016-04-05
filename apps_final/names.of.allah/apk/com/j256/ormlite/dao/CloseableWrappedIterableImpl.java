package com.j256.ormlite.dao;

import java.sql.SQLException;

public class CloseableWrappedIterableImpl<T>
  implements CloseableWrappedIterable<T>
{
  private final CloseableIterable<T> iterable;
  private CloseableIterator<T> iterator;
  
  public CloseableWrappedIterableImpl(CloseableIterable<T> paramCloseableIterable)
  {
    iterable = paramCloseableIterable;
  }
  
  public void close()
  {
    if (iterator != null)
    {
      iterator.close();
      iterator = null;
    }
  }
  
  public CloseableIterator<T> closeableIterator()
  {
    try
    {
      close();
      iterator = iterable.closeableIterator();
      return iterator;
    }
    catch (SQLException localSQLException)
    {
      for (;;) {}
    }
  }
  
  public CloseableIterator<T> iterator()
  {
    return closeableIterator();
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.CloseableWrappedIterableImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */