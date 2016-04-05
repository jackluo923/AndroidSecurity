package com.appyet.manager;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.text.Html;
import com.appyet.activity.MainActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.d.c;
import com.appyet.d.e;
import com.appyet.d.f;
import com.appyet.data.DatabaseHelper;
import com.appyet.data.Feed;
import com.appyet.data.Feed.FeedTypeEnum;
import com.appyet.data.FeedItem;
import com.appyet.data.FeedItem.ArticleStatusEnum;
import com.appyet.data.FeedItem.EnclosureStatusEnum;
import com.appyet.data.FileCache;
import com.appyet.data.FileCache.DownloadStatusEnum;
import com.appyet.data.FileCache.FileTypeEnum;
import com.appyet.f.aa;
import com.appyet.f.p;
import com.appyet.f.z;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataAppSync;
import com.appyet.metadata.MetadataApplication;
import com.google.a.k;
import com.j256.ormlite.misc.TransactionManager;
import java.net.URL;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicInteger;

public final class bq
{
  public static String a = "fe4232*fed";
  private static final ThreadFactory b = new br();
  private ApplicationContext c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  private boolean i;
  private ThreadPoolExecutor j = null;
  private ArrayBlockingQueue<Runnable> k = null;
  private AtomicInteger l = new AtomicInteger(0);
  private AtomicInteger m = new AtomicInteger(0);
  private Intent n;
  private ProgressNotificationManager o;
  
  public bq(ApplicationContext paramApplicationContext)
  {
    c = paramApplicationContext;
  }
  
  private static Feed a(List<Feed> paramList, long paramLong)
  {
    if (paramList == null) {
      return null;
    }
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Feed localFeed = (Feed)paramList.next();
      if (localFeed.getFeedId().longValue() == paramLong) {
        return localFeed;
      }
    }
    return null;
  }
  
  private void a(List<FeedItem> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    FeedItem localFeedItem;
    Object localObject1;
    Object localObject2;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localFeedItem = (FeedItem)localIterator.next();
        Object localObject3;
        if (localFeedItem.getThumbnail() != null)
        {
          localObject3 = new FileCache();
          localObject1 = e.a(localFeedItem.getThumbnail());
          ((FileCache)localObject3).setDownloadAttempt(Integer.valueOf(0));
          ((FileCache)localObject3).setDownloadStatus(FileCache.DownloadStatusEnum.Pending);
          ((FileCache)localObject3).setFileLink(localFeedItem.getThumbnail());
          ((FileCache)localObject3).setFileType(FileCache.FileTypeEnum.Image);
          ((FileCache)localObject3).setFileCacheName((String)localObject1);
          ((FileCache)localObject3).setCacheGuid(localFeedItem.getCacheGuid());
          ((FileCache)localObject3).setFileType(FileCache.FileTypeEnum.Thumbnail);
          localObject2 = localFeedItem.getThumbnail();
          if (localObject2 != null)
          {
            if ((!((String)localObject2).contains("://i.ytimg.com")) && (!((String)localObject2).contains("://i1.ytimg.com")) && (!((String)localObject2).contains("://i2.ytimg.com")) && (!((String)localObject2).contains("://i3.ytimg.com")) && (!((String)localObject2).contains("://i4.ytimg.com")))
            {
              localObject1 = localObject2;
              if (!((String)localObject2).contains("://img.youtube.com")) {}
            }
            else
            {
              localObject1 = ((String)localObject2).replace("/3.jpg", "/0.jpg");
              ((FileCache)localObject3).setFileLink((String)localObject1);
              ((FileCache)localObject3).setFileCacheName(e.a((String)localObject1));
            }
            localFeedItem.setThumbnail((String)localObject1);
          }
          c.h.a((FileCache)localObject3);
        }
        if (localFeedItem.getDescription() != null)
        {
          localObject3 = c.a(localFeedItem.getDescription()).iterator();
          label254:
          if (((Iterator)localObject3).hasNext())
          {
            localObject1 = (String)((Iterator)localObject3).next();
            if (localObject1 != null) {
              break;
            }
          }
        }
      }
    }
    label580:
    d locald;
    do
    {
      return;
      try
      {
        localObject2 = z.a((String)localObject1);
        localObject1 = localObject2;
        if (!((String)localObject2).startsWith("http://"))
        {
          localObject1 = localObject2;
          if (!((String)localObject2).startsWith("https://"))
          {
            if ((!((String)localObject2).startsWith("/")) || (((String)localObject2).startsWith("//"))) {
              break label580;
            }
            localObject4 = aa.a(localFeedItem.getLink());
            localObject1 = localObject2;
            if (localObject4 != null) {
              localObject1 = (String)localObject4 + (String)localObject2;
            }
          }
        }
        boolean bool = a((String)localObject1);
        if (!bool) {
          break label254;
        }
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          try
          {
            new URL((String)localObject1);
            Object localObject4 = new FileCache();
            localObject2 = e.a((String)localObject1);
            ((FileCache)localObject4).setDownloadAttempt(Integer.valueOf(0));
            ((FileCache)localObject4).setDownloadStatus(FileCache.DownloadStatusEnum.Pending);
            ((FileCache)localObject4).setFileLink((String)localObject1);
            ((FileCache)localObject4).setFileType(FileCache.FileTypeEnum.Image);
            ((FileCache)localObject4).setFileCacheName((String)localObject2);
            ((FileCache)localObject4).setCacheGuid(localFeedItem.getCacheGuid());
            if ((localFeedItem.getThumbnail() == null) && (localObject1 != null))
            {
              if ((!((String)localObject1).contains("://i.ytimg.com")) && (!((String)localObject1).contains("://i1.ytimg.com")) && (!((String)localObject1).contains("://i2.ytimg.com")) && (!((String)localObject1).contains("://i3.ytimg.com")) && (!((String)localObject1).contains("://i4.ytimg.com")))
              {
                localObject2 = localObject1;
                if (!((String)localObject1).contains("://img.youtube.com")) {}
              }
              else
              {
                localObject2 = ((String)localObject1).replace("/default.jpg", "/0.jpg");
                ((FileCache)localObject4).setFileLink((String)localObject2);
                ((FileCache)localObject4).setFileCacheName(e.a((String)localObject2));
              }
              localFeedItem.setThumbnail((String)localObject2);
              ((FileCache)localObject4).setFileType(FileCache.FileTypeEnum.Thumbnail);
            }
            localArrayList.add(localObject4);
            h += 1;
          }
          catch (Exception localException2)
          {
            String str;
            com.appyet.d.d.a(localException2);
          }
          localException1 = localException1;
          com.appyet.d.d.a(localException1);
          break;
          if (((String)localObject2).startsWith("//")) {
            str = "http:" + (String)localObject2;
          } else {
            str = "http://" + (String)localObject2;
          }
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        com.appyet.d.d.a(localOutOfMemoryError);
      }
      break label254;
      break;
      c.h.b(localArrayList);
      locald = c.h;
    } while ((paramList == null) || (paramList.size() == 0));
    try
    {
      TransactionManager.callInTransaction(b.getConnectionSource(), new s(locald, paramList));
      return;
    }
    catch (Exception paramList)
    {
      paramList = paramList;
      com.appyet.d.d.a(paramList);
      return;
    }
    finally {}
  }
  
  private boolean a(Feed paramFeed)
  {
    boolean bool1 = false;
    int i2 = 0;
    Feed localFeed;
    int i1;
    try
    {
      localFeed = c.h.a(paramFeed.getFeedId().longValue());
      if (localFeed == null) {
        return false;
      }
      i1 = i2;
      if (paramFeed.getStreamHash() != null)
      {
        i1 = i2;
        if (!paramFeed.getStreamHash().equals(localFeed.getStreamHash()))
        {
          localFeed.setStreamHash(paramFeed.getStreamHash());
          i1 = 1;
        }
      }
      if (paramFeed.getPubDateString() == null) {
        break label475;
      }
      localFeed.setPubDateString(paramFeed.getPubDateString());
    }
    catch (Exception paramFeed)
    {
      for (;;)
      {
        com.appyet.d.d.a(paramFeed);
        return false;
        localFeed.setPubDate(new Date());
      }
    }
    catch (OutOfMemoryError paramFeed)
    {
      com.appyet.d.d.a(paramFeed);
      return false;
    }
    if ((paramFeed.getFeedType() != null) && (!paramFeed.getFeedType().equals(localFeed.getFeedType()))) {
      localFeed.setFeedType(paramFeed.getFeedType());
    }
    if ((paramFeed.getEncoding() != null) && (!paramFeed.getEncoding().equals(localFeed.getEncoding()))) {
      localFeed.setEncoding(paramFeed.getEncoding());
    }
    if (((localFeed.getTitle() == null) || (localFeed.getTitle().trim().equals(""))) && (paramFeed.getTitle() != null) && (!paramFeed.getTitle().equals(localFeed.getTitle()))) {
      localFeed.setTitle(paramFeed.getTitle());
    }
    if ((paramFeed.getWebLink() != null) && (!paramFeed.getWebLink().equals(localFeed.getWebLink()))) {
      localFeed.setWebLink(paramFeed.getWebLink());
    }
    if ((paramFeed.getImageLink() != null) && (!paramFeed.getWebLink().equals(localFeed.getWebLink())))
    {
      localFeed.setImageLink(paramFeed.getImageLink());
      localObject1 = new FileCache();
      ((FileCache)localObject1).setCacheGuid(localFeed.getCacheGuid());
      ((FileCache)localObject1).setDownloadAttempt(Integer.valueOf(0));
      ((FileCache)localObject1).setDownloadStatus(FileCache.DownloadStatusEnum.Pending);
      ((FileCache)localObject1).setFileCacheName(paramFeed.getImageLinkMD5());
      ((FileCache)localObject1).setFileLink(paramFeed.getImageLink());
      ((FileCache)localObject1).setFileType(FileCache.FileTypeEnum.Image);
      c.h.a((FileCache)localObject1);
    }
    localFeed.setHTTPETag(paramFeed.getHTTPETag());
    localFeed.setHTTPLastModified(paramFeed.getHTTPLastModified());
    if (i1 != 0)
    {
      localFeed.setSyncDate(new Date());
      if (localFeed.getPubDate() == null) {
        localFeed.setPubDate(new Date());
      }
      c.h.b(localFeed);
    }
    Hashtable localHashtable = new Hashtable();
    Object localObject4 = c.h.a(paramFeed);
    Object localObject1 = ((List)localObject4).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (FeedItem)((Iterator)localObject1).next();
      localHashtable.put(((FeedItem)localObject3).getUniqueKey(), localObject3);
    }
    label475:
    ArrayList localArrayList2 = new ArrayList();
    Object localObject5 = paramFeed.getFeedItems();
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator = ((List)localObject5).iterator();
    while (localIterator.hasNext())
    {
      FeedItem localFeedItem = (FeedItem)localIterator.next();
      localObject3 = (FeedItem)localHashtable.get(localFeedItem.getUniqueKey());
      localObject1 = localObject3;
      if (localObject3 == null) {
        localObject1 = (FeedItem)localHashtable.get(localFeedItem.buildUniqueKeyLegacy());
      }
      if (localObject1 == null)
      {
        if (localFeedItem.getPubDateString() == null) {
          localFeedItem.setPubDateString(paramFeed.getPubDateString());
        }
        for (;;)
        {
          try
          {
            localObject1 = localFeedItem.getEnclosureLink();
            if (localObject1 != null) {
              continue;
            }
          }
          catch (Exception localException1)
          {
            com.appyet.d.d.a(localException1);
            continue;
            if ((!localException1.contains("avi")) && (!localException1.contains("mkv")) && (!localException1.contains("mp4")) && (!localException1.contains("3gp")) && (!localException1.contains("video"))) {
              continue;
            }
            localFeedItem.setEnclosureType("video/avi");
            continue;
            if ((!localException1.contains("jpg")) && (!localException1.contains("jpeg")) && (!localException1.contains("gif")) && (!localException1.contains("png"))) {
              continue;
            }
            localFeedItem.setEnclosureType("image/png");
            continue;
            if ((!localException1.contains("avi")) && (!localException1.contains("mkv")) && (!localException1.contains("mp4")) && (!localException1.contains("3gp")) && (!localException1.contains("video"))) {
              continue;
            }
            localFeedItem.setEnclosureType("video/avi");
            continue;
            if ((!localException1.contains("jpg")) && (!localException1.contains("jpeg")) && (!localException1.contains("gif")) && (!localException1.contains("png"))) {
              continue;
            }
            localFeedItem.setEnclosureType("image/png");
            continue;
            localFeedItem.setDescription("<img src='" + localFeedItem.getEnclosureLink().toString() + "'/>");
            continue;
            localFeedItem.setEnclosureLink(null);
            localFeedItem.setEnclosureType(null);
            continue;
            localFeedItem.setSnippet("");
            continue;
          }
          if ((localFeedItem.getEnclosureLink() == null) || (localFeedItem.getEnclosureType() == null) || (localFeedItem.getEnclosureType().toLowerCase(Locale.US).contains("video/quicktime"))) {
            continue;
          }
          if ((!localFeedItem.getEnclosureType().toLowerCase(Locale.US).contains("video")) && (!localFeedItem.getEnclosureType().toLowerCase(Locale.US).contains("audio")))
          {
            if (localFeedItem.getEnclosureType().toLowerCase(Locale.US).contains("image"))
            {
              if (localFeedItem.getDescription() == null) {
                continue;
              }
              if (!localFeedItem.getDescription().contains(localFeedItem.getEnclosureLink().toString())) {
                localFeedItem.setDescription("<div><img src='" + localFeedItem.getEnclosureLink().toString() + "'/></div>" + localFeedItem.getDescription());
              }
            }
            localFeedItem.setEnclosureLink(null);
            localFeedItem.setEnclosureType(null);
          }
          if (localFeedItem.getDescription() == null) {
            continue;
          }
          localObject3 = localFeedItem.getDescription().replace('\n', ' ').replaceAll("(\\<!--.*?-->|\\<style.*?</style>|\\<.*?>)", " ").trim();
          localObject1 = localObject3;
          if (((String)localObject3).length() > 300) {
            localObject1 = ((String)localObject3).substring(0, 300);
          }
          localFeedItem.setSnippet(Html.fromHtml((String)localObject1).toString().trim());
          localFeedItem.setCacheGuid(UUID.randomUUID().toString().replace("-", ""));
          if (localFeed.getIsAutoMobilize()) {
            localFeedItem.setArticleStatus(FeedItem.ArticleStatusEnum.DownloadPending);
          }
          if (localFeed.getIsDownloadNewEnclosure()) {
            localFeedItem.setEnclosureStatus(FeedItem.EnclosureStatusEnum.DownloadPending);
          }
          if (localFeedItem.getDescription() != null)
          {
            localObject1 = new StringBuilder(localFeedItem.getDescription().replaceAll("(?s)<style.*?</style>", " ").replaceAll("<img[^>]+src\\s*=\\s*['\"]([^'\"]+)['\"][^>]*>", "<img src=\"$1\" />"));
            f.a((StringBuilder)localObject1, "<img src=\"http://feeds.feedburner.com", "<rm src=\"");
            f.a((StringBuilder)localObject1, "<a href=\"http://feedads.g.doubleclick.net", "<rm href=\"");
            f.a((StringBuilder)localObject1, "<img src=\"http://feedads.g.doubleclick.net", "<rm src=\"");
            f.a((StringBuilder)localObject1, "<img src=\"http://feedads.g.doubleclick.net", "<rm src=\"");
            f.a((StringBuilder)localObject1, "<img src=\"http://da.feedsportal.com", "<rm src=\"");
            f.a((StringBuilder)localObject1, "<img src=\"http://res3.feedsportal.com", "<rm src=\"");
            f.a((StringBuilder)localObject1, "<img src=\"http://pi.feedsportal.com", "<rm src=\"");
            localFeedItem.setDescription(((StringBuilder)localObject1).toString().trim());
          }
          localFeedItem.setTitle(p.e.a(localFeedItem.getTitle()));
          if (localFeedItem.getPubDate() == null) {
            localFeedItem.setPubDate(new Date());
          }
          localFeedItem.setCreatedDate(new Date());
          if (localFeedItem.getTitle() != null) {
            localFeedItem.setTitle(Html.fromHtml(localFeedItem.getTitle()).toString().replace("\t", "").replace("\n", ""));
          }
          localArrayList2.add(localFeedItem);
          break;
          if (localFeedItem.getEnclosureType() != null)
          {
            localObject1 = localFeedItem.getEnclosureType().trim();
            if ((!((String)localObject1).contains("mp3")) && (!((String)localObject1).contains("ogg")) && (!((String)localObject1).contains("wav")) && (!((String)localObject1).contains("m4a")) && (!((String)localObject1).contains("audio"))) {
              continue;
            }
            localFeedItem.setEnclosureType("audio/mpeg");
          }
          if (localFeedItem.getEnclosureType() == null)
          {
            localObject3 = localFeedItem.getEnclosureLink();
            i1 = ((String)localObject3).lastIndexOf(".");
            localObject1 = null;
            if (i1 != -1) {
              localObject1 = ((String)localObject3).substring(i1 + 1, ((String)localObject3).length()).toLowerCase();
            }
            localObject1 = ((String)localObject1).trim();
            if (localObject1 != null)
            {
              if ((!((String)localObject1).contains("mp3")) && (!((String)localObject1).contains("ogg")) && (!((String)localObject1).contains("wav")) && (!((String)localObject1).contains("m4a")) && (!((String)localObject1).contains("audio"))) {
                continue;
              }
              localFeedItem.setEnclosureType("audio/mpeg");
            }
          }
        }
      }
      localHashtable.get(localFeedItem.buildUniqueKey());
      localFeedItem.setFeedItemId(localException1.getFeedItemId());
      if ((localFeedItem.getCommentsCount() != null) && (localFeedItem.getCommentsCount().length() > 0) && (!localFeedItem.getCommentsCount().equals(localException1.getCommentsCount())))
      {
        localException1.setCommentsCount(localFeedItem.getCommentsCount());
        localArrayList1.add(localException1);
      }
    }
    if (localArrayList2.size() > 0)
    {
      bool1 = true;
      c.h.a(localArrayList2);
      a(localArrayList2);
      d += localArrayList2.size();
      e = localArrayList2.size();
    }
    boolean bool2;
    if (localArrayList1.size() > 0)
    {
      bool2 = true;
      localObject2 = c.h;
      i1 = localArrayList1.size();
      bool1 = bool2;
      if (i1 == 0) {}
    }
    try
    {
      TransactionManager.callInTransaction(b.getConnectionSource(), new r((d)localObject2, localArrayList1));
      bool1 = bool2;
    }
    catch (Exception localException2)
    {
      for (;;)
      {
        com.appyet.d.d.a(localException2);
        bool1 = bool2;
      }
      i1 = 0;
      localObject3 = new ArrayList();
      localObject4 = ((List)localObject4).iterator();
    }
    Object localObject2 = new Hashtable();
    Object localObject3 = ((List)localObject5).iterator();
    while (((Iterator)localObject3).hasNext())
    {
      localObject5 = (FeedItem)((Iterator)localObject3).next();
      if (((FeedItem)localObject5).getFeedItemId() != null) {
        ((Hashtable)localObject2).put(((FeedItem)localObject5).getFeedItemId(), ((FeedItem)localObject5).getFeedItemId());
      }
    }
    label2174:
    label2178:
    label2180:
    for (;;)
    {
      long l1;
      boolean bool3;
      boolean bool4;
      if (((Iterator)localObject4).hasNext())
      {
        localObject5 = (FeedItem)((Iterator)localObject4).next();
        l1 = ((FeedItem)localObject5).getFeedItemId().longValue();
        bool2 = ((FeedItem)localObject5).getIsStar();
        bool3 = ((FeedItem)localObject5).getIsDeleted();
        bool4 = ((FeedItem)localObject5).getIsRead();
        if (((FeedItem)localObject5).getEnclosureStatus() != FeedItem.EnclosureStatusEnum.DownloadCompleted) {
          break label2174;
        }
      }
      for (i2 = 1;; i2 = 0)
      {
        if (((!bool3) && ((bool2) || ((localFeed.getArticleNumberLimit() == 0L) && (!bool4)) || (i2 != 0) || (((FeedItem)localObject5).getIsQueued()))) || (localException2.contains(Long.valueOf(l1)))) {
          break label2178;
        }
        if (localFeed.getArticleNumberLimit() > 0L)
        {
          i2 = i1 + 1;
          i1 = i2;
          if (i2 <= localFeed.getArticleNumberLimit() - localException2.size()) {
            break label2180;
          }
          ((List)localObject3).add(Long.valueOf(l1));
          i1 = i2;
          break;
        }
        ((List)localObject3).add(Long.valueOf(l1));
        break label2180;
        if (((List)localObject3).size() > 0) {
          bool1 = true;
        }
        for (;;)
        {
          f = ((List)localObject3).size();
          c.h.c((List)localObject3);
          c.h.f(paramFeed.getFeedId().longValue());
          return bool1;
        }
      }
    }
  }
  
  private boolean a(FeedItem paramFeedItem)
  {
    for (;;)
    {
      try
      {
        if (paramFeedItem.getEnclosureLink() != null)
        {
          paramFeedItem = URLDecoder.decode(paramFeedItem.getEnclosureLink(), "UTF-8");
          com.appyet.a.d locald = new com.appyet.a.d();
          a = paramFeedItem;
          paramFeedItem = c.g.a(locald);
          bl.b(paramFeedItem);
          return false;
        }
      }
      catch (Exception paramFeedItem)
      {
        com.appyet.d.d.a(paramFeedItem);
        return false;
      }
      catch (OutOfMemoryError paramFeedItem)
      {
        com.appyet.d.d.a(paramFeedItem);
        continue;
      }
      finally
      {
        bl.b(null);
      }
      paramFeedItem = null;
    }
  }
  
  protected static boolean a(String paramString)
  {
    return (!paramString.contains("feeds.feedburner.com")) && (!paramString.contains("doubleclick.net")) && (!paramString.contains("feedsportal.com")) && (!paramString.contains("api.tweetmeme.com/imagebutton.gif")) && (!paramString.contains("share-buttons/fb.jpg")) && (!paramString.contains("share-buttons/diggme.png")) && (!paramString.contains("share-buttons/stumbleupon.png")) && (!paramString.contains("wordpress.com/1.0")) && (!paramString.contains("wordpress.com/b.gif")) && (!paramString.contains("blogger.googleusercontent.com")) && (!paramString.contains("feeds.feedburner.com")) && (!paramString.contains("www.assoc-amazon.com")) && (!paramString.contains("doubleclick.net")) && (!paramString.contains("statcounter.com")) && (!paramString.contains("pheedo.com")) && (!paramString.contains("feedsportal.com"));
  }
  
  private void b(Long paramLong, boolean paramBoolean)
  {
    Intent localIntent = new Intent(c.x);
    if (paramLong != null)
    {
      localIntent.putExtra("moduleid", paramLong);
      localIntent.putExtra("forced", paramBoolean);
    }
    c.sendBroadcast(localIntent);
  }
  
  /* Error */
  private void c(Long paramLong, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 688	com/appyet/manager/bq:i	Z
    //   4: ifeq +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   12: getfield 774	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   15: invokevirtual 778	com/appyet/manager/bp:n	()Z
    //   18: istore 6
    //   20: aload_0
    //   21: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   24: getfield 774	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   27: invokevirtual 780	com/appyet/manager/bp:o	()Z
    //   30: istore 7
    //   32: aload_0
    //   33: aconst_null
    //   34: putfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   37: aload_1
    //   38: ifnonnull +82 -> 120
    //   41: aload_0
    //   42: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   45: getfield 198	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   48: invokevirtual 784	com/appyet/manager/d:b	()Ljava/util/List;
    //   51: astore_3
    //   52: aload_3
    //   53: invokeinterface 275 1 0
    //   58: istore 5
    //   60: iload 5
    //   62: ifne +773 -> 835
    //   65: aload_0
    //   66: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   69: astore_1
    //   70: aload_1
    //   71: ifnull +24 -> 95
    //   74: aload_0
    //   75: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   78: astore_1
    //   79: aload_0
    //   80: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   83: astore_3
    //   84: aload_1
    //   85: aload_3
    //   86: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   89: pop
    //   90: aload_0
    //   91: aconst_null
    //   92: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   95: aload_0
    //   96: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   99: astore_1
    //   100: aload_1
    //   101: ifnull -94 -> 7
    //   104: aload_0
    //   105: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   108: astore_1
    //   109: aload_1
    //   110: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   113: return
    //   114: astore_1
    //   115: aload_1
    //   116: invokestatic 262	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   119: return
    //   120: aload_0
    //   121: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   124: getfield 198	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   127: aload_1
    //   128: invokevirtual 797	com/appyet/manager/d:a	(Ljava/lang/Long;)Ljava/util/List;
    //   131: astore_3
    //   132: goto -80 -> 52
    //   135: aload_0
    //   136: new 792	com/appyet/manager/ProgressNotificationManager
    //   139: dup
    //   140: aload_0
    //   141: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   144: iload 5
    //   146: aload_0
    //   147: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   150: invokevirtual 739	com/appyet/context/ApplicationContext:getResources	()Landroid/content/res/Resources;
    //   153: ldc_w 798
    //   156: invokevirtual 802	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   159: invokespecial 805	com/appyet/manager/ProgressNotificationManager:<init>	(Landroid/content/Context;ILjava/lang/String;)V
    //   162: putfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   165: aload_0
    //   166: new 751	android/content/Intent
    //   169: dup
    //   170: aload_0
    //   171: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   174: ldc_w 807
    //   177: invokespecial 810	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   180: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   183: aload_0
    //   184: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   187: aload_0
    //   188: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   191: invokevirtual 814	com/appyet/context/ApplicationContext:startService	(Landroid/content/Intent;)Landroid/content/ComponentName;
    //   194: pop
    //   195: aload_0
    //   196: new 816	java/util/concurrent/ArrayBlockingQueue
    //   199: dup
    //   200: sipush 10000
    //   203: invokespecial 817	java/util/concurrent/ArrayBlockingQueue:<init>	(I)V
    //   206: putfield 50	com/appyet/manager/bq:k	Ljava/util/concurrent/ArrayBlockingQueue;
    //   209: aload_0
    //   210: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   213: getfield 774	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   216: invokevirtual 821	com/appyet/manager/bp:z	()Lcom/appyet/context/b;
    //   219: getstatic 826	com/appyet/context/b:a	Lcom/appyet/context/b;
    //   222: if_acmpne +284 -> 506
    //   225: iload 5
    //   227: bipush 50
    //   229: if_icmple +277 -> 506
    //   232: aload_0
    //   233: new 828	java/util/concurrent/ThreadPoolExecutor
    //   236: dup
    //   237: iconst_1
    //   238: iconst_1
    //   239: ldc2_w 829
    //   242: getstatic 836	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   245: aload_0
    //   246: getfield 50	com/appyet/manager/bq:k	Ljava/util/concurrent/ArrayBlockingQueue;
    //   249: getstatic 43	com/appyet/manager/bq:b	Ljava/util/concurrent/ThreadFactory;
    //   252: invokespecial 839	java/util/concurrent/ThreadPoolExecutor:<init>	(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    //   255: putfield 48	com/appyet/manager/bq:j	Ljava/util/concurrent/ThreadPoolExecutor;
    //   258: aload_0
    //   259: getfield 57	com/appyet/manager/bq:l	Ljava/util/concurrent/atomic/AtomicInteger;
    //   262: iconst_0
    //   263: invokevirtual 842	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   266: aload_0
    //   267: getfield 59	com/appyet/manager/bq:m	Ljava/util/concurrent/atomic/AtomicInteger;
    //   270: iload 5
    //   272: invokevirtual 842	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   275: iload 6
    //   277: ifeq +575 -> 852
    //   280: iload 7
    //   282: ifne +6 -> 288
    //   285: goto +567 -> 852
    //   288: aload_0
    //   289: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   292: aload_0
    //   293: getfield 57	com/appyet/manager/bq:l	Ljava/util/concurrent/atomic/AtomicInteger;
    //   296: invokevirtual 844	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   299: new 235	java/lang/StringBuilder
    //   302: dup
    //   303: invokespecial 236	java/lang/StringBuilder:<init>	()V
    //   306: aload_0
    //   307: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   310: ldc_w 845
    //   313: invokevirtual 846	com/appyet/context/ApplicationContext:getString	(I)Ljava/lang/String;
    //   316: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   319: ldc_w 848
    //   322: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: aload_0
    //   326: getfield 57	com/appyet/manager/bq:l	Ljava/util/concurrent/atomic/AtomicInteger;
    //   329: invokevirtual 844	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   332: invokevirtual 851	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   335: ldc -31
    //   337: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   340: aload_0
    //   341: getfield 59	com/appyet/manager/bq:m	Ljava/util/concurrent/atomic/AtomicInteger;
    //   344: invokevirtual 844	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   347: invokevirtual 851	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   350: ldc_w 853
    //   353: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   356: aload_0
    //   357: getfield 57	com/appyet/manager/bq:l	Ljava/util/concurrent/atomic/AtomicInteger;
    //   360: invokevirtual 844	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   363: i2f
    //   364: aload_0
    //   365: getfield 59	com/appyet/manager/bq:m	Ljava/util/concurrent/atomic/AtomicInteger;
    //   368: invokevirtual 844	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   371: i2f
    //   372: fdiv
    //   373: f2d
    //   374: invokestatic 856	com/appyet/d/f:a	(D)Ljava/lang/String;
    //   377: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   380: invokevirtual 243	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   383: invokevirtual 859	com/appyet/manager/ProgressNotificationManager:a	(ILjava/lang/String;)V
    //   386: aload_3
    //   387: invokeinterface 68 1 0
    //   392: astore_3
    //   393: aload_3
    //   394: invokeinterface 74 1 0
    //   399: ifeq +247 -> 646
    //   402: aload_3
    //   403: invokeinterface 78 1 0
    //   408: checkcast 106	com/appyet/data/FeedItem
    //   411: astore 4
    //   413: aload_0
    //   414: getfield 688	com/appyet/manager/bq:i	Z
    //   417: istore 6
    //   419: iload 6
    //   421: ifne +225 -> 646
    //   424: aload_0
    //   425: getfield 48	com/appyet/manager/bq:j	Ljava/util/concurrent/ThreadPoolExecutor;
    //   428: new 861	com/appyet/manager/bs
    //   431: dup
    //   432: aload_0
    //   433: aload_0
    //   434: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   437: aload 4
    //   439: invokespecial 864	com/appyet/manager/bs:<init>	(Lcom/appyet/manager/bq;Lcom/appyet/context/ApplicationContext;Lcom/appyet/data/FeedItem;)V
    //   442: invokevirtual 868	java/util/concurrent/ThreadPoolExecutor:execute	(Ljava/lang/Runnable;)V
    //   445: goto -52 -> 393
    //   448: astore 4
    //   450: aload 4
    //   452: invokestatic 268	com/appyet/d/d:a	(Ljava/lang/Error;)V
    //   455: goto -62 -> 393
    //   458: astore_1
    //   459: aload_1
    //   460: invokestatic 262	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   463: aload_0
    //   464: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   467: ifnull +20 -> 487
    //   470: aload_0
    //   471: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   474: aload_0
    //   475: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   478: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   481: pop
    //   482: aload_0
    //   483: aconst_null
    //   484: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   487: aload_0
    //   488: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   491: ifnull -484 -> 7
    //   494: aload_0
    //   495: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   498: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   501: return
    //   502: astore_1
    //   503: goto -388 -> 115
    //   506: aload_0
    //   507: new 828	java/util/concurrent/ThreadPoolExecutor
    //   510: dup
    //   511: bipush 10
    //   513: bipush 10
    //   515: ldc2_w 829
    //   518: getstatic 836	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   521: aload_0
    //   522: getfield 50	com/appyet/manager/bq:k	Ljava/util/concurrent/ArrayBlockingQueue;
    //   525: getstatic 43	com/appyet/manager/bq:b	Ljava/util/concurrent/ThreadFactory;
    //   528: invokespecial 839	java/util/concurrent/ThreadPoolExecutor:<init>	(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    //   531: putfield 48	com/appyet/manager/bq:j	Ljava/util/concurrent/ThreadPoolExecutor;
    //   534: goto -276 -> 258
    //   537: astore_1
    //   538: aload_1
    //   539: invokestatic 268	com/appyet/d/d:a	(Ljava/lang/Error;)V
    //   542: aload_0
    //   543: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   546: astore_1
    //   547: aload_1
    //   548: ifnull +24 -> 572
    //   551: aload_0
    //   552: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   555: astore_1
    //   556: aload_0
    //   557: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   560: astore_3
    //   561: aload_1
    //   562: aload_3
    //   563: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   566: pop
    //   567: aload_0
    //   568: aconst_null
    //   569: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   572: aload_0
    //   573: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   576: astore_1
    //   577: aload_1
    //   578: ifnull -571 -> 7
    //   581: aload_0
    //   582: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   585: astore_1
    //   586: aload_1
    //   587: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   590: return
    //   591: astore_1
    //   592: goto -477 -> 115
    //   595: astore 4
    //   597: aload 4
    //   599: invokestatic 262	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   602: goto -209 -> 393
    //   605: astore_1
    //   606: aload_0
    //   607: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   610: ifnull +20 -> 630
    //   613: aload_0
    //   614: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   617: aload_0
    //   618: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   621: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   624: pop
    //   625: aload_0
    //   626: aconst_null
    //   627: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   630: aload_0
    //   631: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   634: ifnull +10 -> 644
    //   637: aload_0
    //   638: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   641: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   644: aload_1
    //   645: athrow
    //   646: aload_0
    //   647: getfield 48	com/appyet/manager/bq:j	Ljava/util/concurrent/ThreadPoolExecutor;
    //   650: invokevirtual 871	java/util/concurrent/ThreadPoolExecutor:shutdown	()V
    //   653: aload_0
    //   654: getfield 48	com/appyet/manager/bq:j	Ljava/util/concurrent/ThreadPoolExecutor;
    //   657: ldc2_w 872
    //   660: getstatic 836	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   663: invokevirtual 877	java/util/concurrent/ThreadPoolExecutor:awaitTermination	(JLjava/util/concurrent/TimeUnit;)Z
    //   666: pop
    //   667: aload_0
    //   668: aconst_null
    //   669: putfield 48	com/appyet/manager/bq:j	Ljava/util/concurrent/ThreadPoolExecutor;
    //   672: aload_0
    //   673: getfield 50	com/appyet/manager/bq:k	Ljava/util/concurrent/ArrayBlockingQueue;
    //   676: invokevirtual 880	java/util/concurrent/ArrayBlockingQueue:clear	()V
    //   679: aload_0
    //   680: aconst_null
    //   681: putfield 50	com/appyet/manager/bq:k	Ljava/util/concurrent/ArrayBlockingQueue;
    //   684: aload_0
    //   685: aload_1
    //   686: iload_2
    //   687: invokespecial 96	com/appyet/manager/bq:b	(Ljava/lang/Long;Z)V
    //   690: aload_0
    //   691: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   694: astore_1
    //   695: aload_1
    //   696: ifnull +24 -> 720
    //   699: aload_0
    //   700: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   703: astore_1
    //   704: aload_0
    //   705: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   708: astore_3
    //   709: aload_1
    //   710: aload_3
    //   711: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   714: pop
    //   715: aload_0
    //   716: aconst_null
    //   717: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   720: aload_0
    //   721: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   724: astore_1
    //   725: aload_1
    //   726: ifnull -719 -> 7
    //   729: aload_0
    //   730: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   733: astore_1
    //   734: aload_1
    //   735: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   738: return
    //   739: astore_1
    //   740: goto -625 -> 115
    //   743: astore_3
    //   744: aload_3
    //   745: invokestatic 262	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   748: goto -104 -> 644
    //   751: astore_1
    //   752: goto -637 -> 115
    //   755: astore_1
    //   756: goto -641 -> 115
    //   759: astore_1
    //   760: goto -645 -> 115
    //   763: astore_1
    //   764: goto -649 -> 115
    //   767: astore_1
    //   768: goto -653 -> 115
    //   771: astore_1
    //   772: goto -657 -> 115
    //   775: astore_1
    //   776: goto -661 -> 115
    //   779: astore_1
    //   780: goto -665 -> 115
    //   783: astore_1
    //   784: goto -669 -> 115
    //   787: astore_1
    //   788: goto -673 -> 115
    //   791: astore_1
    //   792: goto -677 -> 115
    //   795: astore_1
    //   796: goto -681 -> 115
    //   799: astore_1
    //   800: goto -685 -> 115
    //   803: astore_1
    //   804: goto -689 -> 115
    //   807: astore_1
    //   808: goto -693 -> 115
    //   811: astore_1
    //   812: goto -697 -> 115
    //   815: astore_1
    //   816: goto -701 -> 115
    //   819: astore_1
    //   820: goto -705 -> 115
    //   823: astore_1
    //   824: goto -709 -> 115
    //   827: astore_1
    //   828: goto -713 -> 115
    //   831: astore_1
    //   832: goto -717 -> 115
    //   835: iload 6
    //   837: ifeq +8 -> 845
    //   840: iload 7
    //   842: ifne -707 -> 135
    //   845: iload_2
    //   846: ifeq -681 -> 165
    //   849: goto -714 -> 135
    //   852: iload_2
    //   853: ifeq -467 -> 386
    //   856: goto -568 -> 288
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	859	0	this	bq
    //   0	859	1	paramLong	Long
    //   0	859	2	paramBoolean	boolean
    //   51	660	3	localObject	Object
    //   743	2	3	localException1	Exception
    //   411	27	4	localFeedItem	FeedItem
    //   448	3	4	localOutOfMemoryError	OutOfMemoryError
    //   595	3	4	localException2	Exception
    //   58	213	5	i1	int
    //   18	818	6	bool1	boolean
    //   30	811	7	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   109	113	114	java/lang/Exception
    //   424	445	448	java/lang/OutOfMemoryError
    //   41	52	458	java/lang/Exception
    //   52	60	458	java/lang/Exception
    //   120	132	458	java/lang/Exception
    //   135	165	458	java/lang/Exception
    //   165	225	458	java/lang/Exception
    //   232	258	458	java/lang/Exception
    //   258	275	458	java/lang/Exception
    //   288	386	458	java/lang/Exception
    //   386	393	458	java/lang/Exception
    //   393	419	458	java/lang/Exception
    //   450	455	458	java/lang/Exception
    //   506	534	458	java/lang/Exception
    //   597	602	458	java/lang/Exception
    //   646	690	458	java/lang/Exception
    //   463	487	502	java/lang/Exception
    //   487	501	502	java/lang/Exception
    //   41	52	537	java/lang/OutOfMemoryError
    //   52	60	537	java/lang/OutOfMemoryError
    //   120	132	537	java/lang/OutOfMemoryError
    //   135	165	537	java/lang/OutOfMemoryError
    //   165	225	537	java/lang/OutOfMemoryError
    //   232	258	537	java/lang/OutOfMemoryError
    //   258	275	537	java/lang/OutOfMemoryError
    //   288	386	537	java/lang/OutOfMemoryError
    //   386	393	537	java/lang/OutOfMemoryError
    //   393	419	537	java/lang/OutOfMemoryError
    //   450	455	537	java/lang/OutOfMemoryError
    //   506	534	537	java/lang/OutOfMemoryError
    //   597	602	537	java/lang/OutOfMemoryError
    //   646	690	537	java/lang/OutOfMemoryError
    //   586	590	591	java/lang/Exception
    //   424	445	595	java/lang/Exception
    //   41	52	605	finally
    //   52	60	605	finally
    //   120	132	605	finally
    //   135	165	605	finally
    //   165	225	605	finally
    //   232	258	605	finally
    //   258	275	605	finally
    //   288	386	605	finally
    //   386	393	605	finally
    //   393	419	605	finally
    //   424	445	605	finally
    //   450	455	605	finally
    //   459	463	605	finally
    //   506	534	605	finally
    //   538	542	605	finally
    //   597	602	605	finally
    //   646	690	605	finally
    //   734	738	739	java/lang/Exception
    //   606	630	743	java/lang/Exception
    //   630	644	743	java/lang/Exception
    //   690	695	751	java/lang/Exception
    //   699	704	755	java/lang/Exception
    //   720	725	759	java/lang/Exception
    //   704	709	763	java/lang/Exception
    //   709	715	767	java/lang/Exception
    //   715	720	771	java/lang/Exception
    //   729	734	775	java/lang/Exception
    //   65	70	779	java/lang/Exception
    //   74	79	783	java/lang/Exception
    //   95	100	787	java/lang/Exception
    //   79	84	791	java/lang/Exception
    //   84	90	795	java/lang/Exception
    //   90	95	799	java/lang/Exception
    //   104	109	803	java/lang/Exception
    //   542	547	807	java/lang/Exception
    //   551	556	811	java/lang/Exception
    //   572	577	815	java/lang/Exception
    //   556	561	819	java/lang/Exception
    //   561	567	823	java/lang/Exception
    //   567	572	827	java/lang/Exception
    //   581	586	831	java/lang/Exception
  }
  
  /* Error */
  private void d(Long paramLong, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 688	com/appyet/manager/bq:i	Z
    //   4: ifeq +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   12: getfield 677	com/appyet/context/ApplicationContext:g	Lcom/appyet/manager/bl;
    //   15: invokevirtual 884	com/appyet/manager/bl:a	()Lcom/appyet/manager/bo;
    //   18: getstatic 889	com/appyet/manager/bo:a	Lcom/appyet/manager/bo;
    //   21: if_acmpeq -14 -> 7
    //   24: aload_0
    //   25: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   28: getfield 774	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   31: invokevirtual 778	com/appyet/manager/bp:n	()Z
    //   34: istore 9
    //   36: aload_0
    //   37: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   40: getfield 774	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   43: invokevirtual 780	com/appyet/manager/bp:o	()Z
    //   46: istore 10
    //   48: aload_0
    //   49: aconst_null
    //   50: putfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   53: aload_1
    //   54: ifnonnull +94 -> 148
    //   57: aload_0
    //   58: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   61: getfield 198	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   64: invokevirtual 891	com/appyet/manager/d:c	()Ljava/util/List;
    //   67: astore_3
    //   68: aload_0
    //   69: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   72: getfield 198	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   75: invokevirtual 893	com/appyet/manager/d:d	()Ljava/util/List;
    //   78: astore 4
    //   80: aload_3
    //   81: invokeinterface 275 1 0
    //   86: istore 8
    //   88: iload 8
    //   90: ifne +582 -> 672
    //   93: aload_0
    //   94: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   97: astore_1
    //   98: aload_1
    //   99: ifnull +24 -> 123
    //   102: aload_0
    //   103: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   106: astore_1
    //   107: aload_0
    //   108: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   111: astore_3
    //   112: aload_1
    //   113: aload_3
    //   114: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   117: pop
    //   118: aload_0
    //   119: aconst_null
    //   120: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   123: aload_0
    //   124: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   127: astore_1
    //   128: aload_1
    //   129: ifnull -122 -> 7
    //   132: aload_0
    //   133: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   136: astore_1
    //   137: aload_1
    //   138: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   141: return
    //   142: astore_1
    //   143: aload_1
    //   144: invokestatic 262	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   147: return
    //   148: aload_0
    //   149: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   152: getfield 198	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   155: aload_1
    //   156: invokevirtual 895	com/appyet/manager/d:b	(Ljava/lang/Long;)Ljava/util/List;
    //   159: astore_3
    //   160: goto -92 -> 68
    //   163: aload_0
    //   164: new 792	com/appyet/manager/ProgressNotificationManager
    //   167: dup
    //   168: aload_0
    //   169: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   172: iload 8
    //   174: aload_0
    //   175: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   178: invokevirtual 739	com/appyet/context/ApplicationContext:getResources	()Landroid/content/res/Resources;
    //   181: ldc_w 798
    //   184: invokevirtual 802	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   187: invokespecial 805	com/appyet/manager/ProgressNotificationManager:<init>	(Landroid/content/Context;ILjava/lang/String;)V
    //   190: putfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   193: aload_0
    //   194: new 751	android/content/Intent
    //   197: dup
    //   198: aload_0
    //   199: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   202: ldc_w 807
    //   205: invokespecial 810	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   208: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   211: aload_0
    //   212: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   215: aload_0
    //   216: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   219: invokevirtual 814	com/appyet/context/ApplicationContext:startService	(Landroid/content/Intent;)Landroid/content/ComponentName;
    //   222: pop
    //   223: aload_3
    //   224: invokeinterface 68 1 0
    //   229: astore_3
    //   230: iconst_0
    //   231: istore 7
    //   233: aload_3
    //   234: invokeinterface 74 1 0
    //   239: ifeq +183 -> 422
    //   242: aload_3
    //   243: invokeinterface 78 1 0
    //   248: checkcast 106	com/appyet/data/FeedItem
    //   251: astore 5
    //   253: aload_0
    //   254: getfield 688	com/appyet/manager/bq:i	Z
    //   257: ifne +165 -> 422
    //   260: aload_0
    //   261: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   264: getfield 774	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   267: invokevirtual 898	com/appyet/manager/bp:t	()Z
    //   270: ifeq +419 -> 689
    //   273: aload_0
    //   274: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   277: astore 6
    //   279: invokestatic 900	com/appyet/context/ApplicationContext:a	()Z
    //   282: ifeq +140 -> 422
    //   285: goto +404 -> 689
    //   288: aload_0
    //   289: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   292: iload 7
    //   294: new 235	java/lang/StringBuilder
    //   297: dup
    //   298: invokespecial 236	java/lang/StringBuilder:<init>	()V
    //   301: aload_0
    //   302: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   305: ldc_w 901
    //   308: invokevirtual 846	com/appyet/context/ApplicationContext:getString	(I)Ljava/lang/String;
    //   311: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   314: ldc_w 848
    //   317: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   320: iload 7
    //   322: invokevirtual 851	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   325: ldc -31
    //   327: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   330: iload 8
    //   332: invokevirtual 851	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   335: ldc_w 853
    //   338: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   341: invokevirtual 243	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   344: invokevirtual 859	com/appyet/manager/ProgressNotificationManager:a	(ILjava/lang/String;)V
    //   347: aload 4
    //   349: aload 5
    //   351: invokevirtual 905	com/appyet/data/FeedItem:getFeed	()Lcom/appyet/data/Feed;
    //   354: invokevirtual 84	com/appyet/data/Feed:getFeedId	()Ljava/lang/Long;
    //   357: invokevirtual 90	java/lang/Long:longValue	()J
    //   360: invokestatic 907	com/appyet/manager/bq:a	(Ljava/util/List;J)Lcom/appyet/data/Feed;
    //   363: pop
    //   364: aload_0
    //   365: aload 5
    //   367: invokespecial 909	com/appyet/manager/bq:a	(Lcom/appyet/data/FeedItem;)Z
    //   370: pop
    //   371: goto -138 -> 233
    //   374: astore_1
    //   375: aload_1
    //   376: invokestatic 262	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   379: aload_0
    //   380: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   383: ifnull +20 -> 403
    //   386: aload_0
    //   387: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   390: aload_0
    //   391: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   394: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   397: pop
    //   398: aload_0
    //   399: aconst_null
    //   400: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   403: aload_0
    //   404: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   407: ifnull -400 -> 7
    //   410: aload_0
    //   411: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   414: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   417: return
    //   418: astore_1
    //   419: goto -276 -> 143
    //   422: aload_0
    //   423: aload_1
    //   424: iload_2
    //   425: invokespecial 96	com/appyet/manager/bq:b	(Ljava/lang/Long;Z)V
    //   428: aload_0
    //   429: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   432: astore_1
    //   433: aload_1
    //   434: ifnull +24 -> 458
    //   437: aload_0
    //   438: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   441: astore_1
    //   442: aload_0
    //   443: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   446: astore_3
    //   447: aload_1
    //   448: aload_3
    //   449: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   452: pop
    //   453: aload_0
    //   454: aconst_null
    //   455: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   458: aload_0
    //   459: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   462: astore_1
    //   463: aload_1
    //   464: ifnull -457 -> 7
    //   467: aload_0
    //   468: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   471: astore_1
    //   472: aload_1
    //   473: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   476: return
    //   477: astore_1
    //   478: goto -335 -> 143
    //   481: astore_1
    //   482: aload_1
    //   483: invokestatic 268	com/appyet/d/d:a	(Ljava/lang/Error;)V
    //   486: aload_0
    //   487: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   490: astore_1
    //   491: aload_1
    //   492: ifnull +24 -> 516
    //   495: aload_0
    //   496: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   499: astore_1
    //   500: aload_0
    //   501: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   504: astore_3
    //   505: aload_1
    //   506: aload_3
    //   507: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   510: pop
    //   511: aload_0
    //   512: aconst_null
    //   513: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   516: aload_0
    //   517: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   520: astore_1
    //   521: aload_1
    //   522: ifnull -515 -> 7
    //   525: aload_0
    //   526: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   529: astore_1
    //   530: aload_1
    //   531: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   534: return
    //   535: astore_1
    //   536: goto -393 -> 143
    //   539: astore_1
    //   540: aload_1
    //   541: invokestatic 262	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   544: aload_3
    //   545: athrow
    //   546: astore_3
    //   547: aload_0
    //   548: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   551: ifnull +20 -> 571
    //   554: aload_0
    //   555: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   558: aload_0
    //   559: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   562: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   565: pop
    //   566: aload_0
    //   567: aconst_null
    //   568: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   571: aload_0
    //   572: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   575: ifnull -31 -> 544
    //   578: aload_0
    //   579: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   582: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   585: goto -41 -> 544
    //   588: astore_1
    //   589: goto -446 -> 143
    //   592: astore_1
    //   593: goto -450 -> 143
    //   596: astore_1
    //   597: goto -454 -> 143
    //   600: astore_1
    //   601: goto -458 -> 143
    //   604: astore_1
    //   605: goto -462 -> 143
    //   608: astore_1
    //   609: goto -466 -> 143
    //   612: astore_1
    //   613: goto -470 -> 143
    //   616: astore_1
    //   617: goto -474 -> 143
    //   620: astore_1
    //   621: goto -478 -> 143
    //   624: astore_1
    //   625: goto -482 -> 143
    //   628: astore_1
    //   629: goto -486 -> 143
    //   632: astore_1
    //   633: goto -490 -> 143
    //   636: astore_1
    //   637: goto -494 -> 143
    //   640: astore_1
    //   641: goto -498 -> 143
    //   644: astore_1
    //   645: goto -502 -> 143
    //   648: astore_1
    //   649: goto -506 -> 143
    //   652: astore_1
    //   653: goto -510 -> 143
    //   656: astore_1
    //   657: goto -514 -> 143
    //   660: astore_1
    //   661: goto -518 -> 143
    //   664: astore_1
    //   665: goto -522 -> 143
    //   668: astore_1
    //   669: goto -526 -> 143
    //   672: iload 9
    //   674: ifeq +8 -> 682
    //   677: iload 10
    //   679: ifne -516 -> 163
    //   682: iload_2
    //   683: ifeq -490 -> 193
    //   686: goto -523 -> 163
    //   689: iload 7
    //   691: iconst_1
    //   692: iadd
    //   693: istore 7
    //   695: iload 9
    //   697: ifeq +8 -> 705
    //   700: iload 10
    //   702: ifne -414 -> 288
    //   705: iload_2
    //   706: ifeq -359 -> 347
    //   709: goto -421 -> 288
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	712	0	this	bq
    //   0	712	1	paramLong	Long
    //   0	712	2	paramBoolean	boolean
    //   67	478	3	localObject1	Object
    //   546	1	3	localObject2	Object
    //   78	270	4	localList	List
    //   251	115	5	localFeedItem	FeedItem
    //   277	1	6	localApplicationContext	ApplicationContext
    //   231	463	7	i1	int
    //   86	245	8	i2	int
    //   34	662	9	bool1	boolean
    //   46	655	10	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   137	141	142	java/lang/Exception
    //   57	68	374	java/lang/Exception
    //   68	88	374	java/lang/Exception
    //   148	160	374	java/lang/Exception
    //   163	193	374	java/lang/Exception
    //   193	230	374	java/lang/Exception
    //   233	285	374	java/lang/Exception
    //   288	347	374	java/lang/Exception
    //   347	371	374	java/lang/Exception
    //   422	428	374	java/lang/Exception
    //   379	403	418	java/lang/Exception
    //   403	417	418	java/lang/Exception
    //   472	476	477	java/lang/Exception
    //   57	68	481	java/lang/OutOfMemoryError
    //   68	88	481	java/lang/OutOfMemoryError
    //   148	160	481	java/lang/OutOfMemoryError
    //   163	193	481	java/lang/OutOfMemoryError
    //   193	230	481	java/lang/OutOfMemoryError
    //   233	285	481	java/lang/OutOfMemoryError
    //   288	347	481	java/lang/OutOfMemoryError
    //   347	371	481	java/lang/OutOfMemoryError
    //   422	428	481	java/lang/OutOfMemoryError
    //   530	534	535	java/lang/Exception
    //   547	571	539	java/lang/Exception
    //   571	585	539	java/lang/Exception
    //   57	68	546	finally
    //   68	88	546	finally
    //   148	160	546	finally
    //   163	193	546	finally
    //   193	230	546	finally
    //   233	285	546	finally
    //   288	347	546	finally
    //   347	371	546	finally
    //   375	379	546	finally
    //   422	428	546	finally
    //   482	486	546	finally
    //   428	433	588	java/lang/Exception
    //   437	442	592	java/lang/Exception
    //   458	463	596	java/lang/Exception
    //   442	447	600	java/lang/Exception
    //   447	453	604	java/lang/Exception
    //   453	458	608	java/lang/Exception
    //   467	472	612	java/lang/Exception
    //   93	98	616	java/lang/Exception
    //   102	107	620	java/lang/Exception
    //   123	128	624	java/lang/Exception
    //   107	112	628	java/lang/Exception
    //   112	118	632	java/lang/Exception
    //   118	123	636	java/lang/Exception
    //   132	137	640	java/lang/Exception
    //   486	491	644	java/lang/Exception
    //   495	500	648	java/lang/Exception
    //   516	521	652	java/lang/Exception
    //   500	505	656	java/lang/Exception
    //   505	511	660	java/lang/Exception
    //   511	516	664	java/lang/Exception
    //   525	530	668	java/lang/Exception
  }
  
  /* Error */
  private void e(Long paramLong, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 688	com/appyet/manager/bq:i	Z
    //   4: ifeq +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   12: getfield 774	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   15: invokevirtual 778	com/appyet/manager/bp:n	()Z
    //   18: istore 5
    //   20: aload_0
    //   21: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   24: getfield 774	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   27: invokevirtual 780	com/appyet/manager/bp:o	()Z
    //   30: istore 6
    //   32: aload_0
    //   33: aconst_null
    //   34: putfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   37: aload_1
    //   38: ifnonnull +82 -> 120
    //   41: aload_0
    //   42: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   45: getfield 198	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   48: invokevirtual 893	com/appyet/manager/d:d	()Ljava/util/List;
    //   51: astore_1
    //   52: aload_1
    //   53: invokeinterface 275 1 0
    //   58: istore 4
    //   60: iload 4
    //   62: ifne +707 -> 769
    //   65: aload_0
    //   66: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   69: astore_1
    //   70: aload_1
    //   71: ifnull +24 -> 95
    //   74: aload_0
    //   75: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   78: astore_1
    //   79: aload_0
    //   80: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   83: astore_3
    //   84: aload_1
    //   85: aload_3
    //   86: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   89: pop
    //   90: aload_0
    //   91: aconst_null
    //   92: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   95: aload_0
    //   96: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   99: astore_1
    //   100: aload_1
    //   101: ifnull -94 -> 7
    //   104: aload_0
    //   105: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   108: astore_1
    //   109: aload_1
    //   110: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   113: return
    //   114: astore_1
    //   115: aload_1
    //   116: invokestatic 262	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   119: return
    //   120: aload_0
    //   121: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   124: getfield 198	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   127: aload_1
    //   128: invokevirtual 90	java/lang/Long:longValue	()J
    //   131: invokevirtual 912	com/appyet/manager/d:b	(J)Ljava/util/List;
    //   134: astore_1
    //   135: goto -83 -> 52
    //   138: aload_0
    //   139: new 792	com/appyet/manager/ProgressNotificationManager
    //   142: dup
    //   143: aload_0
    //   144: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   147: iload 4
    //   149: aload_0
    //   150: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   153: invokevirtual 739	com/appyet/context/ApplicationContext:getResources	()Landroid/content/res/Resources;
    //   156: ldc_w 798
    //   159: invokevirtual 802	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   162: invokespecial 805	com/appyet/manager/ProgressNotificationManager:<init>	(Landroid/content/Context;ILjava/lang/String;)V
    //   165: putfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   168: aload_0
    //   169: new 751	android/content/Intent
    //   172: dup
    //   173: aload_0
    //   174: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   177: ldc_w 807
    //   180: invokespecial 810	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   183: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   186: aload_0
    //   187: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   190: aload_0
    //   191: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   194: invokevirtual 814	com/appyet/context/ApplicationContext:startService	(Landroid/content/Intent;)Landroid/content/ComponentName;
    //   197: pop
    //   198: aload_0
    //   199: new 816	java/util/concurrent/ArrayBlockingQueue
    //   202: dup
    //   203: sipush 10000
    //   206: invokespecial 817	java/util/concurrent/ArrayBlockingQueue:<init>	(I)V
    //   209: putfield 50	com/appyet/manager/bq:k	Ljava/util/concurrent/ArrayBlockingQueue;
    //   212: aload_0
    //   213: new 828	java/util/concurrent/ThreadPoolExecutor
    //   216: dup
    //   217: bipush 10
    //   219: bipush 10
    //   221: ldc2_w 829
    //   224: getstatic 836	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   227: aload_0
    //   228: getfield 50	com/appyet/manager/bq:k	Ljava/util/concurrent/ArrayBlockingQueue;
    //   231: getstatic 43	com/appyet/manager/bq:b	Ljava/util/concurrent/ThreadFactory;
    //   234: invokespecial 839	java/util/concurrent/ThreadPoolExecutor:<init>	(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    //   237: putfield 48	com/appyet/manager/bq:j	Ljava/util/concurrent/ThreadPoolExecutor;
    //   240: aload_0
    //   241: getfield 57	com/appyet/manager/bq:l	Ljava/util/concurrent/atomic/AtomicInteger;
    //   244: iconst_0
    //   245: invokevirtual 842	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   248: aload_0
    //   249: getfield 59	com/appyet/manager/bq:m	Ljava/util/concurrent/atomic/AtomicInteger;
    //   252: iload 4
    //   254: invokevirtual 842	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   257: iload 5
    //   259: ifeq +527 -> 786
    //   262: iload 6
    //   264: ifne +6 -> 270
    //   267: goto +519 -> 786
    //   270: aload_0
    //   271: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   274: aload_0
    //   275: getfield 57	com/appyet/manager/bq:l	Ljava/util/concurrent/atomic/AtomicInteger;
    //   278: invokevirtual 844	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   281: new 235	java/lang/StringBuilder
    //   284: dup
    //   285: invokespecial 236	java/lang/StringBuilder:<init>	()V
    //   288: aload_0
    //   289: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   292: ldc_w 913
    //   295: invokevirtual 846	com/appyet/context/ApplicationContext:getString	(I)Ljava/lang/String;
    //   298: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   301: ldc_w 848
    //   304: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   307: aload_0
    //   308: getfield 57	com/appyet/manager/bq:l	Ljava/util/concurrent/atomic/AtomicInteger;
    //   311: invokevirtual 916	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   314: ldc -31
    //   316: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   319: aload_0
    //   320: getfield 59	com/appyet/manager/bq:m	Ljava/util/concurrent/atomic/AtomicInteger;
    //   323: invokevirtual 916	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   326: ldc_w 853
    //   329: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   332: aload_0
    //   333: getfield 57	com/appyet/manager/bq:l	Ljava/util/concurrent/atomic/AtomicInteger;
    //   336: invokevirtual 844	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   339: i2f
    //   340: aload_0
    //   341: getfield 59	com/appyet/manager/bq:m	Ljava/util/concurrent/atomic/AtomicInteger;
    //   344: invokevirtual 844	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   347: i2f
    //   348: fdiv
    //   349: f2d
    //   350: invokestatic 856	com/appyet/d/f:a	(D)Ljava/lang/String;
    //   353: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   356: invokevirtual 243	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   359: invokevirtual 859	com/appyet/manager/ProgressNotificationManager:a	(ILjava/lang/String;)V
    //   362: aload_1
    //   363: invokeinterface 68 1 0
    //   368: astore_1
    //   369: aload_1
    //   370: invokeinterface 74 1 0
    //   375: ifeq +170 -> 545
    //   378: aload_1
    //   379: invokeinterface 78 1 0
    //   384: checkcast 80	com/appyet/data/Feed
    //   387: astore_3
    //   388: aload_0
    //   389: getfield 688	com/appyet/manager/bq:i	Z
    //   392: ifne +153 -> 545
    //   395: aload_0
    //   396: iconst_0
    //   397: putfield 624	com/appyet/manager/bq:e	I
    //   400: aload_0
    //   401: getfield 48	com/appyet/manager/bq:j	Ljava/util/concurrent/ThreadPoolExecutor;
    //   404: new 918	com/appyet/manager/bt
    //   407: dup
    //   408: aload_0
    //   409: aload_0
    //   410: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   413: aload_3
    //   414: invokespecial 921	com/appyet/manager/bt:<init>	(Lcom/appyet/manager/bq;Lcom/appyet/context/ApplicationContext;Lcom/appyet/data/Feed;)V
    //   417: invokevirtual 868	java/util/concurrent/ThreadPoolExecutor:execute	(Ljava/lang/Runnable;)V
    //   420: goto -51 -> 369
    //   423: astore_3
    //   424: aload_3
    //   425: invokestatic 268	com/appyet/d/d:a	(Ljava/lang/Error;)V
    //   428: goto -59 -> 369
    //   431: astore_1
    //   432: aload_1
    //   433: invokestatic 262	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   436: aload_0
    //   437: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   440: ifnull +20 -> 460
    //   443: aload_0
    //   444: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   447: aload_0
    //   448: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   451: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   454: pop
    //   455: aload_0
    //   456: aconst_null
    //   457: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   460: aload_0
    //   461: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   464: ifnull -457 -> 7
    //   467: aload_0
    //   468: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   471: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   474: return
    //   475: astore_1
    //   476: goto -361 -> 115
    //   479: astore_3
    //   480: aload_3
    //   481: invokestatic 262	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   484: goto -115 -> 369
    //   487: astore_1
    //   488: aload_1
    //   489: invokestatic 268	com/appyet/d/d:a	(Ljava/lang/Error;)V
    //   492: aload_0
    //   493: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   496: astore_1
    //   497: aload_1
    //   498: ifnull +24 -> 522
    //   501: aload_0
    //   502: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   505: astore_1
    //   506: aload_0
    //   507: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   510: astore_3
    //   511: aload_1
    //   512: aload_3
    //   513: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   516: pop
    //   517: aload_0
    //   518: aconst_null
    //   519: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   522: aload_0
    //   523: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   526: astore_1
    //   527: aload_1
    //   528: ifnull -521 -> 7
    //   531: aload_0
    //   532: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   535: astore_1
    //   536: aload_1
    //   537: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   540: return
    //   541: astore_1
    //   542: goto -427 -> 115
    //   545: aload_0
    //   546: getfield 48	com/appyet/manager/bq:j	Ljava/util/concurrent/ThreadPoolExecutor;
    //   549: invokevirtual 871	java/util/concurrent/ThreadPoolExecutor:shutdown	()V
    //   552: aload_0
    //   553: getfield 48	com/appyet/manager/bq:j	Ljava/util/concurrent/ThreadPoolExecutor;
    //   556: ldc2_w 872
    //   559: getstatic 836	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   562: invokevirtual 877	java/util/concurrent/ThreadPoolExecutor:awaitTermination	(JLjava/util/concurrent/TimeUnit;)Z
    //   565: pop
    //   566: aload_0
    //   567: aconst_null
    //   568: putfield 48	com/appyet/manager/bq:j	Ljava/util/concurrent/ThreadPoolExecutor;
    //   571: aload_0
    //   572: getfield 50	com/appyet/manager/bq:k	Ljava/util/concurrent/ArrayBlockingQueue;
    //   575: invokevirtual 880	java/util/concurrent/ArrayBlockingQueue:clear	()V
    //   578: aload_0
    //   579: aconst_null
    //   580: putfield 50	com/appyet/manager/bq:k	Ljava/util/concurrent/ArrayBlockingQueue;
    //   583: aload_0
    //   584: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   587: astore_1
    //   588: aload_1
    //   589: ifnull +24 -> 613
    //   592: aload_0
    //   593: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   596: astore_1
    //   597: aload_0
    //   598: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   601: astore_3
    //   602: aload_1
    //   603: aload_3
    //   604: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   607: pop
    //   608: aload_0
    //   609: aconst_null
    //   610: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   613: aload_0
    //   614: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   617: astore_1
    //   618: aload_1
    //   619: ifnull -612 -> 7
    //   622: aload_0
    //   623: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   626: astore_1
    //   627: aload_1
    //   628: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   631: return
    //   632: astore_1
    //   633: goto -518 -> 115
    //   636: astore_1
    //   637: aload_1
    //   638: invokestatic 262	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   641: aload_3
    //   642: athrow
    //   643: astore_3
    //   644: aload_0
    //   645: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   648: ifnull +20 -> 668
    //   651: aload_0
    //   652: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   655: aload_0
    //   656: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   659: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   662: pop
    //   663: aload_0
    //   664: aconst_null
    //   665: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   668: aload_0
    //   669: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   672: ifnull -31 -> 641
    //   675: aload_0
    //   676: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   679: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   682: goto -41 -> 641
    //   685: astore_1
    //   686: goto -571 -> 115
    //   689: astore_1
    //   690: goto -575 -> 115
    //   693: astore_1
    //   694: goto -579 -> 115
    //   697: astore_1
    //   698: goto -583 -> 115
    //   701: astore_1
    //   702: goto -587 -> 115
    //   705: astore_1
    //   706: goto -591 -> 115
    //   709: astore_1
    //   710: goto -595 -> 115
    //   713: astore_1
    //   714: goto -599 -> 115
    //   717: astore_1
    //   718: goto -603 -> 115
    //   721: astore_1
    //   722: goto -607 -> 115
    //   725: astore_1
    //   726: goto -611 -> 115
    //   729: astore_1
    //   730: goto -615 -> 115
    //   733: astore_1
    //   734: goto -619 -> 115
    //   737: astore_1
    //   738: goto -623 -> 115
    //   741: astore_1
    //   742: goto -627 -> 115
    //   745: astore_1
    //   746: goto -631 -> 115
    //   749: astore_1
    //   750: goto -635 -> 115
    //   753: astore_1
    //   754: goto -639 -> 115
    //   757: astore_1
    //   758: goto -643 -> 115
    //   761: astore_1
    //   762: goto -647 -> 115
    //   765: astore_1
    //   766: goto -651 -> 115
    //   769: iload 5
    //   771: ifeq +8 -> 779
    //   774: iload 6
    //   776: ifne -638 -> 138
    //   779: iload_2
    //   780: ifeq -612 -> 168
    //   783: goto -645 -> 138
    //   786: iload_2
    //   787: ifeq -425 -> 362
    //   790: goto -520 -> 270
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	793	0	this	bq
    //   0	793	1	paramLong	Long
    //   0	793	2	paramBoolean	boolean
    //   83	331	3	localObject1	Object
    //   423	2	3	localOutOfMemoryError	OutOfMemoryError
    //   479	2	3	localException	Exception
    //   510	132	3	localIntent	Intent
    //   643	1	3	localObject2	Object
    //   58	195	4	i1	int
    //   18	752	5	bool1	boolean
    //   30	745	6	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   109	113	114	java/lang/Exception
    //   400	420	423	java/lang/OutOfMemoryError
    //   41	52	431	java/lang/Exception
    //   52	60	431	java/lang/Exception
    //   120	135	431	java/lang/Exception
    //   138	168	431	java/lang/Exception
    //   168	257	431	java/lang/Exception
    //   270	362	431	java/lang/Exception
    //   362	369	431	java/lang/Exception
    //   369	400	431	java/lang/Exception
    //   424	428	431	java/lang/Exception
    //   480	484	431	java/lang/Exception
    //   545	583	431	java/lang/Exception
    //   436	460	475	java/lang/Exception
    //   460	474	475	java/lang/Exception
    //   400	420	479	java/lang/Exception
    //   41	52	487	java/lang/OutOfMemoryError
    //   52	60	487	java/lang/OutOfMemoryError
    //   120	135	487	java/lang/OutOfMemoryError
    //   138	168	487	java/lang/OutOfMemoryError
    //   168	257	487	java/lang/OutOfMemoryError
    //   270	362	487	java/lang/OutOfMemoryError
    //   362	369	487	java/lang/OutOfMemoryError
    //   369	400	487	java/lang/OutOfMemoryError
    //   424	428	487	java/lang/OutOfMemoryError
    //   480	484	487	java/lang/OutOfMemoryError
    //   545	583	487	java/lang/OutOfMemoryError
    //   536	540	541	java/lang/Exception
    //   627	631	632	java/lang/Exception
    //   644	668	636	java/lang/Exception
    //   668	682	636	java/lang/Exception
    //   41	52	643	finally
    //   52	60	643	finally
    //   120	135	643	finally
    //   138	168	643	finally
    //   168	257	643	finally
    //   270	362	643	finally
    //   362	369	643	finally
    //   369	400	643	finally
    //   400	420	643	finally
    //   424	428	643	finally
    //   432	436	643	finally
    //   480	484	643	finally
    //   488	492	643	finally
    //   545	583	643	finally
    //   583	588	685	java/lang/Exception
    //   592	597	689	java/lang/Exception
    //   613	618	693	java/lang/Exception
    //   597	602	697	java/lang/Exception
    //   602	608	701	java/lang/Exception
    //   608	613	705	java/lang/Exception
    //   622	627	709	java/lang/Exception
    //   65	70	713	java/lang/Exception
    //   74	79	717	java/lang/Exception
    //   95	100	721	java/lang/Exception
    //   79	84	725	java/lang/Exception
    //   84	90	729	java/lang/Exception
    //   90	95	733	java/lang/Exception
    //   104	109	737	java/lang/Exception
    //   492	497	741	java/lang/Exception
    //   501	506	745	java/lang/Exception
    //   522	527	749	java/lang/Exception
    //   506	511	753	java/lang/Exception
    //   511	517	757	java/lang/Exception
    //   517	522	761	java/lang/Exception
    //   531	536	765	java/lang/Exception
  }
  
  /* Error */
  private void f(Long paramLong, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 688	com/appyet/manager/bq:i	Z
    //   4: ifeq +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   12: getfield 677	com/appyet/context/ApplicationContext:g	Lcom/appyet/manager/bl;
    //   15: invokevirtual 884	com/appyet/manager/bl:a	()Lcom/appyet/manager/bo;
    //   18: getstatic 889	com/appyet/manager/bo:a	Lcom/appyet/manager/bo;
    //   21: if_acmpeq -14 -> 7
    //   24: aload_0
    //   25: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   28: getfield 774	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   31: invokevirtual 778	com/appyet/manager/bp:n	()Z
    //   34: istore 5
    //   36: aload_0
    //   37: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   40: getfield 774	com/appyet/context/ApplicationContext:d	Lcom/appyet/manager/bp;
    //   43: invokevirtual 780	com/appyet/manager/bp:o	()Z
    //   46: istore 6
    //   48: aload_0
    //   49: aconst_null
    //   50: putfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   53: aload_1
    //   54: ifnonnull +82 -> 136
    //   57: aload_0
    //   58: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   61: getfield 198	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   64: invokevirtual 925	com/appyet/manager/d:f	()Ljava/util/List;
    //   67: astore_1
    //   68: aload_1
    //   69: invokeinterface 275 1 0
    //   74: istore 4
    //   76: iload 4
    //   78: ifne +704 -> 782
    //   81: aload_0
    //   82: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   85: astore_1
    //   86: aload_1
    //   87: ifnull +24 -> 111
    //   90: aload_0
    //   91: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   94: astore_1
    //   95: aload_0
    //   96: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   99: astore_3
    //   100: aload_1
    //   101: aload_3
    //   102: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   105: pop
    //   106: aload_0
    //   107: aconst_null
    //   108: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   111: aload_0
    //   112: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   115: astore_1
    //   116: aload_1
    //   117: ifnull -110 -> 7
    //   120: aload_0
    //   121: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   124: astore_1
    //   125: aload_1
    //   126: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   129: return
    //   130: astore_1
    //   131: aload_1
    //   132: invokestatic 262	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   135: return
    //   136: aload_0
    //   137: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   140: getfield 198	com/appyet/context/ApplicationContext:h	Lcom/appyet/manager/d;
    //   143: aload_1
    //   144: invokevirtual 90	java/lang/Long:longValue	()J
    //   147: invokevirtual 927	com/appyet/manager/d:d	(J)Ljava/util/List;
    //   150: astore_1
    //   151: goto -83 -> 68
    //   154: aload_0
    //   155: new 792	com/appyet/manager/ProgressNotificationManager
    //   158: dup
    //   159: aload_0
    //   160: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   163: iload 4
    //   165: aload_0
    //   166: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   169: invokevirtual 739	com/appyet/context/ApplicationContext:getResources	()Landroid/content/res/Resources;
    //   172: ldc_w 798
    //   175: invokevirtual 802	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   178: invokespecial 805	com/appyet/manager/ProgressNotificationManager:<init>	(Landroid/content/Context;ILjava/lang/String;)V
    //   181: putfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   184: aload_0
    //   185: new 751	android/content/Intent
    //   188: dup
    //   189: aload_0
    //   190: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   193: ldc_w 807
    //   196: invokespecial 810	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   199: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   202: aload_0
    //   203: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   206: aload_0
    //   207: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   210: invokevirtual 814	com/appyet/context/ApplicationContext:startService	(Landroid/content/Intent;)Landroid/content/ComponentName;
    //   213: pop
    //   214: aload_0
    //   215: new 816	java/util/concurrent/ArrayBlockingQueue
    //   218: dup
    //   219: sipush 10000
    //   222: invokespecial 817	java/util/concurrent/ArrayBlockingQueue:<init>	(I)V
    //   225: putfield 50	com/appyet/manager/bq:k	Ljava/util/concurrent/ArrayBlockingQueue;
    //   228: aload_0
    //   229: new 828	java/util/concurrent/ThreadPoolExecutor
    //   232: dup
    //   233: bipush 10
    //   235: bipush 10
    //   237: ldc2_w 829
    //   240: getstatic 836	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   243: aload_0
    //   244: getfield 50	com/appyet/manager/bq:k	Ljava/util/concurrent/ArrayBlockingQueue;
    //   247: getstatic 43	com/appyet/manager/bq:b	Ljava/util/concurrent/ThreadFactory;
    //   250: invokespecial 839	java/util/concurrent/ThreadPoolExecutor:<init>	(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    //   253: putfield 48	com/appyet/manager/bq:j	Ljava/util/concurrent/ThreadPoolExecutor;
    //   256: aload_0
    //   257: getfield 57	com/appyet/manager/bq:l	Ljava/util/concurrent/atomic/AtomicInteger;
    //   260: iconst_0
    //   261: invokevirtual 842	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   264: aload_0
    //   265: getfield 59	com/appyet/manager/bq:m	Ljava/util/concurrent/atomic/AtomicInteger;
    //   268: iload 4
    //   270: invokevirtual 842	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   273: iload 5
    //   275: ifeq +524 -> 799
    //   278: iload 6
    //   280: ifne +6 -> 286
    //   283: goto +516 -> 799
    //   286: aload_0
    //   287: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   290: aload_0
    //   291: getfield 57	com/appyet/manager/bq:l	Ljava/util/concurrent/atomic/AtomicInteger;
    //   294: invokevirtual 844	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   297: new 235	java/lang/StringBuilder
    //   300: dup
    //   301: invokespecial 236	java/lang/StringBuilder:<init>	()V
    //   304: aload_0
    //   305: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   308: ldc_w 928
    //   311: invokevirtual 846	com/appyet/context/ApplicationContext:getString	(I)Ljava/lang/String;
    //   314: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: ldc_w 848
    //   320: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: aload_0
    //   324: getfield 57	com/appyet/manager/bq:l	Ljava/util/concurrent/atomic/AtomicInteger;
    //   327: invokevirtual 916	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   330: ldc -31
    //   332: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   335: aload_0
    //   336: getfield 59	com/appyet/manager/bq:m	Ljava/util/concurrent/atomic/AtomicInteger;
    //   339: invokevirtual 916	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   342: ldc_w 853
    //   345: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   348: aload_0
    //   349: getfield 57	com/appyet/manager/bq:l	Ljava/util/concurrent/atomic/AtomicInteger;
    //   352: invokevirtual 844	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   355: i2f
    //   356: aload_0
    //   357: getfield 59	com/appyet/manager/bq:m	Ljava/util/concurrent/atomic/AtomicInteger;
    //   360: invokevirtual 844	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   363: i2f
    //   364: fdiv
    //   365: f2d
    //   366: invokestatic 856	com/appyet/d/f:a	(D)Ljava/lang/String;
    //   369: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   372: invokevirtual 243	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   375: invokevirtual 859	com/appyet/manager/ProgressNotificationManager:a	(ILjava/lang/String;)V
    //   378: aload_1
    //   379: invokeinterface 68 1 0
    //   384: astore_1
    //   385: aload_1
    //   386: invokeinterface 74 1 0
    //   391: ifeq +167 -> 558
    //   394: aload_1
    //   395: invokeinterface 78 1 0
    //   400: checkcast 112	com/appyet/data/FileCache
    //   403: astore_3
    //   404: aload_0
    //   405: getfield 688	com/appyet/manager/bq:i	Z
    //   408: istore_2
    //   409: iload_2
    //   410: ifne +148 -> 558
    //   413: aload_0
    //   414: getfield 48	com/appyet/manager/bq:j	Ljava/util/concurrent/ThreadPoolExecutor;
    //   417: new 930	com/appyet/manager/bu
    //   420: dup
    //   421: aload_0
    //   422: aload_0
    //   423: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   426: aload_3
    //   427: invokespecial 933	com/appyet/manager/bu:<init>	(Lcom/appyet/manager/bq;Lcom/appyet/context/ApplicationContext;Lcom/appyet/data/FileCache;)V
    //   430: invokevirtual 868	java/util/concurrent/ThreadPoolExecutor:execute	(Ljava/lang/Runnable;)V
    //   433: goto -48 -> 385
    //   436: astore_3
    //   437: aload_3
    //   438: invokestatic 268	com/appyet/d/d:a	(Ljava/lang/Error;)V
    //   441: goto -56 -> 385
    //   444: astore_1
    //   445: aload_1
    //   446: invokestatic 262	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   449: aload_0
    //   450: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   453: ifnull +20 -> 473
    //   456: aload_0
    //   457: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   460: aload_0
    //   461: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   464: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   467: pop
    //   468: aload_0
    //   469: aconst_null
    //   470: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   473: aload_0
    //   474: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   477: ifnull -470 -> 7
    //   480: aload_0
    //   481: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   484: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   487: return
    //   488: astore_1
    //   489: goto -358 -> 131
    //   492: astore_3
    //   493: aload_3
    //   494: invokestatic 262	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   497: goto -112 -> 385
    //   500: astore_1
    //   501: aload_1
    //   502: invokestatic 268	com/appyet/d/d:a	(Ljava/lang/Error;)V
    //   505: aload_0
    //   506: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   509: astore_1
    //   510: aload_1
    //   511: ifnull +24 -> 535
    //   514: aload_0
    //   515: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   518: astore_1
    //   519: aload_0
    //   520: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   523: astore_3
    //   524: aload_1
    //   525: aload_3
    //   526: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   529: pop
    //   530: aload_0
    //   531: aconst_null
    //   532: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   535: aload_0
    //   536: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   539: astore_1
    //   540: aload_1
    //   541: ifnull -534 -> 7
    //   544: aload_0
    //   545: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   548: astore_1
    //   549: aload_1
    //   550: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   553: return
    //   554: astore_1
    //   555: goto -424 -> 131
    //   558: aload_0
    //   559: getfield 48	com/appyet/manager/bq:j	Ljava/util/concurrent/ThreadPoolExecutor;
    //   562: invokevirtual 871	java/util/concurrent/ThreadPoolExecutor:shutdown	()V
    //   565: aload_0
    //   566: getfield 48	com/appyet/manager/bq:j	Ljava/util/concurrent/ThreadPoolExecutor;
    //   569: ldc2_w 872
    //   572: getstatic 836	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   575: invokevirtual 877	java/util/concurrent/ThreadPoolExecutor:awaitTermination	(JLjava/util/concurrent/TimeUnit;)Z
    //   578: pop
    //   579: aload_0
    //   580: aconst_null
    //   581: putfield 48	com/appyet/manager/bq:j	Ljava/util/concurrent/ThreadPoolExecutor;
    //   584: aload_0
    //   585: getfield 50	com/appyet/manager/bq:k	Ljava/util/concurrent/ArrayBlockingQueue;
    //   588: invokevirtual 880	java/util/concurrent/ArrayBlockingQueue:clear	()V
    //   591: aload_0
    //   592: aconst_null
    //   593: putfield 50	com/appyet/manager/bq:k	Ljava/util/concurrent/ArrayBlockingQueue;
    //   596: aload_0
    //   597: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   600: astore_1
    //   601: aload_1
    //   602: ifnull +24 -> 626
    //   605: aload_0
    //   606: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   609: astore_1
    //   610: aload_0
    //   611: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   614: astore_3
    //   615: aload_1
    //   616: aload_3
    //   617: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   620: pop
    //   621: aload_0
    //   622: aconst_null
    //   623: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   626: aload_0
    //   627: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   630: astore_1
    //   631: aload_1
    //   632: ifnull -625 -> 7
    //   635: aload_0
    //   636: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   639: astore_1
    //   640: aload_1
    //   641: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   644: return
    //   645: astore_1
    //   646: goto -515 -> 131
    //   649: astore_1
    //   650: aload_1
    //   651: invokestatic 262	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   654: aload_3
    //   655: athrow
    //   656: astore_3
    //   657: aload_0
    //   658: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   661: ifnull +20 -> 681
    //   664: aload_0
    //   665: getfield 61	com/appyet/manager/bq:c	Lcom/appyet/context/ApplicationContext;
    //   668: aload_0
    //   669: getfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   672: invokevirtual 790	com/appyet/context/ApplicationContext:stopService	(Landroid/content/Intent;)Z
    //   675: pop
    //   676: aload_0
    //   677: aconst_null
    //   678: putfield 786	com/appyet/manager/bq:n	Landroid/content/Intent;
    //   681: aload_0
    //   682: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   685: ifnull -31 -> 654
    //   688: aload_0
    //   689: getfield 782	com/appyet/manager/bq:o	Lcom/appyet/manager/ProgressNotificationManager;
    //   692: invokevirtual 794	com/appyet/manager/ProgressNotificationManager:a	()V
    //   695: goto -41 -> 654
    //   698: astore_1
    //   699: goto -568 -> 131
    //   702: astore_1
    //   703: goto -572 -> 131
    //   706: astore_1
    //   707: goto -576 -> 131
    //   710: astore_1
    //   711: goto -580 -> 131
    //   714: astore_1
    //   715: goto -584 -> 131
    //   718: astore_1
    //   719: goto -588 -> 131
    //   722: astore_1
    //   723: goto -592 -> 131
    //   726: astore_1
    //   727: goto -596 -> 131
    //   730: astore_1
    //   731: goto -600 -> 131
    //   734: astore_1
    //   735: goto -604 -> 131
    //   738: astore_1
    //   739: goto -608 -> 131
    //   742: astore_1
    //   743: goto -612 -> 131
    //   746: astore_1
    //   747: goto -616 -> 131
    //   750: astore_1
    //   751: goto -620 -> 131
    //   754: astore_1
    //   755: goto -624 -> 131
    //   758: astore_1
    //   759: goto -628 -> 131
    //   762: astore_1
    //   763: goto -632 -> 131
    //   766: astore_1
    //   767: goto -636 -> 131
    //   770: astore_1
    //   771: goto -640 -> 131
    //   774: astore_1
    //   775: goto -644 -> 131
    //   778: astore_1
    //   779: goto -648 -> 131
    //   782: iload 5
    //   784: ifeq +8 -> 792
    //   787: iload 6
    //   789: ifne -635 -> 154
    //   792: iload_2
    //   793: ifeq -609 -> 184
    //   796: goto -642 -> 154
    //   799: iload_2
    //   800: ifeq -422 -> 378
    //   803: goto -517 -> 286
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	806	0	this	bq
    //   0	806	1	paramLong	Long
    //   0	806	2	paramBoolean	boolean
    //   99	328	3	localObject1	Object
    //   436	2	3	localOutOfMemoryError	OutOfMemoryError
    //   492	2	3	localException	Exception
    //   523	132	3	localIntent	Intent
    //   656	1	3	localObject2	Object
    //   74	195	4	i1	int
    //   34	749	5	bool1	boolean
    //   46	742	6	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   125	129	130	java/lang/Exception
    //   413	433	436	java/lang/OutOfMemoryError
    //   57	68	444	java/lang/Exception
    //   68	76	444	java/lang/Exception
    //   136	151	444	java/lang/Exception
    //   154	184	444	java/lang/Exception
    //   184	273	444	java/lang/Exception
    //   286	378	444	java/lang/Exception
    //   378	385	444	java/lang/Exception
    //   385	409	444	java/lang/Exception
    //   437	441	444	java/lang/Exception
    //   493	497	444	java/lang/Exception
    //   558	596	444	java/lang/Exception
    //   449	473	488	java/lang/Exception
    //   473	487	488	java/lang/Exception
    //   413	433	492	java/lang/Exception
    //   57	68	500	java/lang/OutOfMemoryError
    //   68	76	500	java/lang/OutOfMemoryError
    //   136	151	500	java/lang/OutOfMemoryError
    //   154	184	500	java/lang/OutOfMemoryError
    //   184	273	500	java/lang/OutOfMemoryError
    //   286	378	500	java/lang/OutOfMemoryError
    //   378	385	500	java/lang/OutOfMemoryError
    //   385	409	500	java/lang/OutOfMemoryError
    //   437	441	500	java/lang/OutOfMemoryError
    //   493	497	500	java/lang/OutOfMemoryError
    //   558	596	500	java/lang/OutOfMemoryError
    //   549	553	554	java/lang/Exception
    //   640	644	645	java/lang/Exception
    //   657	681	649	java/lang/Exception
    //   681	695	649	java/lang/Exception
    //   57	68	656	finally
    //   68	76	656	finally
    //   136	151	656	finally
    //   154	184	656	finally
    //   184	273	656	finally
    //   286	378	656	finally
    //   378	385	656	finally
    //   385	409	656	finally
    //   413	433	656	finally
    //   437	441	656	finally
    //   445	449	656	finally
    //   493	497	656	finally
    //   501	505	656	finally
    //   558	596	656	finally
    //   596	601	698	java/lang/Exception
    //   605	610	702	java/lang/Exception
    //   626	631	706	java/lang/Exception
    //   610	615	710	java/lang/Exception
    //   615	621	714	java/lang/Exception
    //   621	626	718	java/lang/Exception
    //   635	640	722	java/lang/Exception
    //   81	86	726	java/lang/Exception
    //   90	95	730	java/lang/Exception
    //   111	116	734	java/lang/Exception
    //   95	100	738	java/lang/Exception
    //   100	106	742	java/lang/Exception
    //   106	111	746	java/lang/Exception
    //   120	125	750	java/lang/Exception
    //   505	510	754	java/lang/Exception
    //   514	519	758	java/lang/Exception
    //   535	540	762	java/lang/Exception
    //   519	524	766	java/lang/Exception
    //   524	530	770	java/lang/Exception
    //   530	535	774	java/lang/Exception
    //   544	549	778	java/lang/Exception
  }
  
  public final int a()
  {
    return d;
  }
  
  public final void a(long paramLong)
  {
    try
    {
      new bv(this, Long.valueOf(paramLong), true).a(new Void[0]);
      return;
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
  }
  
  public final void a(Long paramLong, boolean paramBoolean)
  {
    Object localObject5 = null;
    Object localObject4 = null;
    localWakeLock = null;
    localObject3 = localWakeLock;
    localObject2 = localObject5;
    localObject1 = localObject4;
    try
    {
      c.a(c.c() + 1);
      localObject3 = localWakeLock;
      localObject2 = localObject5;
      localObject1 = localObject4;
      d = 0;
      localObject3 = localWakeLock;
      localObject2 = localObject5;
      localObject1 = localObject4;
      f = 0;
      localObject3 = localWakeLock;
      localObject2 = localObject5;
      localObject1 = localObject4;
      g = 0;
      localObject3 = localWakeLock;
      localObject2 = localObject5;
      localObject1 = localObject4;
      h = 0;
      localObject3 = localWakeLock;
      localObject2 = localObject5;
      localObject1 = localObject4;
      Date localDate = new Date();
      localObject3 = localWakeLock;
      localObject2 = localObject5;
      localObject1 = localObject4;
      c.d.b(localDate.getTime());
      localObject3 = localWakeLock;
      localObject2 = localObject5;
      localObject1 = localObject4;
      int i1 = c.c();
      if (i1 <= 1) {
        break label241;
      }
      c.a(c.c() - 1);
      if (c.c() <= 0) {
        i = false;
      }
      paramLong = new Date();
      c.d.b(paramLong.getTime());
      if (0 != 0) {
        throw new NullPointerException();
      }
    }
    catch (Exception paramLong)
    {
      for (;;)
      {
        localObject1 = localObject3;
        com.appyet.d.d.a(paramLong);
        c.a(c.c() - 1);
        if (c.c() <= 0) {
          i = false;
        }
        paramLong = new Date();
        c.d.b(paramLong.getTime());
        if (localObject3 != null)
        {
          ((PowerManager.WakeLock)localObject3).release();
          continue;
          localObject3 = localWakeLock;
          localObject2 = localWakeLock;
          localObject1 = localWakeLock;
          if (localObject4 != bo.a)
          {
            localObject3 = localWakeLock;
            localObject2 = localWakeLock;
            localObject1 = localWakeLock;
            c(paramLong, paramBoolean);
          }
        }
      }
    }
    catch (Error paramLong)
    {
      for (;;)
      {
        localObject1 = localObject2;
        com.appyet.d.d.a(paramLong);
        c.a(c.c() - 1);
        if (c.c() <= 0) {
          i = false;
        }
        paramLong = new Date();
        c.d.b(paramLong.getTime());
        if (localObject2 != null)
        {
          ((PowerManager.WakeLock)localObject2).release();
          continue;
          localObject3 = localWakeLock;
          localObject2 = localWakeLock;
          localObject1 = localWakeLock;
          if (localObject4 != bo.a)
          {
            localObject3 = localWakeLock;
            localObject2 = localWakeLock;
            localObject1 = localWakeLock;
            f(paramLong, paramBoolean);
          }
        }
      }
    }
    finally
    {
      c.a(c.c() - 1);
      if (c.c() > 0) {
        break label2185;
      }
      i = false;
      localObject2 = new Date();
      c.d.b(((Date)localObject2).getTime());
      if (localObject1 == null) {
        break label2217;
      }
      ((PowerManager.WakeLock)localObject1).release();
      System.gc();
    }
    System.gc();
    return;
    label241:
    localObject3 = localWakeLock;
    localObject2 = localObject5;
    localObject1 = localObject4;
    ar.a(c);
    localObject3 = localWakeLock;
    localObject2 = localObject5;
    localObject1 = localObject4;
    localWakeLock = ((PowerManager)c.getSystemService("power")).newWakeLock(1, c.getPackageName() + "_WAKE_LOCK_TAG");
    localObject3 = localWakeLock;
    localObject2 = localWakeLock;
    localObject1 = localWakeLock;
    localWakeLock.setReferenceCounted(false);
    localObject3 = localWakeLock;
    localObject2 = localWakeLock;
    localObject1 = localWakeLock;
    localWakeLock.acquire();
    localObject3 = localWakeLock;
    localObject2 = localWakeLock;
    localObject1 = localWakeLock;
    localObject4 = c.g.a();
    localObject3 = localWakeLock;
    localObject2 = localWakeLock;
    localObject1 = localWakeLock;
    if (c.d.m())
    {
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      if (localObject4 == bo.b)
      {
        localObject3 = localWakeLock;
        localObject2 = localWakeLock;
        localObject1 = localWakeLock;
        e(paramLong, paramBoolean);
      }
      label431:
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      localObject4 = c.g.a();
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      if (!c.d.m()) {
        break label2001;
      }
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      if (localObject4 == bo.b)
      {
        localObject3 = localWakeLock;
        localObject2 = localWakeLock;
        localObject1 = localWakeLock;
        c(paramLong, paramBoolean);
      }
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      localObject4 = c.g.a();
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      if (!c.d.r()) {
        break label2114;
      }
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      if (localObject4 == bo.b)
      {
        localObject3 = localWakeLock;
        localObject2 = localWakeLock;
        localObject1 = localWakeLock;
        f(paramLong, paramBoolean);
      }
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      localObject4 = c.g.a();
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      if (!c.d.s()) {
        break label2222;
      }
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      if (localObject4 == bo.b)
      {
        localObject3 = localWakeLock;
        localObject2 = localWakeLock;
        localObject1 = localWakeLock;
        d(paramLong, paramBoolean);
      }
    }
    for (;;)
    {
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      try
      {
        localObject4 = new Date();
        localObject2 = localWakeLock;
        localObject1 = localWakeLock;
        localObject5 = c.q.MetadataApplication.AppSyncUrl + "?guid=" + c.q.MetadataApplication.Guid + "&pkn=" + c.getPackageName() + "&tvc=" + c.q.MetadataApplication.BuildTemplateVersionCode;
        localObject2 = localWakeLock;
        localObject1 = localWakeLock;
        localObject3 = e.a(c.q.MetadataApplication.AppSyncUrl);
        localObject2 = localWakeLock;
        localObject1 = localWakeLock;
        paramLong = (String)localObject3 + "0";
        localObject2 = localWakeLock;
        localObject1 = localWakeLock;
        long l1 = c.k.c((String)localObject3);
        localObject2 = localWakeLock;
        localObject1 = localWakeLock;
        l1 = ((Date)localObject4).getTime() - l1;
        if ((l1 < 0L) || (l1 > 86400000L))
        {
          localObject2 = localWakeLock;
          localObject1 = localWakeLock;
          if (c.k.a((String)localObject5, paramLong))
          {
            localObject2 = localWakeLock;
            localObject1 = localWakeLock;
            if (c.k.g(paramLong))
            {
              localObject2 = localWakeLock;
              localObject1 = localWakeLock;
              localObject4 = c.k.b(paramLong, "UTF8");
              if (localObject4 != null)
              {
                localObject2 = localWakeLock;
                localObject1 = localWakeLock;
                if (((String)localObject4).length() > 0)
                {
                  localObject2 = localWakeLock;
                  localObject1 = localWakeLock;
                  if (((String)localObject4).contains("Vendor"))
                  {
                    localObject2 = localWakeLock;
                    localObject1 = localWakeLock;
                    localObject5 = new com.google.a.r();
                    localObject2 = localWakeLock;
                    localObject1 = localWakeLock;
                    a = "yyyy-MM-dd'T'HH:mm:ss";
                    localObject2 = localWakeLock;
                    localObject1 = localWakeLock;
                    if ((MetadataAppSync)((com.google.a.r)localObject5).a().a((String)localObject4, MetadataAppSync.class) != null)
                    {
                      localObject2 = localWakeLock;
                      localObject1 = localWakeLock;
                      c.k.a(c.k, paramLong, (String)localObject3);
                    }
                  }
                }
              }
            }
            localObject2 = localWakeLock;
            localObject1 = localWakeLock;
            c.g();
            localObject2 = localWakeLock;
            localObject1 = localWakeLock;
            c.e.a();
          }
        }
      }
      catch (Exception paramLong)
      {
        for (;;)
        {
          localObject3 = localWakeLock;
          localObject2 = localWakeLock;
          localObject1 = localWakeLock;
          com.appyet.d.d.a(paramLong);
          continue;
          localObject3 = localWakeLock;
          localObject2 = localWakeLock;
          localObject1 = localWakeLock;
          c.d.j(d);
        }
      }
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      if (c.a) {
        break label2280;
      }
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      if (!c.d.n()) {
        break label2280;
      }
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      if (d <= 0) {
        break label2280;
      }
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      c.d.j(c.d.X() + d);
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      paramLong = (NotificationManager)c.getSystemService("notification");
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      localObject4 = new Notification(17301543, c.getString(2131230998), System.currentTimeMillis());
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      flags |= 0x10;
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      localObject5 = new Intent(c, MainActivity.class);
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      ((Intent)localObject5).addCategory("android.intent.category.LAUNCHER");
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      ((Intent)localObject5).setAction("android.intent.action.MAIN");
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      localObject5 = PendingIntent.getActivity(c, 0, (Intent)localObject5, 268435456);
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      icon = 2130837624;
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      number = c.d.X();
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      ((Notification)localObject4).setLatestEventInfo(c, c.getString(2131230998), String.format(c.getString(2131230806), new Object[] { Integer.valueOf(c.d.X()) }), (PendingIntent)localObject5);
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      sound = Uri.parse(c.d.p());
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      if (c.d.u())
      {
        localObject3 = localWakeLock;
        localObject2 = localWakeLock;
        localObject1 = localWakeLock;
        defaults |= 0x2;
      }
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      if (c.d.v())
      {
        localObject3 = localWakeLock;
        localObject2 = localWakeLock;
        localObject1 = localWakeLock;
        defaults |= 0x4;
      }
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      paramLong.notify(0, (Notification)localObject4);
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      new by(c.u).a(new Void[0]);
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      if (c.e())
      {
        localObject3 = localWakeLock;
        localObject2 = localWakeLock;
        localObject1 = localWakeLock;
        c.s.a();
      }
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      if (c.d.w() <= 0)
      {
        localObject3 = localWakeLock;
        localObject2 = localWakeLock;
        localObject1 = localWakeLock;
        if (c.d.y() <= 0) {}
      }
      else
      {
        localObject3 = localWakeLock;
        localObject2 = localWakeLock;
        localObject1 = localWakeLock;
        c.h.a(c.d.y(), c.d.w(), c.d.x());
      }
      c.a(c.c() - 1);
      if (c.c() <= 0) {
        i = false;
      }
      paramLong = new Date();
      c.d.b(paramLong.getTime());
      if (localWakeLock == null) {
        break;
      }
      localWakeLock.release();
      break;
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      if (localObject4 == bo.a) {
        break label431;
      }
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      e(paramLong, paramBoolean);
      break label431;
      label2001:
      label2114:
      label2185:
      label2217:
      label2222:
      localObject3 = localWakeLock;
      localObject2 = localWakeLock;
      localObject1 = localWakeLock;
      if (localObject4 != bo.a)
      {
        localObject3 = localWakeLock;
        localObject2 = localWakeLock;
        localObject1 = localWakeLock;
        d(paramLong, paramBoolean);
      }
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    try
    {
      new bv(this, null, paramBoolean).a(new Void[0]);
      return;
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
  }
  
  public final void b()
  {
    i = true;
  }
  
  public final void c()
  {
    i = true;
    while (c.c() > 0) {
      try
      {
        Thread.sleep(1000L);
      }
      catch (InterruptedException localInterruptedException)
      {
        com.appyet.d.d.a(localInterruptedException);
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        com.appyet.d.d.a(localOutOfMemoryError);
      }
    }
    i = false;
  }
  
  public final ProgressNotificationManager d()
  {
    return o;
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */