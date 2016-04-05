package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.BaseDaoImpl;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.GenericRawResults;
import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.dao.RawRowMapper;
import com.j256.ormlite.dao.RawRowObjectMapper;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.DataType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.stmt.mapped.MappedCreate;
import com.j256.ormlite.stmt.mapped.MappedDelete;
import com.j256.ormlite.stmt.mapped.MappedDeleteCollection;
import com.j256.ormlite.stmt.mapped.MappedQueryForId;
import com.j256.ormlite.stmt.mapped.MappedRefresh;
import com.j256.ormlite.stmt.mapped.MappedUpdate;
import com.j256.ormlite.stmt.mapped.MappedUpdateId;
import com.j256.ormlite.support.CompiledStatement;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.DatabaseResults;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class StatementExecutor<T, ID>
  implements GenericRowMapper<String[]>
{
  private static Logger logger = LoggerFactory.getLogger(StatementExecutor.class);
  private static final FieldType[] noFieldTypes = new FieldType[0];
  private String countStarQuery;
  private final Dao<T, ID> dao;
  private final DatabaseType databaseType;
  private FieldType[] ifExistsFieldTypes;
  private String ifExistsQuery;
  private MappedDelete<T, ID> mappedDelete;
  private MappedCreate<T, ID> mappedInsert;
  private MappedQueryForId<T, ID> mappedQueryForId;
  private MappedRefresh<T, ID> mappedRefresh;
  private MappedUpdate<T, ID> mappedUpdate;
  private MappedUpdateId<T, ID> mappedUpdateId;
  private PreparedQuery<T> preparedQueryForAll;
  private RawRowMapper<T> rawRowMapper;
  private final TableInfo<T, ID> tableInfo;
  
  public StatementExecutor(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, Dao<T, ID> paramDao)
  {
    databaseType = paramDatabaseType;
    tableInfo = paramTableInfo;
    dao = paramDao;
  }
  
  private void assignStatementArguments(CompiledStatement paramCompiledStatement, String[] paramArrayOfString)
  {
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      paramCompiledStatement.setObject(i, paramArrayOfString[i], SqlType.STRING);
      i += 1;
    }
  }
  
  private void prepareQueryForAll()
  {
    if (preparedQueryForAll == null) {
      preparedQueryForAll = new QueryBuilder(databaseType, tableInfo, dao).prepare();
    }
  }
  
  public SelectIterator<T, ID> buildIterator(BaseDaoImpl<T, ID> paramBaseDaoImpl, ConnectionSource paramConnectionSource, int paramInt, ObjectCache paramObjectCache)
  {
    prepareQueryForAll();
    return buildIterator(paramBaseDaoImpl, paramConnectionSource, preparedQueryForAll, paramObjectCache, paramInt);
  }
  
  public SelectIterator<T, ID> buildIterator(BaseDaoImpl<T, ID> paramBaseDaoImpl, ConnectionSource paramConnectionSource, PreparedStmt<T> paramPreparedStmt, ObjectCache paramObjectCache, int paramInt)
  {
    DatabaseConnection localDatabaseConnection = paramConnectionSource.getReadOnlyConnection();
    Object localObject = null;
    try
    {
      CompiledStatement localCompiledStatement = paramPreparedStmt.compile(localDatabaseConnection, StatementBuilder.StatementType.SELECT, paramInt);
      localObject = localCompiledStatement;
      paramBaseDaoImpl = new SelectIterator(tableInfo.getDataClass(), paramBaseDaoImpl, paramPreparedStmt, paramConnectionSource, localDatabaseConnection, localCompiledStatement, paramPreparedStmt.getStatement(), paramObjectCache);
      return paramBaseDaoImpl;
    }
    finally
    {
      if (localObject != null) {
        ((CompiledStatement)localObject).close();
      }
      if (localDatabaseConnection != null) {
        paramConnectionSource.releaseConnection(localDatabaseConnection);
      }
    }
  }
  
  /* Error */
  public <CT> CT callBatchTasks(DatabaseConnection paramDatabaseConnection, boolean paramBoolean, java.util.concurrent.Callable<CT> paramCallable)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 6
    //   3: iconst_0
    //   4: istore 5
    //   6: aload_0
    //   7: getfield 68	com/j256/ormlite/stmt/StatementExecutor:databaseType	Lcom/j256/ormlite/db/DatabaseType;
    //   10: invokeinterface 160 1 0
    //   15: ifeq +16 -> 31
    //   18: aload_1
    //   19: iload_2
    //   20: aload_0
    //   21: getfield 68	com/j256/ormlite/stmt/StatementExecutor:databaseType	Lcom/j256/ormlite/db/DatabaseType;
    //   24: aload_3
    //   25: invokestatic 166	com/j256/ormlite/misc/TransactionManager:callInTransaction	(Lcom/j256/ormlite/support/DatabaseConnection;ZLcom/j256/ormlite/db/DatabaseType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    //   28: astore_3
    //   29: aload_3
    //   30: areturn
    //   31: iload 5
    //   33: istore_2
    //   34: iload 6
    //   36: istore 5
    //   38: aload_1
    //   39: invokeinterface 171 1 0
    //   44: ifeq +56 -> 100
    //   47: iload 6
    //   49: istore 5
    //   51: aload_1
    //   52: invokeinterface 174 1 0
    //   57: istore 6
    //   59: iload 6
    //   61: istore_2
    //   62: iload 6
    //   64: ifeq +36 -> 100
    //   67: iload 6
    //   69: istore 5
    //   71: aload_1
    //   72: iconst_0
    //   73: invokeinterface 178 2 0
    //   78: iload 6
    //   80: istore 5
    //   82: getstatic 57	com/j256/ormlite/stmt/StatementExecutor:logger	Lcom/j256/ormlite/logger/Logger;
    //   85: ldc -76
    //   87: aload_0
    //   88: getfield 70	com/j256/ormlite/stmt/StatementExecutor:tableInfo	Lcom/j256/ormlite/table/TableInfo;
    //   91: invokevirtual 183	com/j256/ormlite/table/TableInfo:getTableName	()Ljava/lang/String;
    //   94: invokevirtual 189	com/j256/ormlite/logger/Logger:debug	(Ljava/lang/String;Ljava/lang/Object;)V
    //   97: iload 6
    //   99: istore_2
    //   100: iload_2
    //   101: istore 5
    //   103: aload_3
    //   104: invokeinterface 195 1 0
    //   109: astore 4
    //   111: aload 4
    //   113: astore_3
    //   114: iload_2
    //   115: ifeq -86 -> 29
    //   118: aload_1
    //   119: iconst_1
    //   120: invokeinterface 178 2 0
    //   125: getstatic 57	com/j256/ormlite/stmt/StatementExecutor:logger	Lcom/j256/ormlite/logger/Logger;
    //   128: ldc -59
    //   130: aload_0
    //   131: getfield 70	com/j256/ormlite/stmt/StatementExecutor:tableInfo	Lcom/j256/ormlite/table/TableInfo;
    //   134: invokevirtual 183	com/j256/ormlite/table/TableInfo:getTableName	()Ljava/lang/String;
    //   137: invokevirtual 189	com/j256/ormlite/logger/Logger:debug	(Ljava/lang/String;Ljava/lang/Object;)V
    //   140: aload 4
    //   142: areturn
    //   143: astore_3
    //   144: iload_2
    //   145: istore 5
    //   147: aload_3
    //   148: athrow
    //   149: astore_3
    //   150: iload 5
    //   152: ifeq +25 -> 177
    //   155: aload_1
    //   156: iconst_1
    //   157: invokeinterface 178 2 0
    //   162: getstatic 57	com/j256/ormlite/stmt/StatementExecutor:logger	Lcom/j256/ormlite/logger/Logger;
    //   165: ldc -59
    //   167: aload_0
    //   168: getfield 70	com/j256/ormlite/stmt/StatementExecutor:tableInfo	Lcom/j256/ormlite/table/TableInfo;
    //   171: invokevirtual 183	com/j256/ormlite/table/TableInfo:getTableName	()Ljava/lang/String;
    //   174: invokevirtual 189	com/j256/ormlite/logger/Logger:debug	(Ljava/lang/String;Ljava/lang/Object;)V
    //   177: aload_3
    //   178: athrow
    //   179: astore_3
    //   180: iload_2
    //   181: istore 5
    //   183: ldc -57
    //   185: aload_3
    //   186: invokestatic 205	com/j256/ormlite/misc/SqlExceptionUtil:create	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    //   189: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	190	0	this	StatementExecutor
    //   0	190	1	paramDatabaseConnection	DatabaseConnection
    //   0	190	2	paramBoolean	boolean
    //   0	190	3	paramCallable	java.util.concurrent.Callable<CT>
    //   109	32	4	localObject	Object
    //   4	178	5	bool1	boolean
    //   1	97	6	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   103	111	143	java/sql/SQLException
    //   38	47	149	finally
    //   51	59	149	finally
    //   71	78	149	finally
    //   82	97	149	finally
    //   103	111	149	finally
    //   147	149	149	finally
    //   183	190	149	finally
    //   103	111	179	java/lang/Exception
  }
  
  public int create(DatabaseConnection paramDatabaseConnection, T paramT, ObjectCache paramObjectCache)
  {
    if (mappedInsert == null) {
      mappedInsert = MappedCreate.build(databaseType, tableInfo);
    }
    return mappedInsert.insert(databaseType, paramDatabaseConnection, paramT, paramObjectCache);
  }
  
  public int delete(DatabaseConnection paramDatabaseConnection, PreparedDelete<T> paramPreparedDelete)
  {
    paramDatabaseConnection = paramPreparedDelete.compile(paramDatabaseConnection, StatementBuilder.StatementType.DELETE);
    try
    {
      int i = paramDatabaseConnection.runUpdate();
      return i;
    }
    finally
    {
      paramDatabaseConnection.close();
    }
  }
  
  public int delete(DatabaseConnection paramDatabaseConnection, T paramT, ObjectCache paramObjectCache)
  {
    if (mappedDelete == null) {
      mappedDelete = MappedDelete.build(databaseType, tableInfo);
    }
    return mappedDelete.delete(paramDatabaseConnection, paramT, paramObjectCache);
  }
  
  public int deleteById(DatabaseConnection paramDatabaseConnection, ID paramID, ObjectCache paramObjectCache)
  {
    if (mappedDelete == null) {
      mappedDelete = MappedDelete.build(databaseType, tableInfo);
    }
    return mappedDelete.deleteById(paramDatabaseConnection, paramID, paramObjectCache);
  }
  
  public int deleteIds(DatabaseConnection paramDatabaseConnection, Collection<ID> paramCollection, ObjectCache paramObjectCache)
  {
    return MappedDeleteCollection.deleteIds(databaseType, tableInfo, paramDatabaseConnection, paramCollection, paramObjectCache);
  }
  
  public int deleteObjects(DatabaseConnection paramDatabaseConnection, Collection<T> paramCollection, ObjectCache paramObjectCache)
  {
    return MappedDeleteCollection.deleteObjects(databaseType, tableInfo, paramDatabaseConnection, paramCollection, paramObjectCache);
  }
  
  public int executeRaw(DatabaseConnection paramDatabaseConnection, String paramString, String[] paramArrayOfString)
  {
    logger.debug("running raw execute statement: {}", paramString);
    if (paramArrayOfString.length > 0) {
      logger.trace("execute arguments: {}", paramArrayOfString);
    }
    paramDatabaseConnection = paramDatabaseConnection.compileStatement(paramString, StatementBuilder.StatementType.EXECUTE, noFieldTypes, -1);
    try
    {
      assignStatementArguments(paramDatabaseConnection, paramArrayOfString);
      int i = paramDatabaseConnection.runExecute();
      return i;
    }
    finally
    {
      paramDatabaseConnection.close();
    }
  }
  
  public int executeRawNoArgs(DatabaseConnection paramDatabaseConnection, String paramString)
  {
    logger.debug("running raw execute statement: {}", paramString);
    return paramDatabaseConnection.executeStatement(paramString, -1);
  }
  
  public RawRowMapper<T> getRawRowMapper()
  {
    if (rawRowMapper == null) {
      rawRowMapper = new RawRowMapperImpl(tableInfo);
    }
    return rawRowMapper;
  }
  
  public GenericRowMapper<T> getSelectStarRowMapper()
  {
    prepareQueryForAll();
    return preparedQueryForAll;
  }
  
  public boolean ifExists(DatabaseConnection paramDatabaseConnection, ID paramID)
  {
    if (ifExistsQuery == null)
    {
      localObject = new QueryBuilder(databaseType, tableInfo, dao);
      ((QueryBuilder)localObject).selectRaw(new String[] { "COUNT(*)" });
      ((QueryBuilder)localObject).where().eq(tableInfo.getIdField().getColumnName(), new SelectArg());
      ifExistsQuery = ((QueryBuilder)localObject).prepareStatementString();
      ifExistsFieldTypes = new FieldType[] { tableInfo.getIdField() };
    }
    Object localObject = ifExistsQuery;
    FieldType[] arrayOfFieldType = ifExistsFieldTypes;
    long l = paramDatabaseConnection.queryForLong((String)localObject, new Object[] { paramID }, arrayOfFieldType);
    logger.debug("query of '{}' returned {}", ifExistsQuery, Long.valueOf(l));
    return l != 0L;
  }
  
  public String[] mapRow(DatabaseResults paramDatabaseResults)
  {
    int j = paramDatabaseResults.getColumnCount();
    String[] arrayOfString = new String[j];
    int i = 0;
    while (i < j)
    {
      arrayOfString[i] = paramDatabaseResults.getString(i);
      i += 1;
    }
    return arrayOfString;
  }
  
  public List<T> query(ConnectionSource paramConnectionSource, PreparedStmt<T> paramPreparedStmt, ObjectCache paramObjectCache)
  {
    paramConnectionSource = buildIterator(null, paramConnectionSource, paramPreparedStmt, paramObjectCache, -1);
    try
    {
      paramObjectCache = new ArrayList();
      while (paramConnectionSource.hasNextThrow()) {
        paramObjectCache.add(paramConnectionSource.nextThrow());
      }
      logger.debug("query of '{}' returned {} results", paramPreparedStmt.getStatement(), Integer.valueOf(paramObjectCache.size()));
    }
    finally
    {
      paramConnectionSource.close();
    }
    paramConnectionSource.close();
    return paramObjectCache;
  }
  
  public List<T> queryForAll(ConnectionSource paramConnectionSource, ObjectCache paramObjectCache)
  {
    prepareQueryForAll();
    return query(paramConnectionSource, preparedQueryForAll, paramObjectCache);
  }
  
  public long queryForCountStar(DatabaseConnection paramDatabaseConnection)
  {
    if (countStarQuery == null)
    {
      StringBuilder localStringBuilder = new StringBuilder(64);
      localStringBuilder.append("SELECT COUNT(*) FROM ");
      databaseType.appendEscapedEntityName(localStringBuilder, tableInfo.getTableName());
      countStarQuery = localStringBuilder.toString();
    }
    long l = paramDatabaseConnection.queryForLong(countStarQuery);
    logger.debug("query of '{}' returned {}", countStarQuery, Long.valueOf(l));
    return l;
  }
  
  public T queryForFirst(DatabaseConnection paramDatabaseConnection, PreparedStmt<T> paramPreparedStmt, ObjectCache paramObjectCache)
  {
    CompiledStatement localCompiledStatement = paramPreparedStmt.compile(paramDatabaseConnection, StatementBuilder.StatementType.SELECT);
    try
    {
      paramDatabaseConnection = localCompiledStatement.runQuery(paramObjectCache);
      if (paramObjectCache == null) {
        break label121;
      }
    }
    finally
    {
      try
      {
        if (paramDatabaseConnection.first())
        {
          logger.debug("query-for-first of '{}' returned at least 1 result", paramPreparedStmt.getStatement());
          paramPreparedStmt = paramPreparedStmt.mapRow(paramDatabaseConnection);
          if (paramDatabaseConnection != null) {
            paramDatabaseConnection.close();
          }
          localCompiledStatement.close();
          return paramPreparedStmt;
        }
        logger.debug("query-for-first of '{}' returned at 0 results", paramPreparedStmt.getStatement());
        if (paramDatabaseConnection != null) {
          paramDatabaseConnection.close();
        }
        localCompiledStatement.close();
        return null;
      }
      finally
      {
        for (;;)
        {
          paramObjectCache = paramDatabaseConnection;
        }
      }
      paramDatabaseConnection = finally;
      paramObjectCache = null;
      paramPreparedStmt = paramDatabaseConnection;
    }
    paramObjectCache.close();
    label121:
    localCompiledStatement.close();
    throw paramPreparedStmt;
  }
  
  public T queryForId(DatabaseConnection paramDatabaseConnection, ID paramID, ObjectCache paramObjectCache)
  {
    if (mappedQueryForId == null) {
      mappedQueryForId = MappedQueryForId.build(databaseType, tableInfo, null);
    }
    return (T)mappedQueryForId.execute(paramDatabaseConnection, paramID, paramObjectCache);
  }
  
  public long queryForLong(DatabaseConnection paramDatabaseConnection, PreparedStmt<T> paramPreparedStmt)
  {
    DatabaseResults localDatabaseResults = null;
    CompiledStatement localCompiledStatement = paramPreparedStmt.compile(paramDatabaseConnection, StatementBuilder.StatementType.SELECT_LONG);
    paramDatabaseConnection = localDatabaseResults;
    try
    {
      localDatabaseResults = localCompiledStatement.runQuery(null);
      paramDatabaseConnection = localDatabaseResults;
      if (localDatabaseResults.first())
      {
        paramDatabaseConnection = localDatabaseResults;
        long l = localDatabaseResults.getLong(0);
        return l;
      }
      paramDatabaseConnection = localDatabaseResults;
      throw new SQLException("No result found in queryForLong: " + paramPreparedStmt.getStatement());
    }
    finally
    {
      if (paramDatabaseConnection != null) {
        paramDatabaseConnection.close();
      }
      localCompiledStatement.close();
    }
  }
  
  public long queryForLong(DatabaseConnection paramDatabaseConnection, String paramString, String[] paramArrayOfString)
  {
    localObject1 = null;
    Object localObject2 = null;
    logger.debug("executing raw query for long: {}", paramString);
    if (paramArrayOfString.length > 0) {
      logger.trace("query arguments: {}", paramArrayOfString);
    }
    try
    {
      paramDatabaseConnection = paramDatabaseConnection.compileStatement(paramString, StatementBuilder.StatementType.SELECT, noFieldTypes, -1);
      localObject1 = paramDatabaseConnection;
      paramDatabaseConnection = (DatabaseConnection)localObject2;
      try
      {
        assignStatementArguments((CompiledStatement)localObject1, paramArrayOfString);
        paramDatabaseConnection = (DatabaseConnection)localObject2;
        paramArrayOfString = ((CompiledStatement)localObject1).runQuery(null);
        paramDatabaseConnection = paramArrayOfString;
        if (paramArrayOfString.first())
        {
          paramDatabaseConnection = paramArrayOfString;
          long l = paramArrayOfString.getLong(0);
          if (paramArrayOfString != null) {
            paramArrayOfString.close();
          }
          if (localObject1 != null) {
            ((CompiledStatement)localObject1).close();
          }
          return l;
        }
        paramDatabaseConnection = paramArrayOfString;
        throw new SQLException("No result found in queryForLong: " + paramString);
      }
      finally
      {
        paramString = paramDatabaseConnection;
        paramDatabaseConnection = paramArrayOfString;
      }
    }
    finally
    {
      paramArrayOfString = null;
      paramString = (String)localObject1;
      localObject1 = paramArrayOfString;
    }
    if (paramString != null) {
      paramString.close();
    }
    if (localObject1 != null) {
      ((CompiledStatement)localObject1).close();
    }
    throw paramDatabaseConnection;
  }
  
  public <UO> GenericRawResults<UO> queryRaw(ConnectionSource paramConnectionSource, String paramString, RawRowMapper<UO> paramRawRowMapper, String[] paramArrayOfString, ObjectCache paramObjectCache)
  {
    logger.debug("executing raw query for: {}", paramString);
    if (paramArrayOfString.length > 0) {
      logger.trace("query arguments: {}", paramArrayOfString);
    }
    DatabaseConnection localDatabaseConnection = paramConnectionSource.getReadOnlyConnection();
    Object localObject = null;
    try
    {
      CompiledStatement localCompiledStatement = localDatabaseConnection.compileStatement(paramString, StatementBuilder.StatementType.SELECT, noFieldTypes, -1);
      localObject = localCompiledStatement;
      assignStatementArguments(localCompiledStatement, paramArrayOfString);
      localObject = localCompiledStatement;
      paramString = new RawResultsImpl(paramConnectionSource, localDatabaseConnection, paramString, String[].class, localCompiledStatement, new StatementExecutor.UserRawRowMapper(paramRawRowMapper, this), paramObjectCache);
      return paramString;
    }
    finally
    {
      if (localObject != null) {
        ((CompiledStatement)localObject).close();
      }
      if (localDatabaseConnection != null) {
        paramConnectionSource.releaseConnection(localDatabaseConnection);
      }
    }
  }
  
  public <UO> GenericRawResults<UO> queryRaw(ConnectionSource paramConnectionSource, String paramString, DataType[] paramArrayOfDataType, RawRowObjectMapper<UO> paramRawRowObjectMapper, String[] paramArrayOfString, ObjectCache paramObjectCache)
  {
    logger.debug("executing raw query for: {}", paramString);
    if (paramArrayOfString.length > 0) {
      logger.trace("query arguments: {}", paramArrayOfString);
    }
    DatabaseConnection localDatabaseConnection = paramConnectionSource.getReadOnlyConnection();
    Object localObject = null;
    try
    {
      CompiledStatement localCompiledStatement = localDatabaseConnection.compileStatement(paramString, StatementBuilder.StatementType.SELECT, noFieldTypes, -1);
      localObject = localCompiledStatement;
      assignStatementArguments(localCompiledStatement, paramArrayOfString);
      localObject = localCompiledStatement;
      paramString = new RawResultsImpl(paramConnectionSource, localDatabaseConnection, paramString, String[].class, localCompiledStatement, new StatementExecutor.UserRawRowObjectMapper(paramRawRowObjectMapper, paramArrayOfDataType), paramObjectCache);
      return paramString;
    }
    finally
    {
      if (localObject != null) {
        ((CompiledStatement)localObject).close();
      }
      if (localDatabaseConnection != null) {
        paramConnectionSource.releaseConnection(localDatabaseConnection);
      }
    }
  }
  
  public GenericRawResults<Object[]> queryRaw(ConnectionSource paramConnectionSource, String paramString, DataType[] paramArrayOfDataType, String[] paramArrayOfString, ObjectCache paramObjectCache)
  {
    logger.debug("executing raw query for: {}", paramString);
    if (paramArrayOfString.length > 0) {
      logger.trace("query arguments: {}", paramArrayOfString);
    }
    DatabaseConnection localDatabaseConnection = paramConnectionSource.getReadOnlyConnection();
    Object localObject = null;
    try
    {
      CompiledStatement localCompiledStatement = localDatabaseConnection.compileStatement(paramString, StatementBuilder.StatementType.SELECT, noFieldTypes, -1);
      localObject = localCompiledStatement;
      assignStatementArguments(localCompiledStatement, paramArrayOfString);
      localObject = localCompiledStatement;
      paramString = new RawResultsImpl(paramConnectionSource, localDatabaseConnection, paramString, Object[].class, localCompiledStatement, new StatementExecutor.ObjectArrayRowMapper(paramArrayOfDataType), paramObjectCache);
      return paramString;
    }
    finally
    {
      if (localObject != null) {
        ((CompiledStatement)localObject).close();
      }
      if (localDatabaseConnection != null) {
        paramConnectionSource.releaseConnection(localDatabaseConnection);
      }
    }
  }
  
  public GenericRawResults<String[]> queryRaw(ConnectionSource paramConnectionSource, String paramString, String[] paramArrayOfString, ObjectCache paramObjectCache)
  {
    logger.debug("executing raw query for: {}", paramString);
    if (paramArrayOfString.length > 0) {
      logger.trace("query arguments: {}", paramArrayOfString);
    }
    DatabaseConnection localDatabaseConnection = paramConnectionSource.getReadOnlyConnection();
    Object localObject = null;
    try
    {
      CompiledStatement localCompiledStatement = localDatabaseConnection.compileStatement(paramString, StatementBuilder.StatementType.SELECT, noFieldTypes, -1);
      localObject = localCompiledStatement;
      assignStatementArguments(localCompiledStatement, paramArrayOfString);
      localObject = localCompiledStatement;
      paramString = new RawResultsImpl(paramConnectionSource, localDatabaseConnection, paramString, String[].class, localCompiledStatement, this, paramObjectCache);
      return paramString;
    }
    finally
    {
      if (localObject != null) {
        ((CompiledStatement)localObject).close();
      }
      if (localDatabaseConnection != null) {
        paramConnectionSource.releaseConnection(localDatabaseConnection);
      }
    }
  }
  
  public int refresh(DatabaseConnection paramDatabaseConnection, T paramT, ObjectCache paramObjectCache)
  {
    if (mappedRefresh == null) {
      mappedRefresh = MappedRefresh.build(databaseType, tableInfo);
    }
    return mappedRefresh.executeRefresh(paramDatabaseConnection, paramT, paramObjectCache);
  }
  
  public int update(DatabaseConnection paramDatabaseConnection, PreparedUpdate<T> paramPreparedUpdate)
  {
    paramDatabaseConnection = paramPreparedUpdate.compile(paramDatabaseConnection, StatementBuilder.StatementType.UPDATE);
    try
    {
      int i = paramDatabaseConnection.runUpdate();
      return i;
    }
    finally
    {
      paramDatabaseConnection.close();
    }
  }
  
  public int update(DatabaseConnection paramDatabaseConnection, T paramT, ObjectCache paramObjectCache)
  {
    if (mappedUpdate == null) {
      mappedUpdate = MappedUpdate.build(databaseType, tableInfo);
    }
    return mappedUpdate.update(paramDatabaseConnection, paramT, paramObjectCache);
  }
  
  public int updateId(DatabaseConnection paramDatabaseConnection, T paramT, ID paramID, ObjectCache paramObjectCache)
  {
    if (mappedUpdateId == null) {
      mappedUpdateId = MappedUpdateId.build(databaseType, tableInfo);
    }
    return mappedUpdateId.execute(paramDatabaseConnection, paramT, paramID, paramObjectCache);
  }
  
  public int updateRaw(DatabaseConnection paramDatabaseConnection, String paramString, String[] paramArrayOfString)
  {
    logger.debug("running raw update statement: {}", paramString);
    if (paramArrayOfString.length > 0) {
      logger.trace("update arguments: {}", paramArrayOfString);
    }
    paramDatabaseConnection = paramDatabaseConnection.compileStatement(paramString, StatementBuilder.StatementType.UPDATE, noFieldTypes, -1);
    try
    {
      assignStatementArguments(paramDatabaseConnection, paramArrayOfString);
      int i = paramDatabaseConnection.runUpdate();
      return i;
    }
    finally
    {
      paramDatabaseConnection.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.StatementExecutor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */