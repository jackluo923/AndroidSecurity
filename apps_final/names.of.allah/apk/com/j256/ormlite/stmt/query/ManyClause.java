package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.util.List;

public class ManyClause
  implements Clause, NeedsFutureClause
{
  public static final String AND_OPERATION = "AND";
  public static final String OR_OPERATION = "OR";
  private final Clause first;
  private final String operation;
  private final Clause[] others;
  private Clause second;
  private final int startOthersAt;
  
  public ManyClause(Clause paramClause1, Clause paramClause2, Clause[] paramArrayOfClause, String paramString)
  {
    first = paramClause1;
    second = paramClause2;
    others = paramArrayOfClause;
    startOthersAt = 0;
    operation = paramString;
  }
  
  public ManyClause(Clause paramClause, String paramString)
  {
    first = paramClause;
    second = null;
    others = null;
    startOthersAt = 0;
    operation = paramString;
  }
  
  public ManyClause(Clause[] paramArrayOfClause, String paramString)
  {
    first = paramArrayOfClause[0];
    if (paramArrayOfClause.length < 2) {
      second = null;
    }
    for (startOthersAt = paramArrayOfClause.length;; startOthersAt = 2)
    {
      others = paramArrayOfClause;
      operation = paramString;
      return;
      second = paramArrayOfClause[1];
    }
  }
  
  public void appendSql(DatabaseType paramDatabaseType, String paramString, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    paramStringBuilder.append("(");
    first.appendSql(paramDatabaseType, paramString, paramStringBuilder, paramList);
    if (second != null)
    {
      paramStringBuilder.append(operation);
      paramStringBuilder.append(' ');
      second.appendSql(paramDatabaseType, paramString, paramStringBuilder, paramList);
    }
    if (others != null)
    {
      int i = startOthersAt;
      while (i < others.length)
      {
        paramStringBuilder.append(operation);
        paramStringBuilder.append(' ');
        others[i].appendSql(paramDatabaseType, paramString, paramStringBuilder, paramList);
        i += 1;
      }
    }
    paramStringBuilder.append(") ");
  }
  
  public void setMissingClause(Clause paramClause)
  {
    second = paramClause;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.query.ManyClause
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */