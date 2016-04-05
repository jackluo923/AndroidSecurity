package com.google.a.b.a;

import com.google.a.ak;
import com.google.a.d.d;
import com.google.a.k;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

final class x<T>
  extends ak<T>
{
  private final k a;
  private final ak<T> b;
  private final Type c;
  
  x(k paramk, ak<T> paramak, Type paramType)
  {
    a = paramk;
    b = paramak;
    c = paramType;
  }
  
  public final T a(com.google.a.d.a parama)
  {
    return (T)b.a(parama);
  }
  
  public final void a(d paramd, T paramT)
  {
    ak localak = b;
    Type localType = c;
    Object localObject = localType;
    if (paramT != null) {
      if ((localType != Object.class) && (!(localType instanceof TypeVariable)))
      {
        localObject = localType;
        if (!(localType instanceof Class)) {}
      }
      else
      {
        localObject = paramT.getClass();
      }
    }
    if (localObject != c)
    {
      localak = a.a(com.google.a.c.a.a((Type)localObject));
      localObject = localak;
      if ((localak instanceof r))
      {
        localObject = localak;
        if ((b instanceof r)) {}
      }
    }
    for (localObject = b;; localObject = localak)
    {
      ((ak)localObject).a(paramd, paramT);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.a.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */