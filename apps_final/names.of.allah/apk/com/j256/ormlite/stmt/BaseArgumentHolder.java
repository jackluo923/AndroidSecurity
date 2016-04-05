package com.j256.ormlite.stmt;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import java.sql.SQLException;

public abstract class BaseArgumentHolder
  implements ArgumentHolder
{
  private String columnName = null;
  private FieldType fieldType = null;
  private SqlType sqlType = null;
  
  public BaseArgumentHolder() {}
  
  public BaseArgumentHolder(SqlType paramSqlType)
  {
    sqlType = paramSqlType;
  }
  
  public BaseArgumentHolder(String paramString)
  {
    columnName = paramString;
  }
  
  public String getColumnName()
  {
    return columnName;
  }
  
  public FieldType getFieldType()
  {
    return fieldType;
  }
  
  public Object getSqlArgValue()
  {
    if (!isValueSet()) {
      throw new SQLException("Column value has not been set for " + columnName);
    }
    Object localObject2 = getValue();
    Object localObject1;
    if (localObject2 == null) {
      localObject1 = null;
    }
    do
    {
      return localObject1;
      localObject1 = localObject2;
    } while (fieldType == null);
    if ((fieldType.isForeign()) && (fieldType.getType() == localObject2.getClass())) {
      return fieldType.getForeignIdField().extractJavaFieldValue(localObject2);
    }
    return fieldType.convertJavaFieldToSqlArgValue(localObject2);
  }
  
  public SqlType getSqlType()
  {
    return sqlType;
  }
  
  protected abstract Object getValue();
  
  protected abstract boolean isValueSet();
  
  public void setMetaInfo(FieldType paramFieldType)
  {
    if ((fieldType != null) && (fieldType != paramFieldType)) {
      throw new IllegalArgumentException("FieldType name cannot be set twice from " + fieldType + " to " + paramFieldType + ".  Using a SelectArg twice in query with different columns?");
    }
    fieldType = paramFieldType;
  }
  
  public void setMetaInfo(String paramString)
  {
    if ((columnName != null) && (!columnName.equals(paramString))) {
      throw new IllegalArgumentException("Column name cannot be set twice from " + columnName + " to " + paramString + ".  Using a SelectArg twice in query with different columns?");
    }
    columnName = paramString;
  }
  
  public void setMetaInfo(String paramString, FieldType paramFieldType)
  {
    setMetaInfo(paramString);
    setMetaInfo(paramFieldType);
  }
  
  public abstract void setValue(Object paramObject);
  
  public String toString()
  {
    if (!isValueSet()) {
      return "[unset]";
    }
    try
    {
      Object localObject = getSqlArgValue();
      if (localObject == null) {
        return "[null]";
      }
      localObject = localObject.toString();
      return (String)localObject;
    }
    catch (SQLException localSQLException)
    {
      return "[could not get value: " + localSQLException + "]";
    }
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.BaseArgumentHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */