package com.appyet.c.a;

import com.appyet.a.a.e;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.f.a;
import com.appyet.manager.an;
import java.util.List;

final class y
  extends a<Void, Void, Boolean>
{
  List<e> a;
  List<e> b;
  List<e> c;
  
  private y(r paramr) {}
  
  private Boolean f()
  {
    try
    {
      int i = r.d(d) + 1;
      if (i == 0)
      {
        a = d.a.p.a(d.b, r.e(d), i, r.f(d), "TOP");
        b = d.a.p.a(d.b, r.e(d), i, r.f(d), "ANN");
      }
      c = d.a.p.a(d.b, r.e(d), i, r.f(d), "");
      return Boolean.valueOf(true);
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
    return Boolean.valueOf(false);
  }
  
  protected final void a()
  {
    r.a(d, true);
    if ((r.h(d) == null) || (r.h(d).getCount() == 0)) {
      r.n(d);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.a.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */