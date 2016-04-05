package com.appyet.manager;

import com.appyet.context.ApplicationContext;
import com.appyet.data.DatabaseHelper;
import com.appyet.data.FeedItem;
import com.appyet.f.a;
import com.j256.ormlite.misc.TransactionManager;

final class bi
  extends a<Void, Void, Void>
{
  private int b;
  
  public bi(as paramas, int paramInt)
  {
    b = paramInt;
  }
  
  private Void f()
  {
    for (;;)
    {
      try
      {
        if ((as.f(a) != null) && (as.h(a) != null))
        {
          locald = ga).h;
          localLong = as.h(a).getFeedItemId();
          i = b;
        }
      }
      catch (Exception localException2)
      {
        d locald;
        Long localLong;
        int i;
        com.appyet.d.d.a(localException2);
        continue;
      }
      try
      {
        TransactionManager.callInTransaction(b.getConnectionSource(), new k(locald, Integer.valueOf(i), localLong));
        return null;
      }
      catch (Exception localException1)
      {
        localException1 = localException1;
        com.appyet.d.d.a(localException1);
      }
      finally {}
    }
  }
  
  protected final void a()
  {
    super.a();
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */