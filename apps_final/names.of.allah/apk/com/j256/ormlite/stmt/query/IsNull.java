package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.util.List;

public class IsNull
  extends BaseComparison
{
  public IsNull(String paramString, FieldType paramFieldType)
  {
    super(paramString, paramFieldType, null, true);
  }
  
  public void appendOperation(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append("IS NULL ");
  }
  
  public void appendValue(DatabaseType paramDatabaseType, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList) {}
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.query.IsNull
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */