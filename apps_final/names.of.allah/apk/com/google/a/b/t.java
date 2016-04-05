package com.google.a.b;

import com.google.a.ak;
import com.google.a.d.d;
import com.google.a.k;

final class t
  extends ak<T>
{
  private ak<T> f;
  
  t(s params, boolean paramBoolean1, boolean paramBoolean2, k paramk, com.google.a.c.a parama) {}
  
  private ak<T> a()
  {
    ak localak = f;
    if (localak != null) {
      return localak;
    }
    localak = c.a(e, d);
    f = localak;
    return localak;
  }
  
  public final T a(com.google.a.d.a parama)
  {
    if (a)
    {
      parama.n();
      return null;
    }
    return (T)a().a(parama);
  }
  
  public final void a(d paramd, T paramT)
  {
    if (b)
    {
      paramd.f();
      return;
    }
    a().a(paramd, paramT);
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */