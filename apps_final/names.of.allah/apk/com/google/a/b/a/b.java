package com.google.a.b.a;

import com.google.a.ak;
import com.google.a.al;
import com.google.a.k;
import java.lang.reflect.GenericArrayType;

final class b
  implements al
{
  public final <T> ak<T> a(k paramk, com.google.a.c.a<T> parama)
  {
    parama = b;
    if ((!(parama instanceof GenericArrayType)) && ((!(parama instanceof Class)) || (!((Class)parama).isArray()))) {
      return null;
    }
    parama = com.google.a.b.b.d(parama);
    return new a(paramk, paramk.a(com.google.a.c.a.a(parama)), com.google.a.b.b.b(parama));
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */