package com.j256.ormlite.field.types;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.field.SqlType;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.DatabaseResults;
import java.math.BigDecimal;

public class BigDecimalNumericType
  extends BaseDataType
{
  private static final BigDecimalNumericType singleTon = new BigDecimalNumericType();
  
  private BigDecimalNumericType()
  {
    super(SqlType.BIG_DECIMAL, new Class[0]);
  }
  
  protected BigDecimalNumericType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }
  
  public static BigDecimalNumericType getSingleton()
  {
    return singleTon;
  }
  
  public Class<?> getPrimaryClass()
  {
    return BigDecimal.class;
  }
  
  public boolean isAppropriateId()
  {
    return false;
  }
  
  public boolean isEscapedValue()
  {
    return false;
  }
  
  public Object parseDefaultString(FieldType paramFieldType, String paramString)
  {
    try
    {
      BigDecimal localBigDecimal = new BigDecimal(paramString);
      return localBigDecimal;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw SqlExceptionUtil.create("Problems with field " + paramFieldType + " parsing default BigDecimal string '" + paramString + "'", localIllegalArgumentException);
    }
  }
  
  public Object resultToSqlArg(FieldType paramFieldType, DatabaseResults paramDatabaseResults, int paramInt)
  {
    return paramDatabaseResults.getBigDecimal(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.field.types.BigDecimalNumericType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */