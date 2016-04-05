package com.j256.ormlite.field.types;

import com.j256.ormlite.field.SqlType;

public class IntType
  extends IntegerObjectType
{
  private static final IntType singleTon = new IntType();
  
  private IntType()
  {
    super(SqlType.INTEGER, new Class[] { Integer.TYPE });
  }
  
  protected IntType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }
  
  public static IntType getSingleton()
  {
    return singleTon;
  }
  
  public boolean isPrimitive()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.field.types.IntType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */