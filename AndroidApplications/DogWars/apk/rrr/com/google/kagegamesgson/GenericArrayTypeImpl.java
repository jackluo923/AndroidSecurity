package com.google.kagegamesgson;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

final class GenericArrayTypeImpl
  implements GenericArrayType
{
  private final Type genericComponentType;
  
  public GenericArrayTypeImpl(Type paramType)
  {
    genericComponentType = paramType;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool3 = false;
    boolean bool1 = paramObject instanceof GenericArrayType;
    if (!bool1) {
      bool1 = bool3;
    }
    for (;;)
    {
      return bool1;
      Object localObject1 = paramObject;
      localObject1 = (GenericArrayType)localObject1;
      Object localObject2 = localObject1;
      Type localType1 = ((GenericArrayType)localObject2).getGenericComponentType();
      Type localType2 = genericComponentType;
      if (localType2 == null)
      {
        int i;
        if (localType1 == null) {
          i = 1;
        } else {
          i = bool3;
        }
      }
      else
      {
        Type localType3 = genericComponentType;
        boolean bool2 = localType3.equals(localType1);
      }
    }
  }
  
  public Type getGenericComponentType()
  {
    Type localType = genericComponentType;
    return localType;
  }
  
  public int hashCode()
  {
    Type localType1 = genericComponentType;
    if (localType1 == null) {}
    Type localType2;
    int j;
    for (int i = 0;; j = localType2.hashCode())
    {
      return i;
      localType2 = genericComponentType;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.GenericArrayTypeImpl
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */