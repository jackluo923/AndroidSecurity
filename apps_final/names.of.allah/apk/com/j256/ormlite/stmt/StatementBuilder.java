package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.stmt.mapped.MappedPreparedStmt;
import com.j256.ormlite.table.TableInfo;
import java.util.ArrayList;
import java.util.List;

public abstract class StatementBuilder<T, ID>
{
  private static Logger logger = LoggerFactory.getLogger(StatementBuilder.class);
  protected boolean addTableName;
  protected final Dao<T, ID> dao;
  protected final DatabaseType databaseType;
  protected final TableInfo<T, ID> tableInfo;
  protected final String tableName;
  protected StatementBuilder.StatementType type;
  protected Where<T, ID> where = null;
  
  public StatementBuilder(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, Dao<T, ID> paramDao, StatementBuilder.StatementType paramStatementType)
  {
    databaseType = paramDatabaseType;
    tableInfo = paramTableInfo;
    tableName = paramTableInfo.getTableName();
    dao = paramDao;
    type = paramStatementType;
    if (!paramStatementType.isOkForStatementBuilder()) {
      throw new IllegalStateException("Building a statement from a " + paramStatementType + " statement is not allowed");
    }
  }
  
  protected abstract void appendStatementEnd(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList);
  
  protected abstract void appendStatementStart(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList);
  
  protected void appendStatementString(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    appendStatementStart(paramStringBuilder, paramList);
    appendWhereStatement(paramStringBuilder, paramList, StatementBuilder.WhereOperation.FIRST);
    appendStatementEnd(paramStringBuilder, paramList);
  }
  
  protected boolean appendWhereStatement(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList, StatementBuilder.WhereOperation paramWhereOperation)
  {
    if (where == null) {
      return paramWhereOperation == StatementBuilder.WhereOperation.FIRST;
    }
    paramWhereOperation.appendBefore(paramStringBuilder);
    Where localWhere = where;
    if (addTableName) {}
    for (String str = tableName;; str = null)
    {
      localWhere.appendSql(str, paramStringBuilder, paramList);
      paramWhereOperation.appendAfter(paramStringBuilder);
      return false;
    }
  }
  
  protected String buildStatementString(List<ArgumentHolder> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    appendStatementString(localStringBuilder, paramList);
    paramList = localStringBuilder.toString();
    logger.debug("built statement {}", paramList);
    return paramList;
  }
  
  @Deprecated
  public void clear()
  {
    reset();
  }
  
  protected FieldType[] getResultFieldTypes()
  {
    return null;
  }
  
  StatementBuilder.StatementType getType()
  {
    return type;
  }
  
  protected MappedPreparedStmt<T, ID> prepareStatement(Long paramLong)
  {
    Object localObject = new ArrayList();
    String str = buildStatementString((List)localObject);
    ArgumentHolder[] arrayOfArgumentHolder = (ArgumentHolder[])((List)localObject).toArray(new ArgumentHolder[((List)localObject).size()]);
    FieldType[] arrayOfFieldType = getResultFieldTypes();
    localObject = new FieldType[((List)localObject).size()];
    int i = 0;
    while (i < arrayOfArgumentHolder.length)
    {
      localObject[i] = arrayOfArgumentHolder[i].getFieldType();
      i += 1;
    }
    if (!type.isOkForStatementBuilder()) {
      throw new IllegalStateException("Building a statement from a " + type + " statement is not allowed");
    }
    TableInfo localTableInfo = tableInfo;
    if (databaseType.isLimitSqlSupported()) {
      paramLong = null;
    }
    for (;;)
    {
      return new MappedPreparedStmt(localTableInfo, str, (FieldType[])localObject, arrayOfFieldType, arrayOfArgumentHolder, paramLong, type);
    }
  }
  
  public StatementBuilder.StatementInfo prepareStatementInfo()
  {
    ArrayList localArrayList = new ArrayList();
    return new StatementBuilder.StatementInfo(buildStatementString(localArrayList), localArrayList, null);
  }
  
  public String prepareStatementString()
  {
    return buildStatementString(new ArrayList());
  }
  
  public void reset()
  {
    where = null;
  }
  
  public void setWhere(Where<T, ID> paramWhere)
  {
    where = paramWhere;
  }
  
  protected boolean shouldPrependTableNameToColumns()
  {
    return false;
  }
  
  protected FieldType verifyColumnName(String paramString)
  {
    return tableInfo.getFieldTypeByColumnName(paramString);
  }
  
  public Where<T, ID> where()
  {
    where = new Where(tableInfo, this, databaseType);
    return where;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.StatementBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */