package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import com.j256.ormlite.stmt.QueryBuilder.InternalQueryBuilderWrapper;
import java.util.List;

public class Exists
  implements Clause
{
  private final QueryBuilder.InternalQueryBuilderWrapper subQueryBuilder;
  
  public Exists(QueryBuilder.InternalQueryBuilderWrapper paramInternalQueryBuilderWrapper)
  {
    subQueryBuilder = paramInternalQueryBuilderWrapper;
  }
  
  public void appendSql(DatabaseType paramDatabaseType, String paramString, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    paramStringBuilder.append("EXISTS (");
    subQueryBuilder.appendStatementString(paramStringBuilder, paramList);
    paramStringBuilder.append(") ");
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.query.Exists
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */