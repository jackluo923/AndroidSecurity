package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.util.List;

public class Raw
  implements Clause
{
  private final ArgumentHolder[] args;
  private final String statement;
  
  public Raw(String paramString, ArgumentHolder[] paramArrayOfArgumentHolder)
  {
    statement = paramString;
    args = paramArrayOfArgumentHolder;
  }
  
  public void appendSql(DatabaseType paramDatabaseType, String paramString, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    paramStringBuilder.append(statement);
    paramStringBuilder.append(' ');
    paramDatabaseType = args;
    int j = paramDatabaseType.length;
    int i = 0;
    while (i < j)
    {
      paramList.add(paramDatabaseType[i]);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.query.Raw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */