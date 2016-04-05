package com.google.a.b;

import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

final class c
  implements Serializable, GenericArrayType
{
  private final Type a;
  
  public c(Type paramType)
  {
    a = b.a(paramType);
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof GenericArrayType)) && (b.a(this, (GenericArrayType)paramObject));
  }
  
  public final Type getGenericComponentType()
  {
    return a;
  }
  
  public final int hashCode()
  {
    return a.hashCode();
  }
  
  public final String toString()
  {
    return b.c(a) + "[]";
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */