package com.appyet.manager;

import com.appyet.b.a.a;
import com.appyet.b.a.ay;
import com.appyet.b.a.u;
import com.appyet.b.a.v;
import com.appyet.b.a.w;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.d.f;
import com.appyet.data.Feed;
import com.appyet.data.Feed.FeedTypeEnum;
import java.util.concurrent.atomic.AtomicInteger;

final class bt
  implements Runnable
{
  private final Feed b;
  private ApplicationContext c;
  
  bt(bq parambq, ApplicationContext paramApplicationContext, Feed paramFeed)
  {
    c = paramApplicationContext;
    b = paramFeed;
  }
  
  public final void run()
  {
    if (bq.a(a)) {}
    for (;;)
    {
      return;
      try
      {
        Object localObject1;
        if (b.getFeedType() == Feed.FeedTypeEnum.RSS) {
          localObject1 = new ay(c).a(b);
        }
        for (;;)
        {
          if ((localObject1 != null) && (a != v.b) && (b != null) && (b.getFeedItems() != null)) {
            break label622;
          }
          bq.f(a);
          bq.c(a).incrementAndGet();
          if (bq.d(a) == null) {
            break;
          }
          localObject1 = bq.d(a);
          i = bq.c(a).get();
          localObject4 = c.getString(2131230805) + " (" + bq.c(a).get() + "/" + bq.e(a).get() + ") " + f.a(bq.c(a).get() / bq.e(a).get());
          ((ProgressNotificationManager)localObject1).a(i, (String)localObject4);
          return;
          if (b.getFeedType() == Feed.FeedTypeEnum.ATOM)
          {
            localObject1 = new a(c).a(b);
          }
          else if (b.getFeedType() == Feed.FeedTypeEnum.RDF)
          {
            localObject1 = new w(c).a(b);
          }
          else
          {
            localObject1 = new ay(c).a(b);
            if ((localObject1 != null) && (a == v.a)) {
              b.setFeedType(Feed.FeedTypeEnum.RSS);
            }
            if (localObject1 != null)
            {
              localObject4 = localObject1;
              if (a != v.b) {}
            }
            else
            {
              localObject1 = new a(c).a(b);
              localObject4 = localObject1;
              if (localObject1 != null)
              {
                localObject4 = localObject1;
                if (a == v.a)
                {
                  b.setFeedType(Feed.FeedTypeEnum.ATOM);
                  localObject4 = localObject1;
                }
              }
            }
            if (localObject4 != null)
            {
              localObject1 = localObject4;
              if (a != v.b) {}
            }
            else
            {
              localObject4 = new w(c).a(b);
              localObject1 = localObject4;
              if (localObject4 != null)
              {
                localObject1 = localObject4;
                if (a == v.a)
                {
                  b.setFeedType(Feed.FeedTypeEnum.RDF);
                  localObject1 = localObject4;
                }
              }
            }
          }
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          bq.f(a);
          d.a(localException);
          bq.c(a).incrementAndGet();
          if (bq.d(a) == null) {
            break;
          }
          Object localObject2 = bq.d(a);
          i = bq.c(a).get();
          localObject4 = c.getString(2131230805) + " (" + bq.c(a).get() + "/" + bq.e(a).get() + ") " + f.a(bq.c(a).get() / bq.e(a).get());
          continue;
          localObject4 = a;
          v localv = v.c;
          if (localObject4 == localv)
          {
            bq.c(a).incrementAndGet();
            if (bq.d(a) == null) {
              break;
            }
            localObject2 = bq.d(a);
            i = bq.c(a).get();
            localObject4 = c.getString(2131230805) + " (" + bq.c(a).get() + "/" + bq.e(a).get() + ") " + f.a(bq.c(a).get() / bq.e(a).get());
            continue;
          }
          localObject2 = b;
          ((Feed)localObject2).setFeedId(b.getFeedId());
          boolean bool = bq.a(a, (Feed)localObject2);
          bq.b(a, (Feed)localObject2);
          if (bool) {
            bq.a(a, Long.valueOf(b.getModuleId()));
          }
          bq.c(a).incrementAndGet();
          if (bq.d(a) == null) {
            break;
          }
          localObject2 = bq.d(a);
          i = bq.c(a).get();
          localObject4 = c.getString(2131230805) + " (" + bq.c(a).get() + "/" + bq.e(a).get() + ") " + f.a(bq.c(a).get() / bq.e(a).get());
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        for (;;)
        {
          label622:
          d.a(localOutOfMemoryError);
          bq.c(a).incrementAndGet();
          if (bq.d(a) == null) {
            break;
          }
          ProgressNotificationManager localProgressNotificationManager = bq.d(a);
          int i = bq.c(a).get();
          Object localObject4 = c.getString(2131230805) + " (" + bq.c(a).get() + "/" + bq.e(a).get() + ") " + f.a(bq.c(a).get() / bq.e(a).get());
        }
      }
      finally
      {
        bq.c(a).incrementAndGet();
        if (bq.d(a) != null) {
          bq.d(a).a(bq.c(a).get(), c.getString(2131230805) + " (" + bq.c(a).get() + "/" + bq.e(a).get() + ") " + f.a(bq.c(a).get() / bq.e(a).get()));
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */