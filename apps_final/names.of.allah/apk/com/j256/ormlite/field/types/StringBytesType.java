package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.DatabaseResults;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;

public class StringBytesType
  extends BaseDataType
{
  private static final String DEFAULT_STRING_BYTES_CHARSET_NAME = "Unicode";
  private static final StringBytesType singleTon = new StringBytesType();
  
  private StringBytesType()
  {
    super(SqlType.BYTE_ARRAY, new Class[0]);
  }
  
  protected StringBytesType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }
  
  private String getCharsetName(FieldType paramFieldType)
  {
    if ((paramFieldType == null) || (paramFieldType.getFormat() == null)) {
      return "Unicode";
    }
    return paramFieldType.getFormat();
  }
  
  public static StringBytesType getSingleton()
  {
    return singleTon;
  }
  
  public Class<?> getPrimaryClass()
  {
    return String.class;
  }
  
  public boolean isAppropriateId()
  {
    return false;
  }
  
  public boolean isArgumentHolderRequired()
  {
    return true;
  }
  
  public Object javaToSqlArg(FieldType paramFieldType, Object paramObject)
  {
    paramObject = (String)paramObject;
    paramFieldType = getCharsetName(paramFieldType);
    try
    {
      paramObject = ((String)paramObject).getBytes(paramFieldType);
      return paramObject;
    }
    catch (UnsupportedEncodingException paramObject)
    {
      throw SqlExceptionUtil.create("Could not convert string with charset name: " + paramFieldType, (Throwable)paramObject);
    }
  }
  
  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    throw new SQLException("String-bytes type cannot have default values");
  }
  
  public Object resultStringToJava(FieldType paramFieldType, String paramString, int paramInt)
  {
    throw new SQLException("String-bytes type cannot be converted from string to Java");
  }
  
  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return paramDatabaseResults.getBytes(paramInt);
  }
  
  public Object sqlArgToJava(FieldType paramFieldType, Object paramObject, int paramInt)
  {
    paramObject = (byte[])paramObject;
    paramFieldType = getCharsetName(paramFieldType);
    try
    {
      paramObject = new String((byte[])paramObject, paramFieldType);
      return paramObject;
    }
    catch (UnsupportedEncodingException paramObject)
    {
      throw SqlExceptionUtil.create("Could not convert string with charset name: " + paramFieldType, (Throwable)paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.field.types.StringBytesType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */