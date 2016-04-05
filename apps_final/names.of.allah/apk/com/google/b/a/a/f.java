package com.google.b.a.a;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public abstract class f<T>
{
  private final Type type;
  
  public f()
  {
    Type localType = getClass().getGenericSuperclass();
    if ((localType instanceof Class)) {
      throw new RuntimeException("Missing type parameter");
    }
    type = ((ParameterizedType)localType).getActualTypeArguments()[0];
  }
  
  private Class<T> getListType()
  {
    return (Class)((ParameterizedType)type).getRawType();
  }
  
  private Class<T> getTargetClass()
  {
    if (isList()) {
      return (Class)((ParameterizedType)type).getActualTypeArguments()[0];
    }
    return (Class)type;
  }
  
  private boolean isList()
  {
    return type instanceof ParameterizedType;
  }
}

/* Location:
 * Qualified Name:     com.google.b.a.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */