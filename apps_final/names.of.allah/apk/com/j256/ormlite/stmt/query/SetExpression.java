package com.j256.ormlite.stmt.query;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.util.List;

public class SetExpression
  extends BaseComparison
{
  public SetExpression(String paramString1, FieldType paramFieldType, String paramString2)
  {
    super(paramString1, paramFieldType, paramString2, true);
  }
  
  protected void appendArgOrValue(DatabaseType paramDatabaseType, FieldType paramFieldType, StringBuilder paramStringBuilder, List<ArgumentHolder> paramList, Object paramObject)
  {
    paramStringBuilder.append(paramObject).append(' ');
  }
  
  public void appendOperation(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append("= ");
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.query.SetExpression
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */