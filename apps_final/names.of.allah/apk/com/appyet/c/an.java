package com.appyet.c;

import android.widget.TextView;
import com.appyet.context.ApplicationContext;
import com.appyet.context.f;
import com.appyet.data.Feed;
import com.appyet.data.FeedItem;
import com.appyet.f.a;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataModuleFeed;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;

final class an
  extends a<Void, Void, Void>
{
  private List<FeedItem> b;
  
  an(r paramr) {}
  
  private Void f()
  {
    for (;;)
    {
      try
      {
        if (a.c != null) {
          a.a.n.a = a.a.h.g(a.c.longValue());
        }
        switch (z.a[a.a.n.g.ordinal()])
        {
        case 1: 
          r.d(a, b.size());
          Object localObject = a.a.h.d();
          a.a.n.e = ((List)localObject);
          if (a.a.n.c == null) {
            a.a.n.c = new Hashtable();
          }
          if (a.a.n.d == null) {
            a.a.n.d = new Hashtable();
          }
          if (localObject != null)
          {
            localObject = ((List)localObject).iterator();
            if (((Iterator)localObject).hasNext())
            {
              Feed localFeed = (Feed)((Iterator)localObject).next();
              a.a.n.c.put(localFeed.getFeedId(), localFeed);
              Iterator localIterator = a.a.q.MetadataModuleFeeds.iterator();
              if (!localIterator.hasNext()) {
                continue;
              }
              MetadataModuleFeed localMetadataModuleFeed = (MetadataModuleFeed)localIterator.next();
              if (!Guid.equals(localFeed.getGuid())) {
                continue;
              }
              a.a.n.d.put(localFeed.getFeedId(), localMetadataModuleFeed);
              continue;
            }
            return null;
          }
          break;
        }
      }
      catch (Exception localException)
      {
        com.appyet.d.d.a(localException);
      }
      for (;;)
      {
        b = a.a.h.a(a.c, (a.a.n.i + 1) * 100L, 0L);
        break;
        b = a.a.h.a((a.a.n.i + 1) * 100L, 0L);
        break;
        b = a.a.h.a(a.a.n.h, (a.a.n.i + 1) * 100L, 0L);
        break;
        b = a.a.n.a((a.a.n.i + 1) * 100L, 0L);
        break;
        a.a.n.c.clear();
      }
    }
  }
  
  protected final void a()
  {
    super.a();
    r.d(a).setVisibility(8);
    r.c(a);
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */