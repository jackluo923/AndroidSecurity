package com.appyet.manager;

import com.appyet.context.ApplicationContext;
import com.appyet.data.FileCache;
import com.appyet.data.FileCache.DownloadStatusEnum;
import com.appyet.data.FileCache.FileTypeEnum;
import java.util.concurrent.atomic.AtomicInteger;

final class bu
  implements Runnable
{
  private final FileCache b;
  private ApplicationContext c;
  
  bu(bq parambq, ApplicationContext paramApplicationContext, FileCache paramFileCache)
  {
    c = paramApplicationContext;
    b = paramFileCache;
  }
  
  public final void run()
  {
    if (bq.a(a)) {}
    do
    {
      do
      {
        return;
      } while (c.g.a() == bo.a);
      if (!c.d.t()) {
        break;
      }
      localObject1 = c;
    } while (!ApplicationContext.a());
    Object localObject2 = null;
    com.appyet.a.f localf = null;
    Object localObject8 = null;
    com.appyet.a.d locald = null;
    Object localObject6 = localObject2;
    Object localObject7 = localf;
    Object localObject1 = localObject8;
    for (;;)
    {
      try
      {
        b.setDownloadAttempt(Integer.valueOf(b.getDownloadAttempt().intValue() + 1));
        localObject6 = localObject2;
        localObject7 = localf;
        localObject1 = localObject8;
        if (!c.j.g(b.getFileCacheName()))
        {
          localObject6 = localObject2;
          localObject7 = localf;
          localObject1 = localObject8;
          locald = new com.appyet.a.d();
          localObject6 = localObject2;
          localObject7 = localf;
          localObject1 = localObject8;
          a = b.getFileLink();
          localObject6 = localObject2;
          localObject7 = localf;
          localObject1 = localObject8;
          localf = c.g.a(locald);
          localObject6 = localf;
          localObject7 = localf;
          localObject1 = localf;
          localObject2 = c.g;
          localObject2 = localf;
          localObject6 = localf;
          localObject7 = localf;
          localObject1 = localf;
          if (bl.a(localf))
          {
            localObject6 = localf;
            localObject7 = localf;
            localObject1 = localf;
            localObject2 = c;
            localObject6 = localf;
            localObject7 = localf;
            localObject1 = localf;
            if (((String)localObject2).contains("image/png")) {
              break label1297;
            }
            localObject6 = localf;
            localObject7 = localf;
            localObject1 = localf;
            if (((String)localObject2).contains("image/gif")) {
              break label1297;
            }
            localObject6 = localf;
            localObject7 = localf;
            localObject1 = localf;
            if (((String)localObject2).contains("image/jpeg")) {
              break label1297;
            }
            localObject6 = localf;
            localObject7 = localf;
            localObject1 = localf;
            if (((String)localObject2).contains("image/jpg")) {
              break label1297;
            }
            localObject6 = localf;
            localObject7 = localf;
            localObject1 = localf;
            if (!((String)localObject2).contains("image/x-icon")) {
              continue;
            }
            break label1297;
            if (i == 0) {
              continue;
            }
            localObject6 = localf;
            localObject7 = localf;
            localObject1 = localf;
            if (e < -1L) {
              continue;
            }
            localObject6 = localf;
            localObject7 = localf;
            localObject1 = localf;
            if (e > c.d.A() * 1024) {
              continue;
            }
            localObject2 = localf;
            localObject6 = localf;
            localObject7 = localf;
            localObject1 = localf;
            if (c.j.a(b, b.getFileCacheName()))
            {
              localObject6 = localf;
              localObject7 = localf;
              localObject1 = localf;
              bl.b(localf);
              localObject6 = localf;
              localObject7 = localf;
              localObject1 = localf;
              b.setDownloadStatus(FileCache.DownloadStatusEnum.Success);
              localObject2 = localf;
              localObject6 = localf;
              localObject7 = localf;
              localObject1 = localf;
              if (b.getFileType() == FileCache.FileTypeEnum.Thumbnail)
              {
                localObject6 = localf;
                localObject7 = localf;
                localObject1 = localf;
                localObject2 = a;
                localObject6 = localf;
                localObject7 = localf;
                localObject1 = localf;
                b.getFileCacheName();
                localObject6 = localf;
                localObject7 = localf;
                localObject1 = localf;
                bq.e();
                localObject2 = localf;
              }
            }
          }
          localObject6 = localObject2;
          localObject7 = localObject2;
          localObject1 = localObject2;
          if (b.getDownloadAttempt().intValue() > 5)
          {
            localObject6 = localObject2;
            localObject7 = localObject2;
            localObject1 = localObject2;
            if (b.getDownloadStatus() == FileCache.DownloadStatusEnum.Pending)
            {
              localObject6 = localObject2;
              localObject7 = localObject2;
              localObject1 = localObject2;
              b.setDownloadStatus(FileCache.DownloadStatusEnum.Failed);
            }
          }
          localObject6 = localObject2;
          localObject7 = localObject2;
          localObject1 = localObject2;
          c.h.b(b);
          bl.b((com.appyet.a.f)localObject2);
          bq.c(a).incrementAndGet();
          if (bq.d(a) == null) {
            break;
          }
          localObject1 = bq.d(a);
          i = bq.c(a).get();
          localObject2 = c.getString(2131230804) + " (" + bq.c(a).get() + "/" + bq.e(a).get() + ") " + com.appyet.d.f.a(bq.c(a).get() / bq.e(a).get());
          ((ProgressNotificationManager)localObject1).a(i, (String)localObject2);
          return;
          i = 0;
          continue;
          localObject6 = localf;
          localObject7 = localf;
          localObject1 = localf;
          b.setDownloadStatus(FileCache.DownloadStatusEnum.Ignore);
          localObject2 = localf;
          continue;
        }
      }
      catch (Exception localException)
      {
        localObject1 = localObject6;
        com.appyet.d.d.a(localException);
        bl.b((com.appyet.a.f)localObject6);
        bq.c(a).incrementAndGet();
        if (bq.d(a) == null) {
          break;
        }
        localObject1 = bq.d(a);
        i = bq.c(a).get();
        Object localObject3 = c.getString(2131230804) + " (" + bq.c(a).get() + "/" + bq.e(a).get() + ") " + com.appyet.d.f.a(bq.c(a).get() / bq.e(a).get());
        continue;
        localObject6 = localf;
        localObject7 = localf;
        localObject1 = localf;
        b.setDownloadStatus(FileCache.DownloadStatusEnum.Ignore);
        localObject3 = localf;
        continue;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        localObject1 = localObject7;
        com.appyet.d.d.a(localOutOfMemoryError);
        bl.b((com.appyet.a.f)localObject7);
        bq.c(a).incrementAndGet();
        if (bq.d(a) == null) {
          break;
        }
        localObject1 = bq.d(a);
        i = bq.c(a).get();
        Object localObject4 = c.getString(2131230804) + " (" + bq.c(a).get() + "/" + bq.e(a).get() + ") " + com.appyet.d.f.a(bq.c(a).get() / bq.e(a).get());
        continue;
        localObject6 = localObject4;
        localObject7 = localf;
        localObject1 = localObject8;
        b.setDownloadStatus(FileCache.DownloadStatusEnum.Success);
        localObject4 = locald;
        continue;
      }
      finally
      {
        bl.b((com.appyet.a.f)localObject1);
        bq.c(a).incrementAndGet();
        if (bq.d(a) != null) {
          bq.d(a).a(bq.c(a).get(), c.getString(2131230804) + " (" + bq.c(a).get() + "/" + bq.e(a).get() + ") " + com.appyet.d.f.a(bq.c(a).get() / bq.e(a).get()));
        }
      }
      label1297:
      int i = 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */