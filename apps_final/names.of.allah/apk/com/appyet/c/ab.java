package com.appyet.c;

import com.appyet.context.ApplicationContext;
import com.appyet.context.f;
import com.appyet.data.DatabaseHelper;
import com.appyet.f.a;
import com.appyet.manager.h;
import com.j256.ormlite.misc.TransactionManager;
import java.util.List;

final class ab
  extends a<Void, Void, Void>
{
  ab(r paramr) {}
  
  private Void f()
  {
    for (;;)
    {
      try
      {
        locald = a.a.h;
        localList = a.a.n.b;
        if (localList != null)
        {
          int i = localList.size();
          if (i != 0) {
            continue;
          }
        }
      }
      catch (Exception localException2)
      {
        com.appyet.manager.d locald;
        List localList;
        com.appyet.d.d.a(localException2);
        continue;
      }
      return null;
      try
      {
        TransactionManager.callInTransaction(b.getConnectionSource(), new h(locald, localList));
      }
      catch (Exception localException1)
      {
        com.appyet.d.d.a(localException1);
      }
    }
  }
  
  protected final void a()
  {
    super.a();
    try
    {
      r.c(a);
      return;
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */