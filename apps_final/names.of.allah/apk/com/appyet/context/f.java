package com.appyet.context;

import com.appyet.data.Feed;
import com.appyet.data.FeedItem;
import com.appyet.data.Module;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataModule;
import com.appyet.metadata.MetadataModuleFeed;
import com.appyet.metadata.MetadataModuleFeedSql;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

public final class f
{
  public Module a;
  public List<FeedItem> b;
  public Hashtable<Long, Feed> c;
  public Hashtable<Long, MetadataModuleFeed> d;
  public List<Feed> e;
  public Long f;
  public d g;
  public String h;
  public int i = 0;
  public boolean j = true;
  private ApplicationContext k;
  
  public f(ApplicationContext paramApplicationContext)
  {
    k = paramApplicationContext;
  }
  
  public final List<FeedItem> a(long paramLong1, long paramLong2)
  {
    Iterator localIterator1 = k.q.MetadataModuleFeedSqls.iterator();
    MetadataModuleFeedSql localMetadataModuleFeedSql;
    MetadataModule localMetadataModule;
    do
    {
      Iterator localIterator2;
      while (!localIterator2.hasNext())
      {
        if (!localIterator1.hasNext()) {
          break;
        }
        localMetadataModuleFeedSql = (MetadataModuleFeedSql)localIterator1.next();
        localIterator2 = k.q.MetadataModules.iterator();
      }
      localMetadataModule = (MetadataModule)localIterator2.next();
    } while ((Id != ModuleId) || (!Guid.equals(a.getGuid())));
    return k.h.b(Query, paramLong1, paramLong2);
    return new ArrayList();
  }
}

/* Location:
 * Qualified Name:     com.appyet.context.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */