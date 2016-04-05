package com.appyet.manager;

import com.appyet.data.DatabaseHelper;
import com.appyet.data.FeedItem;
import com.j256.ormlite.dao.Dao;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Callable;

final class t
  implements Callable<Void>
{
  t(d paramd, List paramList) {}
  
  private Void a()
  {
    Dao localDao = b.b.getFeedItemDao();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      FeedItem localFeedItem = (FeedItem)localIterator.next();
      if (localFeedItem.getCacheGuid() == null) {
        localFeedItem.setCacheGuid(UUID.randomUUID().toString().replace("-", ""));
      }
      try
      {
        if (localDao.create(localFeedItem) != 1) {
          throw new Exception("Failed on: feedItemDao.create(feedItem) != 1");
        }
      }
      catch (Exception localException)
      {
        com.appyet.d.d.a(localException);
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */