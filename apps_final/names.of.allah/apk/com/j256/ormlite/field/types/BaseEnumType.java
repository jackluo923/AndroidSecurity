package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import java.lang.reflect.Field;
import java.sql.SQLException;

public abstract class BaseEnumType
  extends BaseDataType
{
  protected BaseEnumType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }
  
  protected static Enum<?> enumVal(FieldType paramFieldType, Object paramObject, Enum<?> paramEnum1, Enum<?> paramEnum2)
  {
    if (paramEnum1 != null) {
      return paramEnum1;
    }
    if (paramEnum2 == null) {
      throw new SQLException("Cannot get enum value of '" + paramObject + "' for field " + paramFieldType);
    }
    return paramEnum2;
  }
  
  public boolean isValidForField(Field paramField)
  {
    return paramField.getType().isEnum();
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.field.types.BaseEnumType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */