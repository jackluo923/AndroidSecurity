package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.support.DatabaseResults;

public class DoubleObjectType
  extends BaseDataType
{
  private static final DoubleObjectType singleTon = new DoubleObjectType();
  
  private DoubleObjectType()
  {
    super(SqlType.DOUBLE, new Class[] { Double.class });
  }
  
  protected DoubleObjectType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }
  
  public static DoubleObjectType getSingleton()
  {
    return singleTon;
  }
  
  public boolean isEscapedValue()
  {
    return false;
  }
  
  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    return Double.valueOf(Double.parseDouble(paramString));
  }
  
  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return Double.valueOf(paramDatabaseResults.getDouble(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.field.types.DoubleObjectType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */