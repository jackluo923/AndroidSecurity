package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.DatabaseResults;
import java.util.Date;

public class DateLongType
  extends BaseDateType
{
  private static final DateLongType singleTon = new DateLongType();
  
  private DateLongType()
  {
    super(SqlType.LONG, new Class[0]);
  }
  
  protected DateLongType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }
  
  public static DateLongType getSingleton()
  {
    return singleTon;
  }
  
  public Class<?> getPrimaryClass()
  {
    return Date.class;
  }
  
  public boolean isEscapedValue()
  {
    return false;
  }
  
  public Object javaToSqlArg(FieldType paramFieldType, Object paramObject)
  {
    return Long.valueOf(((Date)paramObject).getTime());
  }
  
  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    try
    {
      long l = Long.parseLong(paramString);
      return Long.valueOf(l);
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw SqlExceptionUtil.create("Problems with field " + paramFieldType + " parsing default date-long value: " + paramString, localNumberFormatException);
    }
  }
  
  public Object resultStringToJava(FieldType paramFieldType, String paramString, int paramInt)
  {
    return sqlArgToJava(paramFieldType, Long.valueOf(Long.parseLong(paramString)), paramInt);
  }
  
  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return Long.valueOf(paramDatabaseResults.getLong(paramInt));
  }
  
  public Object sqlArgToJava(FieldType paramFieldType, Object paramObject, int paramInt)
  {
    return new Date(((Long)paramObject).longValue());
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.field.types.DateLongType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */