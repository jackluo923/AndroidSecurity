package com.j256.ormlite.stmt;

import com.j256.ormlite.field.FieldType;

class QueryBuilder$JoinInfo
{
  FieldType localField;
  StatementBuilder.WhereOperation operation;
  final QueryBuilder<?, ?> queryBuilder;
  FieldType remoteField;
  final String type;
  
  public QueryBuilder$JoinInfo(String paramString, QueryBuilder<?, ?> paramQueryBuilder, StatementBuilder.WhereOperation paramWhereOperation)
  {
    type = paramQueryBuilder;
    queryBuilder = paramWhereOperation;
    StatementBuilder.WhereOperation localWhereOperation;
    operation = localWhereOperation;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.QueryBuilder.JoinInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */