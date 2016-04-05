package com.google.a.c;

import com.google.a.b.b;
import java.lang.reflect.Type;

public final class a<T>
{
  public final Class<? super T> a;
  public final Type b;
  final int c;
  
  protected a()
  {
    Type localType = getClass().getGenericSuperclass();
    if ((localType instanceof Class)) {
      throw new RuntimeException("Missing type parameter.");
    }
    b = b.a(((java.lang.reflect.ParameterizedType)localType).getActualTypeArguments()[0]);
    a = b.b(b);
    c = b.hashCode();
  }
  
  private a(Type paramType)
  {
    b = b.a((Type)com.google.a.b.a.a(paramType));
    a = b.b(b);
    c = b.hashCode();
  }
  
  public static <T> a<T> a(Class<T> paramClass)
  {
    return new a(paramClass);
  }
  
  public static a<?> a(Type paramType)
  {
    return new a(paramType);
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof a)) && (b.a(b, b));
  }
  
  public final int hashCode()
  {
    return c;
  }
  
  public final String toString()
  {
    return b.c(b);
  }
}

/* Location:
 * Qualified Name:     com.google.a.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */