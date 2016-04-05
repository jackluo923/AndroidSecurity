package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.ArgumentHolder;
import com.j256.ormlite.stmt.QueryBuilder.InternalQueryBuilderWrapper;
import java.sql.SQLException;
import java.util.List;

public class InSubQuery
  extends BaseComparison
{
  private final boolean in;
  private final QueryBuilder.InternalQueryBuilderWrapper subQueryBuilder;
  
  public InSubQuery(String paramString, FieldType paramFieldType, QueryBuilder.InternalQueryBuilderWrapper paramInternalQueryBuilderWrapper, boolean paramBoolean)
  {
    super(paramString, paramFieldType, null, true);
    subQueryBuilder = paramInternalQueryBuilderWrapper;
    in = paramBoolean;
  }
  
  public void appendOperation(StringBuilder paramStringBuilder)
  {
    if (in)
    {
      paramStringBuilder.append("IN ");
      return;
    }
    paramStringBuilder.append("NOT IN ");
  }
  
  public void appendValue(DatabaseType paramDatabaseType, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    paramStringBuilder.append('(');
    subQueryBuilder.appendStatementString(paramStringBuilder, paramList);
    paramDatabaseType = subQueryBuilder.getResultFieldTypes();
    if (paramDatabaseType != null)
    {
      if (paramDatabaseType.length != 1) {
        throw new SQLException("There must be only 1 result column in sub-query but we found " + paramDatabaseType.length);
      }
      if (fieldType.getSqlType() != paramDatabaseType[0].getSqlType()) {
        throw new SQLException("Outer column " + fieldType + " is not the same type as inner column " + paramDatabaseType[0]);
      }
    }
    paramStringBuilder.append(") ");
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.query.InSubQuery
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */