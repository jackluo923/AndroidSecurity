package com.google.a.b.a;

import com.google.a.ak;
import com.google.a.al;
import com.google.a.b.w;
import com.google.a.d.a;
import com.google.a.d.d;
import com.google.a.k;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class m
  extends ak<Object>
{
  public static final al a = new n();
  private final k b;
  
  private m(k paramk)
  {
    b = paramk;
  }
  
  public final Object a(a parama)
  {
    Object localObject = parama.f();
    switch (o.a[localObject.ordinal()])
    {
    default: 
      throw new IllegalStateException();
    case 1: 
      localObject = new ArrayList();
      parama.a();
      while (parama.e()) {
        ((List)localObject).add(a(parama));
      }
      parama.b();
      return localObject;
    case 2: 
      localObject = new w();
      parama.c();
      while (parama.e()) {
        ((Map)localObject).put(parama.g(), a(parama));
      }
      parama.d();
      return localObject;
    case 3: 
      return parama.h();
    case 4: 
      return Double.valueOf(parama.k());
    case 5: 
      return Boolean.valueOf(parama.i());
    }
    parama.j();
    return null;
  }
  
  public final void a(d paramd, Object paramObject)
  {
    if (paramObject == null)
    {
      paramd.f();
      return;
    }
    ak localak = b.a(paramObject.getClass());
    if ((localak instanceof m))
    {
      paramd.d();
      paramd.e();
      return;
    }
    localak.a(paramd, paramObject);
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.a.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */