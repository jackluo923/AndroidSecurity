package com.google.kagegamesgson;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

final class TypeInfoArray
  extends TypeInfo
{
  private final Class componentRawType;
  private final Type secondLevel;
  
  TypeInfoArray(Type paramType)
  {
    super(paramType);
    for (Class localClass1 = rawClass;; localClass1 = localClass1.getComponentType())
    {
      boolean bool = localClass1.isArray();
      if (!bool) {
        break;
      }
    }
    componentRawType = localClass1;
    Type localType = actualType;
    Class localClass2 = rawClass;
    localType = extractSecondLevelType(localType, localClass2);
    secondLevel = localType;
  }
  
  private static Type extractSecondLevelType(Type paramType, Class<?> paramClass)
  {
    boolean bool = paramType instanceof GenericArrayType;
    if (bool) {
      paramType = (GenericArrayType)paramType;
    }
    for (Object localObject = paramType.getGenericComponentType();; localObject = paramClass.getComponentType()) {
      return (Type)localObject;
    }
  }
  
  public Class<?> getComponentRawType()
  {
    Class localClass = componentRawType;
    return localClass;
  }
  
  public Type getSecondLevelType()
  {
    Type localType = secondLevel;
    return localType;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.TypeInfoArray
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */