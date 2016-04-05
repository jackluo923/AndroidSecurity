package com.google.kagegamesgson;

import java.lang.reflect.Type;

final class ObjectTypePair
{
  private Object obj;
  private final boolean preserveType;
  final Type type;
  
  ObjectTypePair(Object paramObject, Type paramType, boolean paramBoolean)
  {
    obj = paramObject;
    type = paramType;
    preserveType = paramBoolean;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool5 = true;
    boolean bool4 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = bool5;
    }
    for (;;)
    {
      return bool1;
      if (paramObject == null)
      {
        bool1 = bool4;
      }
      else
      {
        Object localObject3 = getClass();
        Object localObject4 = paramObject.getClass();
        if (localObject3 != localObject4)
        {
          localObject3 = bool4;
        }
        else
        {
          Object localObject1 = paramObject;
          localObject1 = (ObjectTypePair)localObject1;
          Object localObject2 = localObject1;
          localObject3 = obj;
          if (localObject3 == null)
          {
            localObject3 = obj;
            if (localObject3 != null) {
              localObject3 = bool4;
            }
          }
          else
          {
            localObject3 = obj;
            localObject4 = obj;
            if (localObject3 != localObject4)
            {
              localObject3 = bool4;
              continue;
            }
          }
          localObject3 = type;
          if (localObject3 == null)
          {
            localObject3 = type;
            if (localObject3 != null) {
              localObject3 = bool4;
            }
          }
          else
          {
            localObject3 = type;
            localObject4 = type;
            bool2 = localObject3.equals(localObject4);
            if (!bool2)
            {
              bool2 = bool4;
              continue;
            }
          }
          boolean bool2 = preserveType;
          boolean bool3 = preserveType;
          if (bool2 == bool3) {
            bool2 = bool5;
          } else {
            bool2 = bool4;
          }
        }
      }
    }
  }
  
  static Type getActualTypeIfMoreSpecific(Type paramType, Class<?> paramClass)
  {
    boolean bool = paramType instanceof Class;
    if (bool)
    {
      Object localObject1 = paramType;
      localObject1 = (Class)localObject1;
      Object localObject2 = localObject1;
      bool = ((Class)localObject2).isAssignableFrom(paramClass);
      if (bool) {
        paramType = paramClass;
      }
      Class localClass = Object.class;
      if (paramType == localClass) {
        paramType = paramClass;
      }
    }
    return paramType;
  }
  
  <HANDLER> Pair<HANDLER, ObjectTypePair> getMatchingHandler(ParameterizedTypeHandlerMap<HANDLER> paramParameterizedTypeHandlerMap)
  {
    int i = 0;
    boolean bool = preserveType;
    Object localObject2;
    Object localObject1;
    if (!bool)
    {
      localObject2 = obj;
      if (localObject2 != null)
      {
        ObjectTypePair localObjectTypePair = toMoreSpecificType();
        localObject2 = type;
        localObject1 = paramParameterizedTypeHandlerMap.getHandlerFor((Type)localObject2);
        if (localObject1 != null)
        {
          localObject2 = new com/google/kagegamesgson/Pair;
          ((Pair)localObject2).<init>(localObject1, localObjectTypePair);
        }
      }
    }
    for (;;)
    {
      return (Pair<HANDLER, ObjectTypePair>)localObject2;
      localObject2 = type;
      localObject1 = paramParameterizedTypeHandlerMap.getHandlerFor((Type)localObject2);
      if (localObject1 == null)
      {
        localObject2 = null;
      }
      else
      {
        localObject2 = new com/google/kagegamesgson/Pair;
        ((Pair)localObject2).<init>(localObject1, this);
      }
    }
  }
  
  Object getObject()
  {
    Object localObject = obj;
    return localObject;
  }
  
  Type getType()
  {
    Type localType = type;
    return localType;
  }
  
  public int hashCode()
  {
    Object localObject1 = obj;
    if (localObject1 == null) {}
    Object localObject2;
    int j;
    for (int i = 31;; j = localObject2.hashCode())
    {
      return i;
      localObject2 = obj;
    }
  }
  
  public boolean isPreserveType()
  {
    boolean bool = preserveType;
    return bool;
  }
  
  void setObject(Object paramObject)
  {
    obj = paramObject;
  }
  
  ObjectTypePair toMoreSpecificType()
  {
    boolean bool1 = preserveType;
    Object localObject1;
    if (!bool1)
    {
      localObject1 = obj;
      if (localObject1 != null) {}
    }
    else
    {
      localObject1 = this;
    }
    for (;;)
    {
      return (ObjectTypePair)localObject1;
      localObject1 = type;
      Object localObject2 = obj;
      localObject2 = localObject2.getClass();
      Type localType = getActualTypeIfMoreSpecific((Type)localObject1, (Class)localObject2);
      localObject1 = type;
      if (localType == localObject1)
      {
        localObject1 = this;
      }
      else
      {
        localObject1 = new com/google/kagegamesgson/ObjectTypePair;
        localObject2 = obj;
        boolean bool2 = preserveType;
        ((ObjectTypePair)localObject1).<init>(localObject2, localType, bool2);
      }
    }
  }
  
  public String toString()
  {
    String str = "preserveType: %b, type: %s, obj: %s";
    int i = 3;
    Object[] arrayOfObject = new Object[i];
    int j = 0;
    boolean bool = preserveType;
    Object localObject = Boolean.valueOf(bool);
    arrayOfObject[j] = localObject;
    j = 1;
    localObject = type;
    arrayOfObject[j] = localObject;
    j = 2;
    localObject = obj;
    arrayOfObject[j] = localObject;
    str = String.format(str, arrayOfObject);
    return str;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.ObjectTypePair
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */