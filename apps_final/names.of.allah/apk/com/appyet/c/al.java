package com.appyet.c;

import com.appyet.context.ApplicationContext;
import com.appyet.context.f;
import com.appyet.data.FeedItem;
import com.appyet.f.a;
import java.util.List;

final class al
  extends a<Void, Void, Void>
{
  private List<FeedItem> b;
  
  public al(r paramr) {}
  
  private Void f()
  {
    try
    {
      f localf = a.a.n;
      i += 1;
      if ((r.a(a) == null) || (a.a.n.j)) {
        break label288;
      }
      switch (z.a[a.a.n.g.ordinal()])
      {
      case 1: 
        b = a.a.h.a(a.c, 100L, a.a.n.i * 100L);
      }
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
    b = a.a.h.a(100L, a.a.n.i * 100L);
    break label288;
    b = a.a.h.a(a.a.n.h, 100L, a.a.n.i * 100L);
    break label288;
    b = a.a.n.a(100L, a.a.n.i * 100L);
    label288:
    return null;
  }
  
  protected final void a()
  {
    super.a();
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */