package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.util.List;

public abstract interface Clause
{
  public abstract void appendSql(DatabaseType paramDatabaseType, String paramString, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList);
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.query.Clause
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */