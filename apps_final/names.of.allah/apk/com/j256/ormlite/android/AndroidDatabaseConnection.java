package com.j256.ormlite.android;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.misc.VersionUtils;
import com.j256.ormlite.stmt.StatementBuilder.StatementType;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.GeneratedKeyHolder;
import java.sql.Savepoint;

public class AndroidDatabaseConnection
  implements DatabaseConnection
{
  private static final String ANDROID_VERSION = "VERSION__4.48__";
  private static final String[] NO_STRING_ARGS;
  private static Logger logger = LoggerFactory.getLogger(AndroidDatabaseConnection.class);
  private final boolean cancelQueriesEnabled;
  private final SQLiteDatabase db;
  private final boolean readWrite;
  
  static
  {
    NO_STRING_ARGS = new String[0];
    VersionUtils.checkCoreVersusAndroidVersions("VERSION__4.48__");
  }
  
  public AndroidDatabaseConnection(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean)
  {
    this(paramSQLiteDatabase, paramBoolean, false);
  }
  
  public AndroidDatabaseConnection(SQLiteDatabase paramSQLiteDatabase, boolean paramBoolean1, boolean paramBoolean2)
  {
    db = paramSQLiteDatabase;
    readWrite = paramBoolean1;
    cancelQueriesEnabled = paramBoolean2;
    logger.trace("{}: db {} opened, read-write = {}", this, paramSQLiteDatabase, Boolean.valueOf(paramBoolean1));
  }
  
  private void bindArgs(SQLiteStatement paramSQLiteStatement, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType)
  {
    if (paramArrayOfObject == null) {
      return;
    }
    int i = 0;
    label8:
    Object localObject;
    if (i < paramArrayOfObject.length)
    {
      localObject = paramArrayOfObject[i];
      if (localObject != null) {
        break label43;
      }
      paramSQLiteStatement.bindNull(i + 1);
    }
    label43:
    SqlType localSqlType;
    for (;;)
    {
      i += 1;
      break label8;
      break;
      localSqlType = paramArrayOfFieldType[i].getSqlType();
      switch (AndroidDatabaseConnection.1.$SwitchMap$com$j256$ormlite$field$SqlType[localSqlType.ordinal()])
      {
      default: 
        throw new java.sql.SQLException("Unknown sql argument type: " + localSqlType);
      case 1: 
      case 2: 
      case 3: 
        paramSQLiteStatement.bindString(i + 1, localObject.toString());
        break;
      case 4: 
      case 5: 
      case 6: 
      case 7: 
      case 8: 
        paramSQLiteStatement.bindLong(i + 1, ((Number)localObject).longValue());
        break;
      case 9: 
      case 10: 
        paramSQLiteStatement.bindDouble(i + 1, ((Number)localObject).doubleValue());
        break;
      case 11: 
      case 12: 
        paramSQLiteStatement.bindBlob(i + 1, (byte[])localObject);
      }
    }
    throw new java.sql.SQLException("Invalid Android type: " + localSqlType);
  }
  
  private String[] toStrings(Object[] paramArrayOfObject)
  {
    if ((paramArrayOfObject == null) || (paramArrayOfObject.length == 0)) {
      return null;
    }
    String[] arrayOfString = new String[paramArrayOfObject.length];
    int i = 0;
    if (i < paramArrayOfObject.length)
    {
      Object localObject = paramArrayOfObject[i];
      if (localObject == null) {
        arrayOfString[i] = null;
      }
      for (;;)
      {
        i += 1;
        break;
        arrayOfString[i] = localObject.toString();
      }
    }
    return arrayOfString;
  }
  
  /* Error */
  private int update(String paramString1, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 49	com/j256/ormlite/android/AndroidDatabaseConnection:db	Landroid/database/sqlite/SQLiteDatabase;
    //   4: aload_1
    //   5: invokevirtual 153	android/database/sqlite/SQLiteDatabase:compileStatement	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    //   8: astore 5
    //   10: aload 5
    //   12: astore 6
    //   14: aload_0
    //   15: aload 5
    //   17: aload_2
    //   18: aload_3
    //   19: invokespecial 155	com/j256/ormlite/android/AndroidDatabaseConnection:bindArgs	(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)V
    //   22: aload 5
    //   24: astore 6
    //   26: aload 5
    //   28: invokevirtual 158	android/database/sqlite/SQLiteStatement:execute	()V
    //   31: aload 5
    //   33: ifnull +163 -> 196
    //   36: aload 5
    //   38: invokevirtual 161	android/database/sqlite/SQLiteStatement:close	()V
    //   41: aconst_null
    //   42: astore_2
    //   43: aload_0
    //   44: getfield 49	com/j256/ormlite/android/AndroidDatabaseConnection:db	Landroid/database/sqlite/SQLiteDatabase;
    //   47: ldc -93
    //   49: invokevirtual 153	android/database/sqlite/SQLiteDatabase:compileStatement	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    //   52: astore_3
    //   53: aload_3
    //   54: astore_2
    //   55: aload_2
    //   56: invokevirtual 166	android/database/sqlite/SQLiteStatement:simpleQueryForLong	()J
    //   59: lstore 9
    //   61: lload 9
    //   63: l2i
    //   64: istore 8
    //   66: iload 8
    //   68: istore 7
    //   70: aload_2
    //   71: ifnull +11 -> 82
    //   74: aload_2
    //   75: invokevirtual 161	android/database/sqlite/SQLiteStatement:close	()V
    //   78: iload 8
    //   80: istore 7
    //   82: getstatic 29	com/j256/ormlite/android/AndroidDatabaseConnection:logger	Lcom/j256/ormlite/logger/Logger;
    //   85: ldc -88
    //   87: aload 4
    //   89: iload 7
    //   91: invokestatic 173	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   94: aload_1
    //   95: invokevirtual 67	com/j256/ormlite/logger/Logger:trace	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   98: iload 7
    //   100: ireturn
    //   101: astore_2
    //   102: aconst_null
    //   103: astore 5
    //   105: aload 5
    //   107: astore 6
    //   109: new 97	java/lang/StringBuilder
    //   112: dup
    //   113: ldc -81
    //   115: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   118: aload_1
    //   119: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   125: aload_2
    //   126: invokestatic 184	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   129: athrow
    //   130: astore_1
    //   131: aload 6
    //   133: ifnull +8 -> 141
    //   136: aload 6
    //   138: invokevirtual 161	android/database/sqlite/SQLiteStatement:close	()V
    //   141: aload_1
    //   142: athrow
    //   143: astore_3
    //   144: iconst_1
    //   145: istore 8
    //   147: iload 8
    //   149: istore 7
    //   151: aload_2
    //   152: ifnull -70 -> 82
    //   155: aload_2
    //   156: invokevirtual 161	android/database/sqlite/SQLiteStatement:close	()V
    //   159: iload 8
    //   161: istore 7
    //   163: goto -81 -> 82
    //   166: astore_1
    //   167: aload_2
    //   168: ifnull +7 -> 175
    //   171: aload_2
    //   172: invokevirtual 161	android/database/sqlite/SQLiteStatement:close	()V
    //   175: aload_1
    //   176: athrow
    //   177: astore_1
    //   178: goto -11 -> 167
    //   181: astore_3
    //   182: goto -38 -> 144
    //   185: astore_1
    //   186: aconst_null
    //   187: astore 6
    //   189: goto -58 -> 131
    //   192: astore_2
    //   193: goto -88 -> 105
    //   196: aload 5
    //   198: astore_2
    //   199: goto -156 -> 43
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	202	0	this	AndroidDatabaseConnection
    //   0	202	1	paramString1	String
    //   0	202	2	paramArrayOfObject	Object[]
    //   0	202	3	paramArrayOfFieldType	FieldType[]
    //   0	202	4	paramString2	String
    //   8	189	5	localSQLiteStatement1	SQLiteStatement
    //   12	176	6	localSQLiteStatement2	SQLiteStatement
    //   68	94	7	i	int
    //   64	96	8	j	int
    //   59	3	9	l	long
    // Exception table:
    //   from	to	target	type
    //   0	10	101	android/database/SQLException
    //   14	22	130	finally
    //   26	31	130	finally
    //   109	130	130	finally
    //   43	53	143	android/database/SQLException
    //   43	53	166	finally
    //   55	61	177	finally
    //   55	61	181	android/database/SQLException
    //   0	10	185	finally
    //   14	22	192	android/database/SQLException
    //   26	31	192	android/database/SQLException
  }
  
  public void close()
  {
    try
    {
      db.close();
      logger.trace("{}: db {} closed", this, db);
      return;
    }
    catch (android.database.SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("problems closing the database connection", localSQLException);
    }
  }
  
  public void closeQuietly()
  {
    try
    {
      close();
      return;
    }
    catch (java.sql.SQLException localSQLException) {}
  }
  
  public void commit(Savepoint paramSavepoint)
  {
    try
    {
      db.setTransactionSuccessful();
      db.endTransaction();
      if (paramSavepoint == null)
      {
        logger.trace("{}: transaction is successfuly ended", this);
        return;
      }
      logger.trace("{}: transaction {} is successfuly ended", this, paramSavepoint.getSavepointName());
      return;
    }
    catch (android.database.SQLException localSQLException)
    {
      if (paramSavepoint == null) {
        throw SqlExceptionUtil.create("problems commiting transaction", localSQLException);
      }
      throw SqlExceptionUtil.create("problems commiting transaction " + paramSavepoint.getSavepointName(), localSQLException);
    }
  }
  
  public CompiledStatement compileStatement(String paramString, StatementBuilder.StatementType paramStatementType, FieldType[] paramArrayOfFieldType, int paramInt)
  {
    paramStatementType = new AndroidCompiledStatement(paramString, db, paramStatementType, cancelQueriesEnabled);
    logger.trace("{}: compiled statement got {}: {}", this, paramStatementType, paramString);
    return paramStatementType;
  }
  
  public int delete(String paramString, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType)
  {
    return update(paramString, paramArrayOfObject, paramArrayOfFieldType, "deleted");
  }
  
  public int executeStatement(String paramString, int paramInt)
  {
    return AndroidCompiledStatement.execSql(db, paramString, paramString, NO_STRING_ARGS);
  }
  
  public int insert(String paramString, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType, GeneratedKeyHolder paramGeneratedKeyHolder)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    try
    {
      SQLiteStatement localSQLiteStatement = db.compileStatement(paramString);
      localObject1 = localSQLiteStatement;
      localObject2 = localSQLiteStatement;
      bindArgs(localSQLiteStatement, paramArrayOfObject, paramArrayOfFieldType);
      localObject1 = localSQLiteStatement;
      localObject2 = localSQLiteStatement;
      long l = localSQLiteStatement.executeInsert();
      if (paramGeneratedKeyHolder != null)
      {
        localObject1 = localSQLiteStatement;
        localObject2 = localSQLiteStatement;
        paramGeneratedKeyHolder.addKey(Long.valueOf(l));
      }
      localObject1 = localSQLiteStatement;
      localObject2 = localSQLiteStatement;
      logger.trace("{}: insert statement is compiled and executed, changed {}: {}", this, Integer.valueOf(1), paramString);
      if (localSQLiteStatement != null) {
        localSQLiteStatement.close();
      }
      return 1;
    }
    catch (android.database.SQLException paramArrayOfObject)
    {
      localObject2 = localObject1;
      throw SqlExceptionUtil.create("inserting to database failed: " + paramString, paramArrayOfObject);
    }
    finally
    {
      if (localObject2 != null) {
        ((SQLiteStatement)localObject2).close();
      }
    }
  }
  
  public boolean isAutoCommit()
  {
    try
    {
      boolean bool = db.inTransaction();
      logger.trace("{}: in transaction is {}", this, Boolean.valueOf(bool));
      return !bool;
    }
    catch (android.database.SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("problems getting auto-commit from database", localSQLException);
    }
  }
  
  public boolean isAutoCommitSupported()
  {
    return true;
  }
  
  public boolean isClosed()
  {
    try
    {
      boolean bool = db.isOpen();
      logger.trace("{}: db {} isOpen returned {}", this, db, Boolean.valueOf(bool));
      return !bool;
    }
    catch (android.database.SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("problems detecting if the database is closed", localSQLException);
    }
  }
  
  public boolean isReadWrite()
  {
    return readWrite;
  }
  
  /* Error */
  public boolean isTableExists(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 49	com/j256/ormlite/android/AndroidDatabaseConnection:db	Landroid/database/sqlite/SQLiteDatabase;
    //   4: new 97	java/lang/StringBuilder
    //   7: dup
    //   8: ldc_w 281
    //   11: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   18: ldc_w 283
    //   21: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   27: aconst_null
    //   28: invokevirtual 287	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   31: astore_2
    //   32: aload_2
    //   33: invokeinterface 292 1 0
    //   38: ifle +28 -> 66
    //   41: iconst_1
    //   42: istore_3
    //   43: getstatic 29	com/j256/ormlite/android/AndroidDatabaseConnection:logger	Lcom/j256/ormlite/logger/Logger;
    //   46: ldc_w 294
    //   49: aload_0
    //   50: aload_1
    //   51: iload_3
    //   52: invokestatic 61	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   55: invokevirtual 67	com/j256/ormlite/logger/Logger:trace	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   58: aload_2
    //   59: invokeinterface 295 1 0
    //   64: iload_3
    //   65: ireturn
    //   66: iconst_0
    //   67: istore_3
    //   68: goto -25 -> 43
    //   71: astore_1
    //   72: aload_2
    //   73: invokeinterface 295 1 0
    //   78: aload_1
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	AndroidDatabaseConnection
    //   0	80	1	paramString	String
    //   31	42	2	localCursor	android.database.Cursor
    //   42	26	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   32	41	71	finally
    //   43	58	71	finally
  }
  
  public long queryForLong(String paramString)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    try
    {
      SQLiteStatement localSQLiteStatement = db.compileStatement(paramString);
      localObject1 = localSQLiteStatement;
      localObject2 = localSQLiteStatement;
      long l = localSQLiteStatement.simpleQueryForLong();
      localObject1 = localSQLiteStatement;
      localObject2 = localSQLiteStatement;
      logger.trace("{}: query for long simple query returned {}: {}", this, Long.valueOf(l), paramString);
      if (localSQLiteStatement != null) {
        localSQLiteStatement.close();
      }
      return l;
    }
    catch (android.database.SQLException localSQLException)
    {
      localObject2 = localObject1;
      throw SqlExceptionUtil.create("queryForLong from database failed: " + paramString, localSQLException);
    }
    finally
    {
      if (localObject2 != null) {
        ((SQLiteStatement)localObject2).close();
      }
    }
  }
  
  /* Error */
  public long queryForLong(String paramString, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_3
    //   5: aload_0
    //   6: getfield 49	com/j256/ormlite/android/AndroidDatabaseConnection:db	Landroid/database/sqlite/SQLiteDatabase;
    //   9: aload_1
    //   10: aload_0
    //   11: aload_2
    //   12: invokespecial 304	com/j256/ormlite/android/AndroidDatabaseConnection:toStrings	([Ljava/lang/Object;)[Ljava/lang/String;
    //   15: invokevirtual 287	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   18: astore_2
    //   19: aload_2
    //   20: astore_3
    //   21: aload_2
    //   22: astore 4
    //   24: new 306	com/j256/ormlite/android/AndroidDatabaseResults
    //   27: dup
    //   28: aload_2
    //   29: aconst_null
    //   30: invokespecial 309	com/j256/ormlite/android/AndroidDatabaseResults:<init>	(Landroid/database/Cursor;Lcom/j256/ormlite/dao/ObjectCache;)V
    //   33: astore 5
    //   35: aload_2
    //   36: astore_3
    //   37: aload_2
    //   38: astore 4
    //   40: aload 5
    //   42: invokevirtual 312	com/j256/ormlite/android/AndroidDatabaseResults:first	()Z
    //   45: ifeq +50 -> 95
    //   48: aload_2
    //   49: astore_3
    //   50: aload_2
    //   51: astore 4
    //   53: aload 5
    //   55: iconst_0
    //   56: invokevirtual 316	com/j256/ormlite/android/AndroidDatabaseResults:getLong	(I)J
    //   59: lstore 6
    //   61: aload_2
    //   62: astore_3
    //   63: aload_2
    //   64: astore 4
    //   66: getstatic 29	com/j256/ormlite/android/AndroidDatabaseConnection:logger	Lcom/j256/ormlite/logger/Logger;
    //   69: ldc_w 318
    //   72: aload_0
    //   73: lload 6
    //   75: invokestatic 248	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   78: aload_1
    //   79: invokevirtual 67	com/j256/ormlite/logger/Logger:trace	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   82: aload_2
    //   83: ifnull +9 -> 92
    //   86: aload_2
    //   87: invokeinterface 295 1 0
    //   92: lload 6
    //   94: lreturn
    //   95: lconst_0
    //   96: lstore 6
    //   98: goto -37 -> 61
    //   101: astore_2
    //   102: aload_3
    //   103: astore 4
    //   105: new 97	java/lang/StringBuilder
    //   108: dup
    //   109: ldc_w 301
    //   112: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   115: aload_1
    //   116: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: aload_2
    //   123: invokestatic 184	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   126: athrow
    //   127: astore_1
    //   128: aload 4
    //   130: ifnull +10 -> 140
    //   133: aload 4
    //   135: invokeinterface 295 1 0
    //   140: aload_1
    //   141: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	142	0	this	AndroidDatabaseConnection
    //   0	142	1	paramString	String
    //   0	142	2	paramArrayOfObject	Object[]
    //   0	142	3	paramArrayOfFieldType	FieldType[]
    //   1	133	4	localObject	Object
    //   33	21	5	localAndroidDatabaseResults	AndroidDatabaseResults
    //   59	38	6	l	long
    // Exception table:
    //   from	to	target	type
    //   5	19	101	android/database/SQLException
    //   24	35	101	android/database/SQLException
    //   40	48	101	android/database/SQLException
    //   53	61	101	android/database/SQLException
    //   66	82	101	android/database/SQLException
    //   5	19	127	finally
    //   24	35	127	finally
    //   40	48	127	finally
    //   53	61	127	finally
    //   66	82	127	finally
    //   105	127	127	finally
  }
  
  /* Error */
  public <T> Object queryForOne(String paramString, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType, com.j256.ormlite.stmt.GenericRowMapper<T> paramGenericRowMapper, com.j256.ormlite.dao.ObjectCache paramObjectCache)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: getfield 49	com/j256/ormlite/android/AndroidDatabaseConnection:db	Landroid/database/sqlite/SQLiteDatabase;
    //   7: aload_1
    //   8: aload_0
    //   9: aload_2
    //   10: invokespecial 304	com/j256/ormlite/android/AndroidDatabaseConnection:toStrings	([Ljava/lang/Object;)[Ljava/lang/String;
    //   13: invokevirtual 287	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   16: astore_2
    //   17: aload_2
    //   18: astore_3
    //   19: new 306	com/j256/ormlite/android/AndroidDatabaseResults
    //   22: dup
    //   23: aload_2
    //   24: aload 5
    //   26: invokespecial 309	com/j256/ormlite/android/AndroidDatabaseResults:<init>	(Landroid/database/Cursor;Lcom/j256/ormlite/dao/ObjectCache;)V
    //   29: astore 5
    //   31: aload_2
    //   32: astore_3
    //   33: getstatic 29	com/j256/ormlite/android/AndroidDatabaseConnection:logger	Lcom/j256/ormlite/logger/Logger;
    //   36: ldc_w 322
    //   39: aload_0
    //   40: aload_1
    //   41: invokevirtual 190	com/j256/ormlite/logger/Logger:trace	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   44: aload_2
    //   45: astore_3
    //   46: aload 5
    //   48: invokevirtual 312	com/j256/ormlite/android/AndroidDatabaseResults:first	()Z
    //   51: istore 7
    //   53: iload 7
    //   55: ifne +21 -> 76
    //   58: aload 6
    //   60: astore_1
    //   61: aload_2
    //   62: ifnull +12 -> 74
    //   65: aload_2
    //   66: invokeinterface 295 1 0
    //   71: aload 6
    //   73: astore_1
    //   74: aload_1
    //   75: areturn
    //   76: aload_2
    //   77: astore_3
    //   78: aload 4
    //   80: aload 5
    //   82: invokeinterface 328 2 0
    //   87: astore 4
    //   89: aload_2
    //   90: astore_3
    //   91: aload 5
    //   93: invokevirtual 331	com/j256/ormlite/android/AndroidDatabaseResults:next	()Z
    //   96: ifeq +26 -> 122
    //   99: aload_2
    //   100: astore_3
    //   101: getstatic 335	com/j256/ormlite/android/AndroidDatabaseConnection:MORE_THAN_ONE	Ljava/lang/Object;
    //   104: astore 4
    //   106: aload 4
    //   108: astore_1
    //   109: aload_2
    //   110: ifnull -36 -> 74
    //   113: aload_2
    //   114: invokeinterface 295 1 0
    //   119: aload 4
    //   121: areturn
    //   122: aload 4
    //   124: astore_1
    //   125: aload_2
    //   126: ifnull -52 -> 74
    //   129: aload_2
    //   130: invokeinterface 295 1 0
    //   135: aload 4
    //   137: areturn
    //   138: astore 4
    //   140: aconst_null
    //   141: astore_2
    //   142: aload_2
    //   143: astore_3
    //   144: new 97	java/lang/StringBuilder
    //   147: dup
    //   148: ldc_w 337
    //   151: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   154: aload_1
    //   155: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   161: aload 4
    //   163: invokestatic 184	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   166: athrow
    //   167: astore_1
    //   168: aload_3
    //   169: ifnull +9 -> 178
    //   172: aload_3
    //   173: invokeinterface 295 1 0
    //   178: aload_1
    //   179: athrow
    //   180: astore_1
    //   181: aconst_null
    //   182: astore_3
    //   183: goto -15 -> 168
    //   186: astore 4
    //   188: goto -46 -> 142
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	191	0	this	AndroidDatabaseConnection
    //   0	191	1	paramString	String
    //   0	191	2	paramArrayOfObject	Object[]
    //   0	191	3	paramArrayOfFieldType	FieldType[]
    //   0	191	4	paramGenericRowMapper	com.j256.ormlite.stmt.GenericRowMapper<T>
    //   0	191	5	paramObjectCache	com.j256.ormlite.dao.ObjectCache
    //   1	71	6	localObject	Object
    //   51	3	7	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   3	17	138	android/database/SQLException
    //   19	31	167	finally
    //   33	44	167	finally
    //   46	53	167	finally
    //   78	89	167	finally
    //   91	99	167	finally
    //   101	106	167	finally
    //   144	167	167	finally
    //   3	17	180	finally
    //   19	31	186	android/database/SQLException
    //   33	44	186	android/database/SQLException
    //   46	53	186	android/database/SQLException
    //   78	89	186	android/database/SQLException
    //   91	99	186	android/database/SQLException
    //   101	106	186	android/database/SQLException
  }
  
  public void rollback(Savepoint paramSavepoint)
  {
    try
    {
      db.endTransaction();
      if (paramSavepoint == null)
      {
        logger.trace("{}: transaction is ended, unsuccessfuly", this);
        return;
      }
      logger.trace("{}: transaction {} is ended, unsuccessfuly", this, paramSavepoint.getSavepointName());
      return;
    }
    catch (android.database.SQLException localSQLException)
    {
      if (paramSavepoint == null) {
        throw SqlExceptionUtil.create("problems rolling back transaction", localSQLException);
      }
      throw SqlExceptionUtil.create("problems rolling back transaction " + paramSavepoint.getSavepointName(), localSQLException);
    }
  }
  
  public void setAutoCommit(boolean paramBoolean)
  {
    if (paramBoolean) {
      if (db.inTransaction())
      {
        db.setTransactionSuccessful();
        db.endTransaction();
      }
    }
    while (db.inTransaction()) {
      return;
    }
    db.beginTransaction();
  }
  
  public Savepoint setSavePoint(String paramString)
  {
    try
    {
      db.beginTransaction();
      logger.trace("{}: save-point set with name {}", this, paramString);
      AndroidDatabaseConnection.OurSavePoint localOurSavePoint = new AndroidDatabaseConnection.OurSavePoint(paramString);
      return localOurSavePoint;
    }
    catch (android.database.SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("problems beginning transaction " + paramString, localSQLException);
    }
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "@" + Integer.toHexString(super.hashCode());
  }
  
  public int update(String paramString, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType)
  {
    return update(paramString, paramArrayOfObject, paramArrayOfFieldType, "updated");
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.android.AndroidDatabaseConnection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */