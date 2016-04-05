package com.j256.ormlite.dao;

import com.j256.ormlite.stmt.PreparedQuery;
import java.util.Iterator;

class BaseDaoImpl$3
  implements CloseableIterable<T>
{
  BaseDaoImpl$3(BaseDaoImpl paramBaseDaoImpl, PreparedQuery paramPreparedQuery) {}
  
  public CloseableIterator<T> closeableIterator()
  {
    try
    {
      CloseableIterator localCloseableIterator = BaseDaoImpl.access$100(this$0, val$preparedQuery, -1);
      return localCloseableIterator;
    }
    catch (Exception localException)
    {
      throw new IllegalStateException("Could not build prepared-query iterator for " + this$0.dataClass, localException);
    }
  }
  
  public Iterator<T> iterator()
  {
    return closeableIterator();
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.BaseDaoImpl.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */