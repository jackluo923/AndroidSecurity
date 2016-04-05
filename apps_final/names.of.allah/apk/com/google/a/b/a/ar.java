package com.google.a.b.a;

import com.google.a.ab;
import com.google.a.ak;
import com.google.a.b.v;
import com.google.a.d.a;
import com.google.a.d.d;
import com.google.a.t;
import com.google.a.w;
import com.google.a.y;
import com.google.a.z;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

final class ar
  extends ak<w>
{
  private void a(d paramd, w paramw)
  {
    if ((paramw == null) || (paramw.j()))
    {
      paramd.f();
      return;
    }
    if (paramw.i())
    {
      paramw = paramw.m();
      if (paramw.o())
      {
        paramd.a(paramw.a());
        return;
      }
      if (paramw.n())
      {
        paramd.a(paramw.f());
        return;
      }
      paramd.b(paramw.b());
      return;
    }
    if (paramw.g())
    {
      paramd.b();
      paramw = paramw.l().iterator();
      while (paramw.hasNext()) {
        a(paramd, (w)paramw.next());
      }
      paramd.c();
      return;
    }
    if (paramw.h())
    {
      paramd.d();
      paramw = paramw.k().n().iterator();
      while (paramw.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramw.next();
        paramd.a((String)localEntry.getKey());
        a(paramd, (w)localEntry.getValue());
      }
      paramd.e();
      return;
    }
    throw new IllegalArgumentException("Couldn't write " + paramw.getClass());
  }
  
  private w b(a parama)
  {
    switch (ay.a[parama.f().ordinal()])
    {
    default: 
      throw new IllegalArgumentException();
    case 3: 
      return new ab(parama.h());
    case 1: 
      return new ab(new v(parama.h()));
    case 2: 
      return new ab(Boolean.valueOf(parama.i()));
    case 4: 
      parama.j();
      return y.a;
    case 5: 
      localObject = new t();
      parama.a();
      while (parama.e()) {
        ((t)localObject).a(b(parama));
      }
      parama.b();
      return (w)localObject;
    }
    Object localObject = new z();
    parama.c();
    while (parama.e()) {
      ((z)localObject).a(parama.g(), b(parama));
    }
    parama.d();
    return (w)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.a.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */