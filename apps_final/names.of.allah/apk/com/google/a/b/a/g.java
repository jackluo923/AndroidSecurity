package com.google.a.b.a;

import com.google.a.ab;
import com.google.a.d.a;
import com.google.a.d.c;
import com.google.a.t;
import com.google.a.y;
import com.google.a.z;
import java.io.Reader;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public final class g
  extends a
{
  private static final Reader b = new h();
  private static final Object c = new Object();
  private final List<Object> d;
  
  private void a(c paramc)
  {
    if (f() != paramc) {
      throw new IllegalStateException("Expected " + paramc + " but was " + f());
    }
  }
  
  private Object q()
  {
    return d.get(d.size() - 1);
  }
  
  private Object r()
  {
    return d.remove(d.size() - 1);
  }
  
  public final void a()
  {
    a(c.a);
    t localt = (t)q();
    d.add(localt.iterator());
  }
  
  public final void b()
  {
    a(c.b);
    r();
    r();
  }
  
  public final void c()
  {
    a(c.c);
    z localz = (z)q();
    d.add(localz.n().iterator());
  }
  
  public final void close()
  {
    d.clear();
    d.add(c);
  }
  
  public final void d()
  {
    a(c.d);
    r();
    r();
  }
  
  public final boolean e()
  {
    c localc = f();
    return (localc != c.d) && (localc != c.b);
  }
  
  public final c f()
  {
    Object localObject;
    boolean bool;
    for (;;)
    {
      if (d.isEmpty()) {
        return c.j;
      }
      localObject = q();
      if (!(localObject instanceof Iterator)) {
        break label105;
      }
      bool = d.get(d.size() - 2) instanceof z;
      localObject = (Iterator)localObject;
      if (!((Iterator)localObject).hasNext()) {
        break;
      }
      if (bool) {
        return c.e;
      }
      d.add(((Iterator)localObject).next());
    }
    if (bool) {
      return c.d;
    }
    return c.b;
    label105:
    if ((localObject instanceof z)) {
      return c.c;
    }
    if ((localObject instanceof t)) {
      return c.a;
    }
    if ((localObject instanceof ab))
    {
      localObject = (ab)localObject;
      if (((ab)localObject).p()) {
        return c.f;
      }
      if (((ab)localObject).n()) {
        return c.h;
      }
      if (((ab)localObject).o()) {
        return c.g;
      }
      throw new AssertionError();
    }
    if ((localObject instanceof y)) {
      return c.i;
    }
    if (localObject == c) {
      throw new IllegalStateException("JsonReader is closed");
    }
    throw new AssertionError();
  }
  
  public final String g()
  {
    a(c.e);
    Map.Entry localEntry = (Map.Entry)((Iterator)q()).next();
    d.add(localEntry.getValue());
    return (String)localEntry.getKey();
  }
  
  public final String h()
  {
    c localc = f();
    if ((localc != c.f) && (localc != c.g)) {
      throw new IllegalStateException("Expected " + c.f + " but was " + localc);
    }
    return ((ab)r()).b();
  }
  
  public final boolean i()
  {
    a(c.h);
    return ((ab)r()).f();
  }
  
  public final void j()
  {
    a(c.i);
    r();
  }
  
  public final double k()
  {
    c localc = f();
    if ((localc != c.g) && (localc != c.f)) {
      throw new IllegalStateException("Expected " + c.g + " but was " + localc);
    }
    double d1 = ((ab)q()).c();
    if ((!a) && ((Double.isNaN(d1)) || (Double.isInfinite(d1)))) {
      throw new NumberFormatException("JSON forbids NaN and infinities: " + d1);
    }
    r();
    return d1;
  }
  
  public final long l()
  {
    c localc = f();
    if ((localc != c.g) && (localc != c.f)) {
      throw new IllegalStateException("Expected " + c.g + " but was " + localc);
    }
    long l = ((ab)q()).d();
    r();
    return l;
  }
  
  public final int m()
  {
    c localc = f();
    if ((localc != c.g) && (localc != c.f)) {
      throw new IllegalStateException("Expected " + c.g + " but was " + localc);
    }
    int i = ((ab)q()).e();
    r();
    return i;
  }
  
  public final void n()
  {
    if (f() == c.e)
    {
      g();
      return;
    }
    r();
  }
  
  public final void o()
  {
    a(c.e);
    Map.Entry localEntry = (Map.Entry)((Iterator)q()).next();
    d.add(localEntry.getValue());
    d.add(new ab((String)localEntry.getKey()));
  }
  
  public final String toString()
  {
    return getClass().getSimpleName();
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */