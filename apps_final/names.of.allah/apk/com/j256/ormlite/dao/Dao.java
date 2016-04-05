package com.j256.ormlite.dao;

import com.j256.ormlite.field.DataType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.GenericRowMapper;
import com.j256.ormlite.stmt.PreparedDelete;
import com.j256.ormlite.stmt.PreparedQuery;
import com.j256.ormlite.stmt.PreparedUpdate;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.UpdateBuilder;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.support.DatabaseResults;
import com.j256.ormlite.table.ObjectFactory;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

public abstract interface Dao<T, ID>
  extends CloseableIterable<T>
{
  public abstract void assignEmptyForeignCollection(T paramT, String paramString);
  
  public abstract <CT> CT callBatchTasks(Callable<CT> paramCallable);
  
  public abstract void clearObjectCache();
  
  public abstract void closeLastIterator();
  
  public abstract void commit(DatabaseConnection paramDatabaseConnection);
  
  public abstract long countOf();
  
  public abstract long countOf(PreparedQuery<T> paramPreparedQuery);
  
  public abstract int create(T paramT);
  
  public abstract T createIfNotExists(T paramT);
  
  public abstract Dao.CreateOrUpdateStatus createOrUpdate(T paramT);
  
  public abstract int delete(PreparedDelete<T> paramPreparedDelete);
  
  public abstract int delete(T paramT);
  
  public abstract int delete(Collection<T> paramCollection);
  
  public abstract DeleteBuilder<T, ID> deleteBuilder();
  
  public abstract int deleteById(ID paramID);
  
  public abstract int deleteIds(Collection<ID> paramCollection);
  
  public abstract void endThreadConnection(DatabaseConnection paramDatabaseConnection);
  
  public abstract int executeRaw(String paramString, String... paramVarArgs);
  
  public abstract int executeRawNoArgs(String paramString);
  
  public abstract ID extractId(T paramT);
  
  public abstract FieldType findForeignFieldType(Class<?> paramClass);
  
  public abstract ConnectionSource getConnectionSource();
  
  public abstract Class<T> getDataClass();
  
  public abstract <FT> ForeignCollection<FT> getEmptyForeignCollection(String paramString);
  
  public abstract ObjectCache getObjectCache();
  
  public abstract RawRowMapper<T> getRawRowMapper();
  
  public abstract GenericRowMapper<T> getSelectStarRowMapper();
  
  public abstract CloseableWrappedIterable<T> getWrappedIterable();
  
  public abstract CloseableWrappedIterable<T> getWrappedIterable(PreparedQuery<T> paramPreparedQuery);
  
  public abstract boolean idExists(ID paramID);
  
  @Deprecated
  public abstract boolean isAutoCommit();
  
  public abstract boolean isAutoCommit(DatabaseConnection paramDatabaseConnection);
  
  public abstract boolean isTableExists();
  
  public abstract boolean isUpdatable();
  
  public abstract CloseableIterator<T> iterator();
  
  public abstract CloseableIterator<T> iterator(int paramInt);
  
  public abstract CloseableIterator<T> iterator(PreparedQuery<T> paramPreparedQuery);
  
  public abstract CloseableIterator<T> iterator(PreparedQuery<T> paramPreparedQuery, int paramInt);
  
  public abstract T mapSelectStarRow(DatabaseResults paramDatabaseResults);
  
  public abstract String objectToString(T paramT);
  
  public abstract boolean objectsEqual(T paramT1, T paramT2);
  
  public abstract List<T> query(PreparedQuery<T> paramPreparedQuery);
  
  public abstract QueryBuilder<T, ID> queryBuilder();
  
  public abstract List<T> queryForAll();
  
  public abstract List<T> queryForEq(String paramString, Object paramObject);
  
  public abstract List<T> queryForFieldValues(Map<String, Object> paramMap);
  
  public abstract List<T> queryForFieldValuesArgs(Map<String, Object> paramMap);
  
  public abstract T queryForFirst(PreparedQuery<T> paramPreparedQuery);
  
  public abstract T queryForId(ID paramID);
  
  public abstract List<T> queryForMatching(T paramT);
  
  public abstract List<T> queryForMatchingArgs(T paramT);
  
  public abstract T queryForSameId(T paramT);
  
  public abstract <UO> GenericRawResults<UO> queryRaw(String paramString, RawRowMapper<UO> paramRawRowMapper, String... paramVarArgs);
  
  public abstract <UO> GenericRawResults<UO> queryRaw(String paramString, DataType[] paramArrayOfDataType, RawRowObjectMapper<UO> paramRawRowObjectMapper, String... paramVarArgs);
  
  public abstract GenericRawResults<Object[]> queryRaw(String paramString, DataType[] paramArrayOfDataType, String... paramVarArgs);
  
  public abstract GenericRawResults<String[]> queryRaw(String paramString, String... paramVarArgs);
  
  public abstract long queryRawValue(String paramString, String... paramVarArgs);
  
  public abstract int refresh(T paramT);
  
  public abstract void rollBack(DatabaseConnection paramDatabaseConnection);
  
  public abstract void setAutoCommit(DatabaseConnection paramDatabaseConnection, boolean paramBoolean);
  
  @Deprecated
  public abstract void setAutoCommit(boolean paramBoolean);
  
  public abstract void setObjectCache(ObjectCache paramObjectCache);
  
  public abstract void setObjectCache(boolean paramBoolean);
  
  public abstract void setObjectFactory(ObjectFactory<T> paramObjectFactory);
  
  public abstract DatabaseConnection startThreadConnection();
  
  public abstract int update(PreparedUpdate<T> paramPreparedUpdate);
  
  public abstract int update(T paramT);
  
  public abstract UpdateBuilder<T, ID> updateBuilder();
  
  public abstract int updateId(T paramT, ID paramID);
  
  public abstract int updateRaw(String paramString, String... paramVarArgs);
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.Dao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */