package com.google.kagegamesgson;

import java.lang.reflect.Type;
import java.util.Collection;

class TypeInfo
{
  protected final Type actualType;
  protected final Class rawClass;
  
  TypeInfo(Type paramType)
  {
    actualType = paramType;
    Class localClass = TypeUtils.toRawClass(paramType);
    rawClass = localClass;
  }
  
  public final Type getActualType()
  {
    Type localType = actualType;
    return localType;
  }
  
  public final Class<?> getRawClass()
  {
    Class localClass = rawClass;
    return localClass;
  }
  
  public final Class<?> getWrappedClass()
  {
    Class localClass = rawClass;
    localClass = Primitives.wrap(localClass);
    return localClass;
  }
  
  public final boolean isArray()
  {
    Class localClass = rawClass;
    boolean bool = TypeUtils.isArray(localClass);
    return bool;
  }
  
  public final boolean isCollectionOrArray()
  {
    Class localClass1 = Collection.class;
    Class localClass2 = rawClass;
    boolean bool = localClass1.isAssignableFrom(localClass2);
    if (!bool)
    {
      bool = isArray();
      if (!bool) {
        break label32;
      }
    }
    label32:
    for (bool = true;; bool = false) {
      return bool;
    }
  }
  
  public final boolean isEnum()
  {
    Class localClass = rawClass;
    boolean bool = localClass.isEnum();
    return bool;
  }
  
  public final boolean isPrimitive()
  {
    Class localClass = rawClass;
    localClass = Primitives.wrap(localClass);
    boolean bool = Primitives.isWrapperType(localClass);
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.TypeInfo
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */