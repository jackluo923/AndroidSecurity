package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.util.List;

public class Between
  extends BaseComparison
{
  private Object high;
  private Object low;
  
  public Between(String paramString, FieldType paramFieldType, Object paramObject1, Object paramObject2)
  {
    super(paramString, paramFieldType, null, true);
    low = paramObject1;
    high = paramObject2;
  }
  
  public void appendOperation(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append("BETWEEN ");
  }
  
  public void appendValue(DatabaseType paramDatabaseType, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    if (low == null) {
      throw new IllegalArgumentException("BETWEEN low value for '" + columnName + "' is null");
    }
    if (high == null) {
      throw new IllegalArgumentException("BETWEEN high value for '" + columnName + "' is null");
    }
    appendArgOrValue(paramDatabaseType, fieldType, paramStringBuilder, paramList, low);
    paramStringBuilder.append("AND ");
    appendArgOrValue(paramDatabaseType, fieldType, paramStringBuilder, paramList, high);
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.query.Between
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */