package com.j256.ormlite.android.apptools;

import android.content.Context;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import com.j256.ormlite.android.AndroidConnectionSource;
import com.j256.ormlite.android.AndroidDatabaseConnection;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.DatabaseTableConfigLoader;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.SQLException;

public abstract class OrmLiteSqliteOpenHelper
  extends SQLiteOpenHelper
{
  protected static Logger logger = LoggerFactory.getLogger(OrmLiteSqliteOpenHelper.class);
  protected boolean cancelQueriesEnabled;
  protected AndroidConnectionSource connectionSource = new AndroidConnectionSource(this);
  private volatile boolean isOpen = true;
  
  public OrmLiteSqliteOpenHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    super(paramContext, paramString, paramCursorFactory, paramInt);
    logger.trace("{}: constructed connectionSource {}", this, connectionSource);
  }
  
  public OrmLiteSqliteOpenHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt1, int paramInt2)
  {
    this(paramContext, paramString, paramCursorFactory, paramInt1, openFileId(paramContext, paramInt2));
  }
  
  public OrmLiteSqliteOpenHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt, File paramFile)
  {
    this(paramContext, paramString, paramCursorFactory, paramInt, openFile(paramFile));
  }
  
  public OrmLiteSqliteOpenHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt, InputStream paramInputStream)
  {
    super(paramContext, paramString, paramCursorFactory, paramInt);
    if (paramInputStream == null) {
      return;
    }
    try
    {
      DaoManager.addCachedDatabaseConfigs(DatabaseTableConfigLoader.loadDatabaseConfigFromReader(new BufferedReader(new InputStreamReader(paramInputStream), 4096)));
      try
      {
        paramInputStream.close();
        return;
      }
      catch (IOException paramContext)
      {
        return;
      }
      try
      {
        paramInputStream.close();
        throw paramContext;
      }
      catch (IOException paramString)
      {
        for (;;) {}
      }
    }
    catch (SQLException paramContext)
    {
      paramContext = paramContext;
      throw new IllegalStateException("Could not load object config file", paramContext);
    }
    finally {}
  }
  
  private static InputStream openFile(File paramFile)
  {
    if (paramFile == null) {
      return null;
    }
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramFile);
      return localFileInputStream;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      throw new IllegalArgumentException("Could not open config file " + paramFile, localFileNotFoundException);
    }
  }
  
  private static InputStream openFileId(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getResources().openRawResource(paramInt);
    if (paramContext == null) {
      throw new IllegalStateException("Could not find object config file with id " + paramInt);
    }
    return paramContext;
  }
  
  public void close()
  {
    super.close();
    connectionSource.close();
    isOpen = false;
  }
  
  public ConnectionSource getConnectionSource()
  {
    if (!isOpen) {
      logger.warn(new IllegalStateException(), "Getting connectionSource was called after closed");
    }
    return connectionSource;
  }
  
  public <D extends Dao<T, ?>, T> D getDao(Class<T> paramClass)
  {
    return DaoManager.createDao(getConnectionSource(), paramClass);
  }
  
  public <D extends RuntimeExceptionDao<T, ?>, T> D getRuntimeExceptionDao(Class<T> paramClass)
  {
    try
    {
      RuntimeExceptionDao localRuntimeExceptionDao = new RuntimeExceptionDao(getDao(paramClass));
      return localRuntimeExceptionDao;
    }
    catch (SQLException localSQLException)
    {
      throw new RuntimeException("Could not create RuntimeExcepitionDao for class " + paramClass, localSQLException);
    }
  }
  
  public boolean isOpen()
  {
    return isOpen;
  }
  
  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    int i = 1;
    ConnectionSource localConnectionSource = getConnectionSource();
    Object localObject = localConnectionSource.getSpecialConnection();
    if (localObject == null) {
      localObject = new AndroidDatabaseConnection(paramSQLiteDatabase, true, cancelQueriesEnabled);
    }
    label85:
    for (;;)
    {
      try
      {
        localConnectionSource.saveSpecialConnection((DatabaseConnection)localObject);
        i = 0;
      }
      catch (SQLException paramSQLiteDatabase)
      {
        try
        {
          onCreate(paramSQLiteDatabase, localConnectionSource);
          if (i != 0) {
            localConnectionSource.clearSpecialConnection((DatabaseConnection)localObject);
          }
          return;
        }
        finally
        {
          if (i == 0) {
            break label85;
          }
          localConnectionSource.clearSpecialConnection((DatabaseConnection)localObject);
        }
        paramSQLiteDatabase = paramSQLiteDatabase;
        throw new IllegalStateException("Could not save special connection", paramSQLiteDatabase);
      }
    }
  }
  
  public abstract void onCreate(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource);
  
  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    int i = 1;
    ConnectionSource localConnectionSource = getConnectionSource();
    Object localObject = localConnectionSource.getSpecialConnection();
    if (localObject == null) {
      localObject = new AndroidDatabaseConnection(paramSQLiteDatabase, true, cancelQueriesEnabled);
    }
    label99:
    for (;;)
    {
      try
      {
        localConnectionSource.saveSpecialConnection((DatabaseConnection)localObject);
        i = 0;
      }
      catch (SQLException paramSQLiteDatabase)
      {
        try
        {
          onUpgrade(paramSQLiteDatabase, localConnectionSource, paramInt1, paramInt2);
          if (i != 0) {
            localConnectionSource.clearSpecialConnection((DatabaseConnection)localObject);
          }
          return;
        }
        finally
        {
          if (i == 0) {
            break label99;
          }
          localConnectionSource.clearSpecialConnection((DatabaseConnection)localObject);
        }
        paramSQLiteDatabase = paramSQLiteDatabase;
        throw new IllegalStateException("Could not save special connection", paramSQLiteDatabase);
      }
    }
  }
  
  public abstract void onUpgrade(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource, int paramInt1, int paramInt2);
  
  public String toString()
  {
    return getClass().getSimpleName() + "@" + Integer.toHexString(super.hashCode());
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */