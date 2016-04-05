package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.util.List;

public class Not
  implements Clause, NeedsFutureClause
{
  private Comparison comparison = null;
  private Exists exists = null;
  
  public Not() {}
  
  public Not(Clause paramClause)
  {
    setMissingClause(paramClause);
  }
  
  public void appendSql(DatabaseType paramDatabaseType, String paramString, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    if ((comparison == null) && (exists == null)) {
      throw new IllegalStateException("Clause has not been set in NOT operation");
    }
    if (comparison == null)
    {
      paramStringBuilder.append("(NOT ");
      exists.appendSql(paramDatabaseType, paramString, paramStringBuilder, paramList);
    }
    for (;;)
    {
      paramStringBuilder.append(") ");
      return;
      paramStringBuilder.append("(NOT ");
      if (paramString != null)
      {
        paramDatabaseType.appendEscapedEntityName(paramStringBuilder, paramString);
        paramStringBuilder.append('.');
      }
      paramDatabaseType.appendEscapedEntityName(paramStringBuilder, comparison.getColumnName());
      paramStringBuilder.append(' ');
      comparison.appendOperation(paramStringBuilder);
      comparison.appendValue(paramDatabaseType, paramStringBuilder, paramList);
    }
  }
  
  public void setMissingClause(Clause paramClause)
  {
    if (comparison != null) {
      throw new IllegalArgumentException("NOT operation already has a comparison set");
    }
    if ((paramClause instanceof Comparison))
    {
      comparison = ((Comparison)paramClause);
      return;
    }
    if ((paramClause instanceof Exists))
    {
      exists = ((Exists)paramClause);
      return;
    }
    throw new IllegalArgumentException("NOT operation can only work with comparison SQL clauses, not " + paramClause);
  }
  
  public String toString()
  {
    if (comparison == null) {
      return "NOT without comparison";
    }
    return "NOT comparison " + comparison;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.query.Not
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */