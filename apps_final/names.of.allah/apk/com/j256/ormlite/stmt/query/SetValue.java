package com.j256.ormlite.stmt.query;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.ArgumentHolder;
import com.j256.ormlite.stmt.NullArgHolder;

public class SetValue
  extends BaseComparison
{
  private static final ArgumentHolder nullValue = new NullArgHolder();
  
  public SetValue(String paramString, FieldType paramFieldType, Object paramObject)
  {
    super(paramString, paramFieldType, localObject, false);
  }
  
  public void appendOperation(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append("= ");
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.query.SetValue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */