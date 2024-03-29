package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.DatabaseResults;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public class DateTimeType
  extends BaseDataType
{
  private static final String[] associatedClassNames = { "org.joda.time.DateTime" };
  private static Class<?> dateTimeClass;
  private static Method getMillisMethod;
  private static Constructor<?> millisConstructor;
  private static final DateTimeType singleTon = new DateTimeType();
  
  static
  {
    dateTimeClass = null;
    getMillisMethod = null;
    millisConstructor = null;
  }
  
  private DateTimeType()
  {
    super(SqlType.LONG, new Class[0]);
  }
  
  protected DateTimeType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }
  
  private Constructor<?> getConstructor()
  {
    if (millisConstructor == null) {
      millisConstructor = getDateTimeClass().getConstructor(new Class[] { Long.TYPE });
    }
    return millisConstructor;
  }
  
  private Class<?> getDateTimeClass()
  {
    if (dateTimeClass == null) {
      dateTimeClass = Class.forName("org.joda.time.DateTime");
    }
    return dateTimeClass;
  }
  
  private Method getMillisMethod()
  {
    if (getMillisMethod == null) {
      getMillisMethod = getDateTimeClass().getMethod("getMillis", new Class[0]);
    }
    return getMillisMethod;
  }
  
  public static DateTimeType getSingleton()
  {
    return singleTon;
  }
  
  public String[] getAssociatedClassNames()
  {
    return associatedClassNames;
  }
  
  public Class<?> getPrimaryClass()
  {
    try
    {
      Class localClass = getDateTimeClass();
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException) {}
    return null;
  }
  
  public boolean isAppropriateId()
  {
    return false;
  }
  
  public boolean isEscapedValue()
  {
    return false;
  }
  
  public Object javaToSqlArg(FieldType paramFieldType, Object paramObject)
  {
    try
    {
      paramFieldType = getMillisMethod();
      if (paramObject == null) {
        return null;
      }
      paramFieldType = paramFieldType.invoke(paramObject, new Object[0]);
      return paramFieldType;
    }
    catch (Exception paramFieldType)
    {
      throw SqlExceptionUtil.create("Could not use reflection to get millis from Joda DateTime: " + paramObject, paramFieldType);
    }
  }
  
  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    return Long.valueOf(Long.parseLong(paramString));
  }
  
  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return Long.valueOf(paramDatabaseResults.getLong(paramInt));
  }
  
  public Object sqlArgToJava(FieldType paramFieldType, Object paramObject, int paramInt)
  {
    try
    {
      paramFieldType = getConstructor().newInstance(new Object[] { (Long)paramObject });
      return paramFieldType;
    }
    catch (Exception paramFieldType)
    {
      throw SqlExceptionUtil.create("Could not use reflection to construct a Joda DateTime", paramFieldType);
    }
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.field.types.DateTimeType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */