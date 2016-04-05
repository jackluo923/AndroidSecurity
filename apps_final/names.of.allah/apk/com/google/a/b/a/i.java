package com.google.a.b.a;

import com.google.a.ab;
import com.google.a.d.d;
import com.google.a.t;
import com.google.a.w;
import com.google.a.y;
import com.google.a.z;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public final class i
  extends d
{
  private static final Writer c = new j();
  private static final ab d = new ab("closed");
  private final List<w> e = new ArrayList();
  private String f;
  private w g = y.a;
  
  public i()
  {
    super(c);
  }
  
  private void a(w paramw)
  {
    if (f != null)
    {
      if ((!paramw.j()) || (b)) {
        ((z)h()).a(f, paramw);
      }
      f = null;
      return;
    }
    if (e.isEmpty())
    {
      g = paramw;
      return;
    }
    w localw = h();
    if ((localw instanceof t))
    {
      ((t)localw).a(paramw);
      return;
    }
    throw new IllegalStateException();
  }
  
  private w h()
  {
    return (w)e.get(e.size() - 1);
  }
  
  public final d a(long paramLong)
  {
    a(new ab(Long.valueOf(paramLong)));
    return this;
  }
  
  public final d a(Number paramNumber)
  {
    if (paramNumber == null) {
      return f();
    }
    if (!a)
    {
      double d1 = paramNumber.doubleValue();
      if ((Double.isNaN(d1)) || (Double.isInfinite(d1))) {
        throw new IllegalArgumentException("JSON forbids NaN and infinities: " + paramNumber);
      }
    }
    a(new ab(paramNumber));
    return this;
  }
  
  public final d a(String paramString)
  {
    if ((e.isEmpty()) || (f != null)) {
      throw new IllegalStateException();
    }
    if ((h() instanceof z))
    {
      f = paramString;
      return this;
    }
    throw new IllegalStateException();
  }
  
  public final d a(boolean paramBoolean)
  {
    a(new ab(Boolean.valueOf(paramBoolean)));
    return this;
  }
  
  public final w a()
  {
    if (!e.isEmpty()) {
      throw new IllegalStateException("Expected one JSON element but was " + e);
    }
    return g;
  }
  
  public final d b()
  {
    t localt = new t();
    a(localt);
    e.add(localt);
    return this;
  }
  
  public final d b(String paramString)
  {
    if (paramString == null) {
      return f();
    }
    a(new ab(paramString));
    return this;
  }
  
  public final d c()
  {
    if ((e.isEmpty()) || (f != null)) {
      throw new IllegalStateException();
    }
    if ((h() instanceof t))
    {
      e.remove(e.size() - 1);
      return this;
    }
    throw new IllegalStateException();
  }
  
  public final void close()
  {
    if (!e.isEmpty()) {
      throw new IOException("Incomplete document");
    }
    e.add(d);
  }
  
  public final d d()
  {
    z localz = new z();
    a(localz);
    e.add(localz);
    return this;
  }
  
  public final d e()
  {
    if ((e.isEmpty()) || (f != null)) {
      throw new IllegalStateException();
    }
    if ((h() instanceof z))
    {
      e.remove(e.size() - 1);
      return this;
    }
    throw new IllegalStateException();
  }
  
  public final d f()
  {
    a(y.a);
    return this;
  }
  
  public final void flush() {}
}

/* Location:
 * Qualified Name:     com.google.a.b.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */