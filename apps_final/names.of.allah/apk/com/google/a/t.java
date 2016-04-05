package com.google.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class t
  extends w
  implements Iterable<w>
{
  private final List<w> a = new ArrayList();
  
  public final Number a()
  {
    if (a.size() == 1) {
      return ((w)a.get(0)).a();
    }
    throw new IllegalStateException();
  }
  
  public final void a(w paramw)
  {
    Object localObject = paramw;
    if (paramw == null) {
      localObject = y.a;
    }
    a.add(localObject);
  }
  
  public final String b()
  {
    if (a.size() == 1) {
      return ((w)a.get(0)).b();
    }
    throw new IllegalStateException();
  }
  
  public final double c()
  {
    if (a.size() == 1) {
      return ((w)a.get(0)).c();
    }
    throw new IllegalStateException();
  }
  
  public final long d()
  {
    if (a.size() == 1) {
      return ((w)a.get(0)).d();
    }
    throw new IllegalStateException();
  }
  
  public final int e()
  {
    if (a.size() == 1) {
      return ((w)a.get(0)).e();
    }
    throw new IllegalStateException();
  }
  
  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof t)) && (a.equals(a)));
  }
  
  public final boolean f()
  {
    if (a.size() == 1) {
      return ((w)a.get(0)).f();
    }
    throw new IllegalStateException();
  }
  
  public final int hashCode()
  {
    return a.hashCode();
  }
  
  public final Iterator<w> iterator()
  {
    return a.iterator();
  }
}

/* Location:
 * Qualified Name:     com.google.a.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */