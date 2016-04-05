package com.appyet.manager;

import com.appyet.context.ApplicationContext;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataModule;
import com.appyet.metadata.MetadataModuleWeb;
import java.util.Iterator;
import java.util.List;

public final class bk
{
  private ApplicationContext a;
  
  public bk(ApplicationContext paramApplicationContext)
  {
    a = paramApplicationContext;
  }
  
  public final MetadataModuleWeb a(String paramString)
  {
    MetadataModuleWeb localMetadataModuleWeb;
    MetadataModule localMetadataModule;
    do
    {
      Iterator localIterator1 = a.q.MetadataModuleWebs.iterator();
      Iterator localIterator2;
      while (!localIterator2.hasNext())
      {
        if (!localIterator1.hasNext()) {
          break;
        }
        localMetadataModuleWeb = (MetadataModuleWeb)localIterator1.next();
        localIterator2 = a.q.MetadataModules.iterator();
      }
      localMetadataModule = (MetadataModule)localIterator2.next();
    } while ((Id != ModuleId) || (!Guid.equals(paramString)));
    return localMetadataModuleWeb;
    return null;
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */