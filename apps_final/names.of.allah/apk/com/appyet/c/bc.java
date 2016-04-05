package com.appyet.c;

import com.appyet.context.ApplicationContext;
import com.appyet.data.Module;
import com.appyet.f.a;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataModule;
import com.appyet.metadata.MetadataModuleFeedSql;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

final class bc
  extends a<Void, Void, Void>
{
  boolean a = false;
  Hashtable<Long, Long> b;
  
  bc(ay paramay) {}
  
  private Void f()
  {
    try
    {
      if (c.e == null) {
        c.e = c.a.h.j();
      }
      c.c = c.a.h.d();
      b = new Hashtable();
      Iterator localIterator1 = c.a.q.MetadataModuleFeedSqls.iterator();
      label236:
      while (localIterator1.hasNext())
      {
        MetadataModuleFeedSql localMetadataModuleFeedSql = (MetadataModuleFeedSql)localIterator1.next();
        Iterator localIterator2 = c.a.q.MetadataModules.iterator();
        for (;;)
        {
          if (!localIterator2.hasNext()) {
            break label236;
          }
          MetadataModule localMetadataModule = (MetadataModule)localIterator2.next();
          if (Id == ModuleId)
          {
            Iterator localIterator3 = c.e.iterator();
            if (localIterator3.hasNext())
            {
              Module localModule = (Module)localIterator3.next();
              if (!Guid.equals(localModule.getGuid())) {
                break;
              }
              b.put(localModule.getModuleId(), Long.valueOf(c.a.h.b(Query)));
            }
          }
        }
      }
      return null;
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
  }
  
  protected final void a()
  {
    super.a();
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */