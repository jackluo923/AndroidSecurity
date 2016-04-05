package com.j256.ormlite.db;

import com.j256.ormlite.field.BaseFieldConverter;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;

public class BaseDatabaseType$BooleanNumberFieldConverter
  extends BaseFieldConverter
{
  public SqlType getSqlType()
  {
    return SqlType.BOOLEAN;
  }
  
  public Object javaToSqlArg(FieldType paramFieldType, Object paramObject)
  {
    if (((Boolean)paramObject).booleanValue()) {
      return Byte.valueOf((byte)1);
    }
    return Byte.valueOf((byte)0);
  }
  
  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    if (Boolean.parseBoolean(paramString)) {
      return Byte.valueOf((byte)1);
    }
    return Byte.valueOf((byte)0);
  }
  
  public Object resultStringToJava(FieldType paramFieldType, String paramString, int paramInt)
  {
    return sqlArgToJava(paramFieldType, Byte.valueOf(Byte.parseByte(paramString)), paramInt);
  }
  
  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return Byte.valueOf(paramDatabaseResults.getByte(paramInt));
  }
  
  public Object sqlArgToJava(FieldType paramFieldType, Object paramObject, int paramInt)
  {
    if (((Byte)paramObject).byteValue() == 1) {
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.db.BaseDatabaseType.BooleanNumberFieldConverter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */