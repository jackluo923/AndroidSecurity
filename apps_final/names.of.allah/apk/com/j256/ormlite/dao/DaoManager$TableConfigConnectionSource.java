package com.j256.ormlite.dao;

import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.DatabaseTableConfig;

class DaoManager$TableConfigConnectionSource
{
  ConnectionSource connectionSource;
  DatabaseTableConfig<?> tableConfig;
  
  public DaoManager$TableConfigConnectionSource(ConnectionSource paramConnectionSource, DatabaseTableConfig<?> paramDatabaseTableConfig)
  {
    connectionSource = paramConnectionSource;
    tableConfig = paramDatabaseTableConfig;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {}
    do
    {
      return false;
      paramObject = (TableConfigConnectionSource)paramObject;
    } while ((!tableConfig.equals(tableConfig)) || (!connectionSource.equals(connectionSource)));
    return true;
  }
  
  public int hashCode()
  {
    return (tableConfig.hashCode() + 31) * 31 + connectionSource.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.DaoManager.TableConfigConnectionSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */