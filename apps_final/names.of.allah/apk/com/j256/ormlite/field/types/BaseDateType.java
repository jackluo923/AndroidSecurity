package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import java.lang.reflect.Field;
import java.text.DateFormat;
import java.util.Date;

public abstract class BaseDateType
  extends BaseDataType
{
  protected static final BaseDateType.DateStringFormatConfig defaultDateFormatConfig = new BaseDateType.DateStringFormatConfig("yyyy-MM-dd HH:mm:ss.SSSSSS");
  
  protected BaseDateType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }
  
  protected static BaseDateType.DateStringFormatConfig convertDateStringConfig(FieldType paramFieldType, BaseDateType.DateStringFormatConfig paramDateStringFormatConfig)
  {
    if (paramFieldType == null) {}
    do
    {
      return paramDateStringFormatConfig;
      paramFieldType = (BaseDateType.DateStringFormatConfig)paramFieldType.getDataTypeConfigObj();
    } while (paramFieldType == null);
    return paramFieldType;
  }
  
  protected static String normalizeDateString(BaseDateType.DateStringFormatConfig paramDateStringFormatConfig, String paramString)
  {
    paramDateStringFormatConfig = paramDateStringFormatConfig.getDateFormat();
    return paramDateStringFormatConfig.format(paramDateStringFormatConfig.parse(paramString));
  }
  
  protected static Date parseDateString(BaseDateType.DateStringFormatConfig paramDateStringFormatConfig, String paramString)
  {
    return paramDateStringFormatConfig.getDateFormat().parse(paramString);
  }
  
  public boolean isValidForField(Field paramField)
  {
    return paramField.getType() == Date.class;
  }
  
  public boolean isValidForVersion()
  {
    return true;
  }
  
  public Object moveToNextValue(Object paramObject)
  {
    long l = System.currentTimeMillis();
    if (paramObject == null) {
      return new Date(l);
    }
    if (l == ((Date)paramObject).getTime()) {
      return new Date(l + 1L);
    }
    return new Date(l);
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.field.types.BaseDateType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */