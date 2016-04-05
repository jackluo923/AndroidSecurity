package com.j256.ormlite.stmt;

import com.j256.ormlite.field.FieldType;
import java.util.List;

public class QueryBuilder$InternalQueryBuilderWrapper
{
  private final QueryBuilder<?, ?> queryBuilder;
  
  QueryBuilder$InternalQueryBuilderWrapper(QueryBuilder<?, ?> paramQueryBuilder)
  {
    queryBuilder = paramQueryBuilder;
  }
  
  public void appendStatementString(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    queryBuilder.appendStatementString(paramStringBuilder, paramList);
  }
  
  public FieldType[] getResultFieldTypes()
  {
    return queryBuilder.getResultFieldTypes();
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.QueryBuilder.InternalQueryBuilderWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */