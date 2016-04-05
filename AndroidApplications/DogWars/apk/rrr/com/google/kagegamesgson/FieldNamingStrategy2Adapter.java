package com.google.kagegamesgson;

import java.lang.reflect.Field;

final class FieldNamingStrategy2Adapter
  implements FieldNamingStrategy2
{
  private final FieldNamingStrategy adaptee;
  
  public FieldNamingStrategy2Adapter(FieldNamingStrategy paramFieldNamingStrategy)
  {
    Preconditions.checkNotNull(paramFieldNamingStrategy);
    adaptee = paramFieldNamingStrategy;
  }
  
  public String translateName(FieldAttributes paramFieldAttributes)
  {
    Object localObject = adaptee;
    Field localField = paramFieldAttributes.getFieldObject();
    localObject = ((FieldNamingStrategy)localObject).translateName(localField);
    return (String)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.FieldNamingStrategy2Adapter
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */