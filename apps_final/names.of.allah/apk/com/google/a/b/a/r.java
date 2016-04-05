package com.google.a.b.a;

import com.google.a.ak;
import com.google.a.d.a;
import com.google.a.d.c;
import com.google.a.d.d;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class r<T>
  extends ak<T>
{
  private final com.google.a.b.ae<T> a;
  private final Map<String, s> b;
  
  private r(com.google.a.b.ae<T> paramae, Map<String, s> paramMap)
  {
    a = paramae;
    b = paramMap;
  }
  
  public final T a(a parama)
  {
    if (parama.f() == c.i)
    {
      parama.j();
      return null;
    }
    Object localObject1 = a.a();
    try
    {
      parama.c();
      for (;;)
      {
        if (!parama.e()) {
          break label103;
        }
        localObject2 = parama.g();
        localObject2 = (s)b.get(localObject2);
        if ((localObject2 != null) && (i)) {
          break;
        }
        parama.n();
      }
    }
    catch (IllegalStateException parama)
    {
      for (;;)
      {
        Object localObject2;
        throw new com.google.a.ae(parama);
        ((s)localObject2).a(parama, localObject1);
      }
    }
    catch (IllegalAccessException parama)
    {
      throw new AssertionError(parama);
    }
    label103:
    parama.d();
    return (T)localObject1;
  }
  
  public final void a(d paramd, T paramT)
  {
    if (paramT == null)
    {
      paramd.f();
      return;
    }
    paramd.d();
    try
    {
      Iterator localIterator = b.values().iterator();
      while (localIterator.hasNext())
      {
        s locals = (s)localIterator.next();
        if (h)
        {
          paramd.a(g);
          locals.a(paramd, paramT);
        }
      }
      paramd.e();
    }
    catch (IllegalAccessException paramd)
    {
      throw new AssertionError();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.a.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */