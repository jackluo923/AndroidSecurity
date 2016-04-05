package com.j256.ormlite.dao;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.DataPersister;
import com.j256.ormlite.field.DataType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.misc.BaseDaoEnabled;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.GenericRowMapper;
import com.j256.ormlite.stmt.PreparedDelete;
import com.j256.ormlite.stmt.PreparedQuery;
import com.j256.ormlite.stmt.PreparedUpdate;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.SelectArg;
import com.j256.ormlite.stmt.SelectIterator;
import com.j256.ormlite.stmt.StatementBuilder.StatementType;
import com.j256.ormlite.stmt.StatementExecutor;
import com.j256.ormlite.stmt.UpdateBuilder;
import com.j256.ormlite.stmt.Where;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.DatabaseResults;
import com.j256.ormlite.table.DatabaseTableConfig;
import com.j256.ormlite.table.ObjectFactory;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;

public abstract class BaseDaoImpl<T, ID>
  implements Dao<T, ID>
{
  private static final ThreadLocal<List<BaseDaoImpl<?, ?>>> daoConfigLevelLocal = new BaseDaoImpl.1();
  private static ReferenceObjectCache defaultObjectCache;
  protected ConnectionSource connectionSource;
  protected final Class<T> dataClass;
  protected DatabaseType databaseType;
  private boolean initialized;
  protected CloseableIterator<T> lastIterator;
  private ObjectCache objectCache;
  protected ObjectFactory<T> objectFactory;
  protected StatementExecutor<T, ID> statementExecutor;
  protected DatabaseTableConfig<T> tableConfig;
  protected TableInfo<T, ID> tableInfo;
  
  protected BaseDaoImpl(ConnectionSource paramConnectionSource, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    this(paramConnectionSource, paramDatabaseTableConfig.getDataClass(), paramDatabaseTableConfig);
  }
  
  protected BaseDaoImpl(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    this(paramConnectionSource, paramClass, null);
  }
  
  private BaseDaoImpl(ConnectionSource paramConnectionSource, Class<T> paramClass, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    dataClass = paramClass;
    tableConfig = paramDatabaseTableConfig;
    if (paramConnectionSource != null)
    {
      connectionSource = paramConnectionSource;
      initialize();
    }
  }
  
  protected BaseDaoImpl(Class<T> paramClass)
  {
    this(null, paramClass, null);
  }
  
  public static void clearAllInternalObjectCaches()
  {
    try
    {
      if (defaultObjectCache != null)
      {
        defaultObjectCache.clearAll();
        defaultObjectCache = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  static <T, ID> Dao<T, ID> createDao(ConnectionSource paramConnectionSource, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    return new BaseDaoImpl.5(paramConnectionSource, paramDatabaseTableConfig);
  }
  
  static <T, ID> Dao<T, ID> createDao(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    return new BaseDaoImpl.4(paramConnectionSource, paramClass);
  }
  
  private CloseableIterator<T> createIterator(int paramInt)
  {
    try
    {
      SelectIterator localSelectIterator = statementExecutor.buildIterator(this, connectionSource, paramInt, objectCache);
      return localSelectIterator;
    }
    catch (Exception localException)
    {
      throw new IllegalStateException("Could not build iterator for " + dataClass, localException);
    }
  }
  
  private CloseableIterator<T> createIterator(PreparedQuery<T> paramPreparedQuery, int paramInt)
  {
    try
    {
      paramPreparedQuery = statementExecutor.buildIterator(this, connectionSource, paramPreparedQuery, objectCache, paramInt);
      return paramPreparedQuery;
    }
    catch (SQLException paramPreparedQuery)
    {
      throw SqlExceptionUtil.create("Could not build prepared-query iterator for " + dataClass, paramPreparedQuery);
    }
  }
  
  private <FT> ForeignCollection<FT> makeEmptyForeignCollection(T paramT, String paramString)
  {
    checkForInitialized();
    Object localObject;
    FieldType[] arrayOfFieldType;
    int j;
    int i;
    if (paramT == null)
    {
      localObject = null;
      arrayOfFieldType = tableInfo.getFieldTypes();
      j = arrayOfFieldType.length;
      i = 0;
    }
    for (;;)
    {
      if (i >= j) {
        break label94;
      }
      FieldType localFieldType = arrayOfFieldType[i];
      if (localFieldType.getColumnName().equals(paramString))
      {
        paramString = localFieldType.buildForeignCollection(paramT, localObject);
        if (paramT != null) {
          localFieldType.assignField(paramT, paramString, true, null);
        }
        return paramString;
        localObject = extractId(paramT);
        break;
      }
      i += 1;
    }
    label94:
    throw new IllegalArgumentException("Could not find a field named " + paramString);
  }
  
  private List<T> queryForFieldValues(Map<String, Object> paramMap, boolean paramBoolean)
  {
    checkForInitialized();
    QueryBuilder localQueryBuilder = queryBuilder();
    Where localWhere = localQueryBuilder.where();
    Iterator localIterator = paramMap.entrySet().iterator();
    Map.Entry localEntry;
    Object localObject;
    if (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      localObject = localEntry.getValue();
      if (!paramBoolean) {
        break label124;
      }
      localObject = new SelectArg(localObject);
    }
    label124:
    for (;;)
    {
      localWhere.eq((String)localEntry.getKey(), localObject);
      break;
      if (paramMap.size() == 0) {
        return Collections.emptyList();
      }
      localWhere.and(paramMap.size());
      return localQueryBuilder.query();
    }
  }
  
  private List<T> queryForMatching(T paramT, boolean paramBoolean)
  {
    checkForInitialized();
    QueryBuilder localQueryBuilder = queryBuilder();
    Where localWhere = localQueryBuilder.where();
    FieldType[] arrayOfFieldType = tableInfo.getFieldTypes();
    int k = arrayOfFieldType.length;
    int j = 0;
    int i = 0;
    if (j < k)
    {
      FieldType localFieldType = arrayOfFieldType[j];
      Object localObject = localFieldType.getFieldValueIfNotDefault(paramT);
      if (localObject == null) {
        break label128;
      }
      if (!paramBoolean) {
        break label125;
      }
      localObject = new SelectArg(localObject);
      label75:
      localWhere.eq(localFieldType.getColumnName(), localObject);
      i += 1;
    }
    label125:
    label128:
    for (;;)
    {
      j += 1;
      break;
      if (i == 0) {
        return Collections.emptyList();
      }
      localWhere.and(i);
      return localQueryBuilder.query();
      break label75;
    }
  }
  
  public void assignEmptyForeignCollection(T paramT, String paramString)
  {
    makeEmptyForeignCollection(paramT, paramString);
  }
  
  public <CT> CT callBatchTasks(Callable<CT> paramCallable)
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = connectionSource.getReadWriteConnection();
    try
    {
      boolean bool = connectionSource.saveSpecialConnection(localDatabaseConnection);
      paramCallable = statementExecutor.callBatchTasks(localDatabaseConnection, bool, paramCallable);
      return paramCallable;
    }
    finally
    {
      connectionSource.clearSpecialConnection(localDatabaseConnection);
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  protected void checkForInitialized()
  {
    if (!initialized) {
      throw new IllegalStateException("you must call initialize() before you can use the dao");
    }
  }
  
  public void clearObjectCache()
  {
    if (objectCache != null) {
      objectCache.clear(dataClass);
    }
  }
  
  public void closeLastIterator()
  {
    if (lastIterator != null)
    {
      lastIterator.close();
      lastIterator = null;
    }
  }
  
  public CloseableIterator<T> closeableIterator()
  {
    return iterator(-1);
  }
  
  public void commit(DatabaseConnection paramDatabaseConnection)
  {
    paramDatabaseConnection.commit(null);
  }
  
  public long countOf()
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = connectionSource.getReadOnlyConnection();
    try
    {
      long l = statementExecutor.queryForCountStar(localDatabaseConnection);
      return l;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public long countOf(PreparedQuery<T> paramPreparedQuery)
  {
    checkForInitialized();
    if (paramPreparedQuery.getType() != StatementBuilder.StatementType.SELECT_LONG) {
      throw new IllegalArgumentException("Prepared query is not of type " + StatementBuilder.StatementType.SELECT_LONG + ", did you call QueryBuilder.setCountOf(true)?");
    }
    DatabaseConnection localDatabaseConnection = connectionSource.getReadOnlyConnection();
    try
    {
      long l = statementExecutor.queryForLong(localDatabaseConnection, paramPreparedQuery);
      return l;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public int create(T paramT)
  {
    checkForInitialized();
    if (paramT == null) {
      return 0;
    }
    if ((paramT instanceof BaseDaoEnabled)) {
      ((BaseDaoEnabled)paramT).setDao(this);
    }
    DatabaseConnection localDatabaseConnection = connectionSource.getReadWriteConnection();
    try
    {
      int i = statementExecutor.create(localDatabaseConnection, paramT, objectCache);
      return i;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public T createIfNotExists(T paramT)
  {
    if (paramT == null) {
      return null;
    }
    Object localObject = queryForSameId(paramT);
    if (localObject == null)
    {
      create(paramT);
      return paramT;
    }
    return (T)localObject;
  }
  
  public Dao.CreateOrUpdateStatus createOrUpdate(T paramT)
  {
    if (paramT == null) {
      return new Dao.CreateOrUpdateStatus(false, false, 0);
    }
    Object localObject = extractId(paramT);
    if ((localObject == null) || (!idExists(localObject))) {
      return new Dao.CreateOrUpdateStatus(true, false, create(paramT));
    }
    return new Dao.CreateOrUpdateStatus(false, true, update(paramT));
  }
  
  public int delete(PreparedDelete<T> paramPreparedDelete)
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = connectionSource.getReadWriteConnection();
    try
    {
      int i = statementExecutor.delete(localDatabaseConnection, paramPreparedDelete);
      return i;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public int delete(T paramT)
  {
    checkForInitialized();
    if (paramT == null) {
      return 0;
    }
    DatabaseConnection localDatabaseConnection = connectionSource.getReadWriteConnection();
    try
    {
      int i = statementExecutor.delete(localDatabaseConnection, paramT, objectCache);
      return i;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public int delete(Collection<T> paramCollection)
  {
    checkForInitialized();
    if ((paramCollection == null) || (paramCollection.isEmpty())) {
      return 0;
    }
    DatabaseConnection localDatabaseConnection = connectionSource.getReadWriteConnection();
    try
    {
      int i = statementExecutor.deleteObjects(localDatabaseConnection, paramCollection, objectCache);
      return i;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public DeleteBuilder<T, ID> deleteBuilder()
  {
    checkForInitialized();
    return new DeleteBuilder(databaseType, tableInfo, this);
  }
  
  public int deleteById(ID paramID)
  {
    checkForInitialized();
    if (paramID == null) {
      return 0;
    }
    DatabaseConnection localDatabaseConnection = connectionSource.getReadWriteConnection();
    try
    {
      int i = statementExecutor.deleteById(localDatabaseConnection, paramID, objectCache);
      return i;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public int deleteIds(Collection<ID> paramCollection)
  {
    checkForInitialized();
    if ((paramCollection == null) || (paramCollection.isEmpty())) {
      return 0;
    }
    DatabaseConnection localDatabaseConnection = connectionSource.getReadWriteConnection();
    try
    {
      int i = statementExecutor.deleteIds(localDatabaseConnection, paramCollection, objectCache);
      return i;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public void endThreadConnection(DatabaseConnection paramDatabaseConnection)
  {
    connectionSource.clearSpecialConnection(paramDatabaseConnection);
    connectionSource.releaseConnection(paramDatabaseConnection);
  }
  
  public int executeRaw(String paramString, String... paramVarArgs)
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = connectionSource.getReadWriteConnection();
    try
    {
      int i = statementExecutor.executeRaw(localDatabaseConnection, paramString, paramVarArgs);
      return i;
    }
    catch (SQLException paramVarArgs)
    {
      throw SqlExceptionUtil.create("Could not run raw execute statement " + paramString, paramVarArgs);
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public int executeRawNoArgs(String paramString)
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = connectionSource.getReadWriteConnection();
    try
    {
      int i = statementExecutor.executeRawNoArgs(localDatabaseConnection, paramString);
      return i;
    }
    catch (SQLException localSQLException)
    {
      throw SqlExceptionUtil.create("Could not run raw execute statement " + paramString, localSQLException);
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public ID extractId(T paramT)
  {
    checkForInitialized();
    FieldType localFieldType = tableInfo.getIdField();
    if (localFieldType == null) {
      throw new SQLException("Class " + dataClass + " does not have an id field");
    }
    return (ID)localFieldType.extractJavaFieldValue(paramT);
  }
  
  public FieldType findForeignFieldType(Class<?> paramClass)
  {
    checkForInitialized();
    FieldType[] arrayOfFieldType = tableInfo.getFieldTypes();
    int j = arrayOfFieldType.length;
    int i = 0;
    while (i < j)
    {
      FieldType localFieldType = arrayOfFieldType[i];
      if (localFieldType.getType() == paramClass) {
        return localFieldType;
      }
      i += 1;
    }
    return null;
  }
  
  public ConnectionSource getConnectionSource()
  {
    return connectionSource;
  }
  
  public Class<T> getDataClass()
  {
    return dataClass;
  }
  
  public <FT> ForeignCollection<FT> getEmptyForeignCollection(String paramString)
  {
    return makeEmptyForeignCollection(null, paramString);
  }
  
  public ObjectCache getObjectCache()
  {
    return objectCache;
  }
  
  public ObjectFactory<T> getObjectFactory()
  {
    return objectFactory;
  }
  
  public RawRowMapper<T> getRawRowMapper()
  {
    return statementExecutor.getRawRowMapper();
  }
  
  public GenericRowMapper<T> getSelectStarRowMapper()
  {
    return statementExecutor.getSelectStarRowMapper();
  }
  
  public DatabaseTableConfig<T> getTableConfig()
  {
    return tableConfig;
  }
  
  public TableInfo<T, ID> getTableInfo()
  {
    return tableInfo;
  }
  
  public CloseableWrappedIterable<T> getWrappedIterable()
  {
    checkForInitialized();
    return new CloseableWrappedIterableImpl(new BaseDaoImpl.2(this));
  }
  
  public CloseableWrappedIterable<T> getWrappedIterable(PreparedQuery<T> paramPreparedQuery)
  {
    checkForInitialized();
    return new CloseableWrappedIterableImpl(new BaseDaoImpl.3(this, paramPreparedQuery));
  }
  
  public boolean idExists(ID paramID)
  {
    DatabaseConnection localDatabaseConnection = connectionSource.getReadOnlyConnection();
    try
    {
      boolean bool = statementExecutor.ifExists(localDatabaseConnection, paramID);
      return bool;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public void initialize()
  {
    if (initialized) {}
    List localList;
    do
    {
      return;
      if (connectionSource == null) {
        throw new IllegalStateException("connectionSource was never set on " + getClass().getSimpleName());
      }
      databaseType = connectionSource.getDatabaseType();
      if (databaseType == null) {
        throw new IllegalStateException("connectionSource is getting a null DatabaseType in " + getClass().getSimpleName());
      }
      if (tableConfig != null) {
        break;
      }
      tableInfo = new TableInfo(connectionSource, this, dataClass);
      statementExecutor = new StatementExecutor(databaseType, tableInfo, this);
      localList = (List)daoConfigLevelLocal.get();
      localList.add(this);
    } while (localList.size() > 1);
    int i = 0;
    for (;;)
    {
      try
      {
        if (i >= localList.size()) {
          break label326;
        }
        BaseDaoImpl localBaseDaoImpl = (BaseDaoImpl)localList.get(i);
        DaoManager.registerDao(connectionSource, localBaseDaoImpl);
        try
        {
          FieldType[] arrayOfFieldType = localBaseDaoImpl.getTableInfo().getFieldTypes();
          int k = arrayOfFieldType.length;
          int j = 0;
          if (j < k)
          {
            arrayOfFieldType[j].configDaoInformation(connectionSource, localBaseDaoImpl.getDataClass());
            j += 1;
            continue;
            tableConfig.extractFieldTypes(connectionSource);
            tableInfo = new TableInfo(databaseType, this, tableConfig);
          }
        }
        catch (SQLException localSQLException)
        {
          DaoManager.unregisterDao(connectionSource, localBaseDaoImpl);
          throw localSQLException;
        }
        initialized = true;
      }
      finally
      {
        localList.clear();
        daoConfigLevelLocal.remove();
      }
      i += 1;
    }
    label326:
    localList.clear();
    daoConfigLevelLocal.remove();
  }
  
  public boolean isAutoCommit()
  {
    DatabaseConnection localDatabaseConnection = connectionSource.getReadWriteConnection();
    try
    {
      boolean bool = isAutoCommit(localDatabaseConnection);
      return bool;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public boolean isAutoCommit(DatabaseConnection paramDatabaseConnection)
  {
    return paramDatabaseConnection.isAutoCommit();
  }
  
  public boolean isTableExists()
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = connectionSource.getReadOnlyConnection();
    try
    {
      boolean bool = localDatabaseConnection.isTableExists(tableInfo.getTableName());
      return bool;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public boolean isUpdatable()
  {
    return tableInfo.isUpdatable();
  }
  
  public CloseableIterator<T> iterator()
  {
    return iterator(-1);
  }
  
  public CloseableIterator<T> iterator(int paramInt)
  {
    checkForInitialized();
    lastIterator = createIterator(paramInt);
    return lastIterator;
  }
  
  public CloseableIterator<T> iterator(PreparedQuery<T> paramPreparedQuery)
  {
    return iterator(paramPreparedQuery, -1);
  }
  
  public CloseableIterator<T> iterator(PreparedQuery<T> paramPreparedQuery, int paramInt)
  {
    checkForInitialized();
    lastIterator = createIterator(paramPreparedQuery, paramInt);
    return lastIterator;
  }
  
  public T mapSelectStarRow(DatabaseResults paramDatabaseResults)
  {
    return (T)statementExecutor.getSelectStarRowMapper().mapRow(paramDatabaseResults);
  }
  
  public String objectToString(T paramT)
  {
    checkForInitialized();
    return tableInfo.objectToString(paramT);
  }
  
  public boolean objectsEqual(T paramT1, T paramT2)
  {
    checkForInitialized();
    FieldType[] arrayOfFieldType = tableInfo.getFieldTypes();
    int j = arrayOfFieldType.length;
    int i = 0;
    while (i < j)
    {
      FieldType localFieldType = arrayOfFieldType[i];
      Object localObject1 = localFieldType.extractJavaFieldValue(paramT1);
      Object localObject2 = localFieldType.extractJavaFieldValue(paramT2);
      if (!localFieldType.getDataPersister().dataIsEqual(localObject1, localObject2)) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public List<T> query(PreparedQuery<T> paramPreparedQuery)
  {
    checkForInitialized();
    return statementExecutor.query(connectionSource, paramPreparedQuery, objectCache);
  }
  
  public QueryBuilder<T, ID> queryBuilder()
  {
    checkForInitialized();
    return new QueryBuilder(databaseType, tableInfo, this);
  }
  
  public List<T> queryForAll()
  {
    checkForInitialized();
    return statementExecutor.queryForAll(connectionSource, objectCache);
  }
  
  public List<T> queryForEq(String paramString, Object paramObject)
  {
    return queryBuilder().where().eq(paramString, paramObject).query();
  }
  
  public List<T> queryForFieldValues(Map<String, Object> paramMap)
  {
    return queryForFieldValues(paramMap, false);
  }
  
  public List<T> queryForFieldValuesArgs(Map<String, Object> paramMap)
  {
    return queryForFieldValues(paramMap, true);
  }
  
  public T queryForFirst(PreparedQuery<T> paramPreparedQuery)
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = connectionSource.getReadOnlyConnection();
    try
    {
      paramPreparedQuery = statementExecutor.queryForFirst(localDatabaseConnection, paramPreparedQuery, objectCache);
      return paramPreparedQuery;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public T queryForId(ID paramID)
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = connectionSource.getReadOnlyConnection();
    try
    {
      paramID = statementExecutor.queryForId(localDatabaseConnection, paramID, objectCache);
      return paramID;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public List<T> queryForMatching(T paramT)
  {
    return queryForMatching(paramT, false);
  }
  
  public List<T> queryForMatchingArgs(T paramT)
  {
    return queryForMatching(paramT, true);
  }
  
  public T queryForSameId(T paramT)
  {
    checkForInitialized();
    if (paramT == null) {}
    do
    {
      return null;
      paramT = extractId(paramT);
    } while (paramT == null);
    return (T)queryForId(paramT);
  }
  
  public <GR> GenericRawResults<GR> queryRaw(String paramString, RawRowMapper<GR> paramRawRowMapper, String... paramVarArgs)
  {
    checkForInitialized();
    try
    {
      paramRawRowMapper = statementExecutor.queryRaw(connectionSource, paramString, paramRawRowMapper, paramVarArgs, objectCache);
      return paramRawRowMapper;
    }
    catch (SQLException paramRawRowMapper)
    {
      throw SqlExceptionUtil.create("Could not perform raw query for " + paramString, paramRawRowMapper);
    }
  }
  
  public <UO> GenericRawResults<UO> queryRaw(String paramString, DataType[] paramArrayOfDataType, RawRowObjectMapper<UO> paramRawRowObjectMapper, String... paramVarArgs)
  {
    checkForInitialized();
    try
    {
      paramArrayOfDataType = statementExecutor.queryRaw(connectionSource, paramString, paramArrayOfDataType, paramRawRowObjectMapper, paramVarArgs, objectCache);
      return paramArrayOfDataType;
    }
    catch (SQLException paramArrayOfDataType)
    {
      throw SqlExceptionUtil.create("Could not perform raw query for " + paramString, paramArrayOfDataType);
    }
  }
  
  public GenericRawResults<Object[]> queryRaw(String paramString, DataType[] paramArrayOfDataType, String... paramVarArgs)
  {
    checkForInitialized();
    try
    {
      paramArrayOfDataType = statementExecutor.queryRaw(connectionSource, paramString, paramArrayOfDataType, paramVarArgs, objectCache);
      return paramArrayOfDataType;
    }
    catch (SQLException paramArrayOfDataType)
    {
      throw SqlExceptionUtil.create("Could not perform raw query for " + paramString, paramArrayOfDataType);
    }
  }
  
  public GenericRawResults<String[]> queryRaw(String paramString, String... paramVarArgs)
  {
    checkForInitialized();
    try
    {
      paramVarArgs = statementExecutor.queryRaw(connectionSource, paramString, paramVarArgs, objectCache);
      return paramVarArgs;
    }
    catch (SQLException paramVarArgs)
    {
      throw SqlExceptionUtil.create("Could not perform raw query for " + paramString, paramVarArgs);
    }
  }
  
  public long queryRawValue(String paramString, String... paramVarArgs)
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = connectionSource.getReadOnlyConnection();
    try
    {
      long l = statementExecutor.queryForLong(localDatabaseConnection, paramString, paramVarArgs);
      return l;
    }
    catch (SQLException paramVarArgs)
    {
      throw SqlExceptionUtil.create("Could not perform raw value query for " + paramString, paramVarArgs);
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public int refresh(T paramT)
  {
    checkForInitialized();
    if (paramT == null) {
      return 0;
    }
    if ((paramT instanceof BaseDaoEnabled)) {
      ((BaseDaoEnabled)paramT).setDao(this);
    }
    DatabaseConnection localDatabaseConnection = connectionSource.getReadOnlyConnection();
    try
    {
      int i = statementExecutor.refresh(localDatabaseConnection, paramT, objectCache);
      return i;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public void rollBack(DatabaseConnection paramDatabaseConnection)
  {
    paramDatabaseConnection.rollback(null);
  }
  
  public void setAutoCommit(DatabaseConnection paramDatabaseConnection, boolean paramBoolean)
  {
    paramDatabaseConnection.setAutoCommit(paramBoolean);
  }
  
  public void setAutoCommit(boolean paramBoolean)
  {
    DatabaseConnection localDatabaseConnection = connectionSource.getReadWriteConnection();
    try
    {
      setAutoCommit(localDatabaseConnection, paramBoolean);
      return;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public void setConnectionSource(ConnectionSource paramConnectionSource)
  {
    connectionSource = paramConnectionSource;
  }
  
  public void setObjectCache(ObjectCache paramObjectCache)
  {
    if (paramObjectCache == null)
    {
      if (objectCache != null)
      {
        objectCache.clear(dataClass);
        objectCache = null;
      }
      return;
    }
    if ((objectCache != null) && (objectCache != paramObjectCache)) {
      objectCache.clear(dataClass);
    }
    if (tableInfo.getIdField() == null) {
      throw new SQLException("Class " + dataClass + " must have an id field to enable the object cache");
    }
    objectCache = paramObjectCache;
    objectCache.registerClass(dataClass);
  }
  
  public void setObjectCache(boolean paramBoolean)
  {
    if (paramBoolean) {
      if (objectCache == null) {
        if (tableInfo.getIdField() == null) {
          throw new SQLException("Class " + dataClass + " must have an id field to enable the object cache");
        }
      }
    }
    while (objectCache == null) {
      try
      {
        if (defaultObjectCache == null) {
          defaultObjectCache = ReferenceObjectCache.makeWeakCache();
        }
        objectCache = defaultObjectCache;
        objectCache.registerClass(dataClass);
        return;
      }
      finally {}
    }
    objectCache.clear(dataClass);
    objectCache = null;
  }
  
  public void setObjectFactory(ObjectFactory<T> paramObjectFactory)
  {
    checkForInitialized();
    objectFactory = paramObjectFactory;
  }
  
  public void setTableConfig(DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    tableConfig = paramDatabaseTableConfig;
  }
  
  public DatabaseConnection startThreadConnection()
  {
    DatabaseConnection localDatabaseConnection = connectionSource.getReadWriteConnection();
    connectionSource.saveSpecialConnection(localDatabaseConnection);
    return localDatabaseConnection;
  }
  
  public int update(PreparedUpdate<T> paramPreparedUpdate)
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = connectionSource.getReadWriteConnection();
    try
    {
      int i = statementExecutor.update(localDatabaseConnection, paramPreparedUpdate);
      return i;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public int update(T paramT)
  {
    checkForInitialized();
    if (paramT == null) {
      return 0;
    }
    DatabaseConnection localDatabaseConnection = connectionSource.getReadWriteConnection();
    try
    {
      int i = statementExecutor.update(localDatabaseConnection, paramT, objectCache);
      return i;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public UpdateBuilder<T, ID> updateBuilder()
  {
    checkForInitialized();
    return new UpdateBuilder(databaseType, tableInfo, this);
  }
  
  public int updateId(T paramT, ID paramID)
  {
    checkForInitialized();
    if (paramT == null) {
      return 0;
    }
    DatabaseConnection localDatabaseConnection = connectionSource.getReadWriteConnection();
    try
    {
      int i = statementExecutor.updateId(localDatabaseConnection, paramT, paramID, objectCache);
      return i;
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
  
  public int updateRaw(String paramString, String... paramVarArgs)
  {
    checkForInitialized();
    DatabaseConnection localDatabaseConnection = connectionSource.getReadWriteConnection();
    try
    {
      int i = statementExecutor.updateRaw(localDatabaseConnection, paramString, paramVarArgs);
      return i;
    }
    catch (SQLException paramVarArgs)
    {
      throw SqlExceptionUtil.create("Could not run raw update statement " + paramString, paramVarArgs);
    }
    finally
    {
      connectionSource.releaseConnection(localDatabaseConnection);
    }
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.BaseDaoImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */