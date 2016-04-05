package com.j256.ormlite.field.types;

import com.j256.ormlite.field.SqlType;

public class BooleanType
  extends BooleanObjectType
{
  private static final BooleanType singleTon = new BooleanType();
  
  private BooleanType()
  {
    super(SqlType.BOOLEAN, new Class[] { Boolean.TYPE });
  }
  
  protected BooleanType(SqlType paramSqlType, Class<?>[] paramArrayOfClass)
  {
    super(paramSqlType, paramArrayOfClass);
  }
  
  public static BooleanType getSingleton()
  {
    return singleTon;
  }
  
  public boolean isPrimitive()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.field.types.BooleanType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */