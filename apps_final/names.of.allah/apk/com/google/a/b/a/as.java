package com.google.a.b.a;

import com.google.a.ak;
import com.google.a.al;
import com.google.a.c.a;
import com.google.a.k;

final class as
  implements al
{
  public final <T> ak<T> a(k paramk, a<T> parama)
  {
    parama = a;
    if ((!Enum.class.isAssignableFrom(parama)) || (parama == Enum.class)) {
      return null;
    }
    paramk = parama;
    if (!parama.isEnum()) {
      paramk = parama.getSuperclass();
    }
    return new bf(paramk);
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.a.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */