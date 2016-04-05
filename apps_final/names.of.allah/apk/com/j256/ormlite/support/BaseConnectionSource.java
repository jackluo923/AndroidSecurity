package com.j256.ormlite.support;

import com.j256.ormlite.logger.Logger;
import java.sql.SQLException;

public abstract class BaseConnectionSource
  implements ConnectionSource
{
  private ThreadLocal<BaseConnectionSource.NestedConnection> specialConnection = new ThreadLocal();
  
  protected boolean clearSpecial(DatabaseConnection paramDatabaseConnection, Logger paramLogger)
  {
    BaseConnectionSource.NestedConnection localNestedConnection = (BaseConnectionSource.NestedConnection)specialConnection.get();
    if (paramDatabaseConnection != null)
    {
      if (localNestedConnection == null)
      {
        paramLogger.error("no connection has been saved when clear() called");
        return false;
      }
      if (connection == paramDatabaseConnection)
      {
        if (localNestedConnection.decrementAndGet() == 0) {
          specialConnection.set(null);
        }
        return true;
      }
      paramLogger.error("connection saved {} is not the one being cleared {}", connection, paramDatabaseConnection);
    }
    return false;
  }
  
  protected DatabaseConnection getSavedConnection()
  {
    BaseConnectionSource.NestedConnection localNestedConnection = (BaseConnectionSource.NestedConnection)specialConnection.get();
    if (localNestedConnection == null) {
      return null;
    }
    return connection;
  }
  
  public DatabaseConnection getSpecialConnection()
  {
    BaseConnectionSource.NestedConnection localNestedConnection = (BaseConnectionSource.NestedConnection)specialConnection.get();
    if (localNestedConnection == null) {
      return null;
    }
    return connection;
  }
  
  protected boolean isSavedConnection(DatabaseConnection paramDatabaseConnection)
  {
    BaseConnectionSource.NestedConnection localNestedConnection = (BaseConnectionSource.NestedConnection)specialConnection.get();
    if (localNestedConnection == null) {
      return false;
    }
    return connection == paramDatabaseConnection;
  }
  
  protected boolean saveSpecial(DatabaseConnection paramDatabaseConnection)
  {
    BaseConnectionSource.NestedConnection localNestedConnection = (BaseConnectionSource.NestedConnection)specialConnection.get();
    if (localNestedConnection == null)
    {
      specialConnection.set(new BaseConnectionSource.NestedConnection(paramDatabaseConnection));
      return true;
    }
    if (connection != paramDatabaseConnection) {
      throw new SQLException("trying to save connection " + paramDatabaseConnection + " but already have saved connection " + connection);
    }
    localNestedConnection.increment();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.support.BaseConnectionSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */