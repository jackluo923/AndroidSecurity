package com.google.a.b.a;

import com.google.a.ak;
import com.google.a.al;
import com.google.a.b.b;
import com.google.a.b.f;
import com.google.a.c.a;
import com.google.a.k;
import java.lang.reflect.Type;
import java.util.Collection;

public final class c
  implements al
{
  private final f a;
  
  public c(f paramf)
  {
    a = paramf;
  }
  
  public final <T> ak<T> a(k paramk, a<T> parama)
  {
    Type localType = b;
    Class localClass = a;
    if (!Collection.class.isAssignableFrom(localClass)) {
      return null;
    }
    localType = b.a(localType, localClass);
    return new d(paramk, localType, paramk.a(a.a(localType)), a.a(parama));
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */