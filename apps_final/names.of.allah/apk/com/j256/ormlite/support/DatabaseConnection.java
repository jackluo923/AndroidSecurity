package com.j256.ormlite.support;

import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.GenericRowMapper;
import com.j256.ormlite.stmt.StatementBuilder.StatementType;
import java.sql.Savepoint;

public abstract interface DatabaseConnection
{
  public static final int DEFAULT_RESULT_FLAGS = -1;
  public static final Object MORE_THAN_ONE = new Object();
  
  public abstract void close();
  
  public abstract void closeQuietly();
  
  public abstract void commit(Savepoint paramSavepoint);
  
  public abstract CompiledStatement compileStatement(String paramString, StatementBuilder.StatementType paramStatementType, FieldType[] paramArrayOfFieldType, int paramInt);
  
  public abstract int delete(String paramString, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType);
  
  public abstract int executeStatement(String paramString, int paramInt);
  
  public abstract int insert(String paramString, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType, GeneratedKeyHolder paramGeneratedKeyHolder);
  
  public abstract boolean isAutoCommit();
  
  public abstract boolean isAutoCommitSupported();
  
  public abstract boolean isClosed();
  
  public abstract boolean isTableExists(String paramString);
  
  public abstract long queryForLong(String paramString);
  
  public abstract long queryForLong(String paramString, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType);
  
  public abstract <T> Object queryForOne(String paramString, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType, GenericRowMapper<T> paramGenericRowMapper, ObjectCache paramObjectCache);
  
  public abstract void rollback(Savepoint paramSavepoint);
  
  public abstract void setAutoCommit(boolean paramBoolean);
  
  public abstract Savepoint setSavePoint(String paramString);
  
  public abstract int update(String paramString, Object[] paramArrayOfObject, FieldType[] paramArrayOfFieldType);
}

/* Location:
 * Qualified Name:     com.j256.ormlite.support.DatabaseConnection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */