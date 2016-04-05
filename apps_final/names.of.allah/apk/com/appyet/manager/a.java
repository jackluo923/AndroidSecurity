package com.appyet.manager;

import com.appyet.context.ApplicationContext;
import com.appyet.data.FileCache;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class a
{
  public static String a = "X5nFe16r7FbKpb16l";
  private ApplicationContext b;
  private long c;
  private long d;
  
  public a(ApplicationContext paramApplicationContext)
  {
    b = paramApplicationContext;
  }
  
  public final void a()
  {
    try
    {
      c = 0L;
      d = 0L;
      b.h.a();
      Object localObject1 = b;
      if (!ApplicationContext.a()) {
        return;
      }
      Object localObject2 = b.h.e();
      localObject1 = new HashMap();
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((HashMap)localObject1).put(((FileCache)((Iterator)localObject2).next()).getFileCacheName(), null);
      }
      b.j.a(localException);
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
      return;
    }
    b.d.a(new Date().getTime());
    d = b.j.b();
    c = b.j.c();
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */