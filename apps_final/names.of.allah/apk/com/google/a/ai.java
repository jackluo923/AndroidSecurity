package com.google.a;

import com.google.a.b.ag;
import com.google.a.d.d;
import java.lang.reflect.Type;

final class ai<T>
  extends ak<T>
{
  private final ad<T> a;
  private final v<T> b;
  private final k c;
  private final com.google.a.c.a<T> d;
  private final al e;
  private ak<T> f;
  
  private ai(ad<T> paramad, v<T> paramv, k paramk, com.google.a.c.a<T> parama, al paramal)
  {
    a = paramad;
    b = paramv;
    c = paramk;
    d = parama;
    e = paramal;
  }
  
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
  
  public static al a(com.google.a.c.a<?> parama, Object paramObject)
  {
    return new aj(paramObject, parama, (byte)0);
  }
  
  public final T a(com.google.a.d.a parama)
  {
    if (b == null) {
      return (T)a().a(parama);
    }
    parama = ag.a(parama);
    if (parama.j()) {
      return null;
    }
    v localv = b;
    Type localType = d.b;
    u localu = c.a;
    return (T)localv.a(parama, localType);
  }
  
  public final void a(d paramd, T paramT)
  {
    if (a == null)
    {
      a().a(paramd, paramT);
      return;
    }
    if (paramT == null)
    {
      paramd.f();
      return;
    }
    ad localad = a;
    Object localObject = d.b;
    localObject = c.b;
    ag.a(localad.a(paramT), paramd);
  }
}

/* Location:
 * Qualified Name:     com.google.a.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */