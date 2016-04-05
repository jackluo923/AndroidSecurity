package com.google.a.b.a;

import com.google.a.ak;
import com.google.a.al;
import com.google.a.d.c;
import com.google.a.d.d;
import com.google.a.k;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public final class a<E>
  extends ak<Object>
{
  public static final al a = new b();
  private final Class<E> b;
  private final ak<E> c;
  
  public a(k paramk, ak<E> paramak, Class<E> paramClass)
  {
    c = new x(paramk, paramak, paramClass);
    b = paramClass;
  }
  
  public final Object a(com.google.a.d.a parama)
  {
    if (parama.f() == c.i)
    {
      parama.j();
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    parama.a();
    while (parama.e()) {
      localArrayList.add(c.a(parama));
    }
    parama.b();
    parama = Array.newInstance(b, localArrayList.size());
    int i = 0;
    while (i < localArrayList.size())
    {
      Array.set(parama, i, localArrayList.get(i));
      i += 1;
    }
    return parama;
  }
  
  public final void a(d paramd, Object paramObject)
  {
    if (paramObject == null)
    {
      paramd.f();
      return;
    }
    paramd.b();
    int i = 0;
    int j = Array.getLength(paramObject);
    while (i < j)
    {
      Object localObject = Array.get(paramObject, i);
      c.a(paramd, localObject);
      i += 1;
    }
    paramd.c();
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */