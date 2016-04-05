package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.CloseableIterator;
import com.j256.ormlite.dao.GenericRawResults;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.DatabaseResults;
import java.util.ArrayList;
import java.util.List;

public class RawResultsImpl<T>
  implements GenericRawResults<T>
{
  private final String[] columnNames;
  private SelectIterator<T, Void> iterator;
  
  public RawResultsImpl(ConnectionSource paramConnectionSource, DatabaseConnection paramDatabaseConnection, String paramString, Class<?> paramClass, CompiledStatement paramCompiledStatement, GenericRowMapper<T> paramGenericRowMapper, ObjectCache paramObjectCache)
  {
    iterator = new SelectIterator(paramClass, null, paramGenericRowMapper, paramConnectionSource, paramDatabaseConnection, paramCompiledStatement, paramString, paramObjectCache);
    columnNames = iterator.getRawResults().getColumnNames();
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
    return iterator;
  }
  
  public String[] getColumnNames()
  {
    return columnNames;
  }
  
  public T getFirstResult()
  {
    try
    {
      if (iterator.hasNextThrow())
      {
        Object localObject1 = iterator.nextThrow();
        return (T)localObject1;
      }
      return null;
    }
    finally
    {
      close();
    }
  }
  
  public int getNumberColumns()
  {
    return columnNames.length;
  }
  
  public List<T> getResults()
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      if (iterator.hasNext()) {
        localArrayList.add(iterator.next());
      }
      return localList;
    }
    finally
    {
      iterator.close();
    }
  }
  
  public CloseableIterator<T> iterator()
  {
    return iterator;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.RawResultsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */