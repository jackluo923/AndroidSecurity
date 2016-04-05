package com.j256.ormlite.android;

import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.db.SqliteAndroidDatabaseType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.BaseConnectionSource;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.DatabaseConnectionProxyFactory;

public class AndroidConnectionSource
  extends BaseConnectionSource
  implements ConnectionSource
{
  private static DatabaseConnectionProxyFactory connectionProxyFactory;
  private static final Logger logger = LoggerFactory.getLogger(AndroidConnectionSource.class);
  private boolean cancelQueriesEnabled = false;
  private DatabaseConnection connection = null;
  private final DatabaseType databaseType = new SqliteAndroidDatabaseType();
  private final SQLiteOpenHelper helper;
  private volatile boolean isOpen = true;
  private final SQLiteDatabase sqliteDatabase;
  
  public AndroidConnectionSource(SQLiteDatabase paramSQLiteDatabase)
  {
    helper = null;
    sqliteDatabase = paramSQLiteDatabase;
  }
  
  public AndroidConnectionSource(SQLiteOpenHelper paramSQLiteOpenHelper)
  {
    helper = paramSQLiteOpenHelper;
    sqliteDatabase = null;
  }
  
  public static void setDatabaseConnectionProxyFactory(DatabaseConnectionProxyFactory paramDatabaseConnectionProxyFactory)
  {
    connectionProxyFactory = paramDatabaseConnectionProxyFactory;
  }
  
  public void clearSpecialConnection(DatabaseConnection paramDatabaseConnection)
  {
    clearSpecial(paramDatabaseConnection, logger);
  }
  
  public void close()
  {
    isOpen = false;
  }
  
  public void closeQuietly()
  {
    close();
  }
  
  public DatabaseType getDatabaseType()
  {
    return databaseType;
  }
  
  public DatabaseConnection getReadOnlyConnection()
  {
    return getReadWriteConnection();
  }
  
  public DatabaseConnection getReadWriteConnection()
  {
    Object localObject = getSavedConnection();
    if (localObject != null) {
      return (DatabaseConnection)localObject;
    }
    if (connection == null) {
      if (sqliteDatabase != null) {}
    }
    for (;;)
    {
      try
      {
        localObject = helper.getWritableDatabase();
        connection = new AndroidDatabaseConnection((SQLiteDatabase)localObject, true, cancelQueriesEnabled);
        if (connectionProxyFactory != null) {
          connection = connectionProxyFactory.createProxy(connection);
        }
        logger.trace("created connection {} for db {}, helper {}", connection, localObject, helper);
        return connection;
      }
      catch (SQLException localSQLException)
      {
        throw SqlExceptionUtil.create("Getting a writable database from helper " + helper + " failed", localSQLException);
      }
      SQLiteDatabase localSQLiteDatabase = sqliteDatabase;
      continue;
      logger.trace("{}: returning read-write connection {}, helper {}", this, connection, helper);
    }
  }
  
  public boolean isCancelQueriesEnabled()
  {
    return cancelQueriesEnabled;
  }
  
  public boolean isOpen()
  {
    return isOpen;
  }
  
  public void releaseConnection(DatabaseConnection paramDatabaseConnection) {}
  
  public boolean saveSpecialConnection(DatabaseConnection paramDatabaseConnection)
  {
    return saveSpecial(paramDatabaseConnection);
  }
  
  public void setCancelQueriesEnabled(boolean paramBoolean)
  {
    cancelQueriesEnabled = paramBoolean;
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "@" + Integer.toHexString(super.hashCode());
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.android.AndroidConnectionSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */