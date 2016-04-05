package com.appyet.manager;

import com.appyet.context.ApplicationContext;
import com.appyet.data.DatabaseHelper;
import com.appyet.data.Feed;
import com.appyet.data.FeedItem;
import com.appyet.data.FeedItem.ArticleStatusEnum;
import com.appyet.data.FeedItem.EnclosureStatusEnum;
import com.appyet.data.FileCache;
import com.appyet.data.FileCache.DownloadStatusEnum;
import com.appyet.data.Forum;
import com.appyet.data.Module;
import com.appyet.data.Web;
import com.appyet.data.Widget;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.GenericRawResults;
import com.j256.ormlite.misc.TransactionManager;
import com.j256.ormlite.stmt.ArgumentHolder;
import com.j256.ormlite.stmt.PreparedQuery;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.UpdateBuilder;
import com.j256.ormlite.stmt.Where;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public final class d
{
  public ApplicationContext a;
  public DatabaseHelper b;
  private String[] c = { "Author", "CommentsLink", "EnclosureCurrentPosition", "EnclosureDuration", "EnclosureLength", "EnclosureLink", "EnclosureType", "FeedId", "FeedItemId", "IsDeleted", "IsRead", "IsStar", "Link", "PubDate", "Snippet", "Thumbnail", "Title", "UniqueKey", "ArticleStatus", "EnclosureStatus", "IsQueued", "QueueOrder", "CacheGuid", "CommentsCount", "CommentsWebLink" };
  private String[] d = { "FeedId", "FeedItemId", "IsDeleted", "IsRead", "IsStar", "UniqueKey", "ArticleStatus", "EnclosureStatus", "IsQueued", "CommentsCount" };
  
  public d(ApplicationContext paramApplicationContext)
  {
    a = paramApplicationContext;
  }
  
  private void a(QueryBuilder<FeedItem, Long> paramQueryBuilder)
  {
    if (a.d.d())
    {
      switch (y.a[a.d.f().ordinal()])
      {
      default: 
        return;
      case 1: 
        paramQueryBuilder.orderByRaw("IsStar DESC, IsRead ASC, PubDate DESC");
        return;
      case 2: 
        paramQueryBuilder.orderByRaw("IsStar DESC, IsRead DESC, PubDate DESC");
        return;
      case 3: 
        paramQueryBuilder.orderByRaw("IsStar DESC, PubDate ASC");
        return;
      case 4: 
        paramQueryBuilder.orderByRaw("IsStar DESC, PubDate DESC");
        return;
      case 5: 
        paramQueryBuilder.orderByRaw("IsStar DESC, CreatedDate ASC");
        return;
      case 6: 
        paramQueryBuilder.orderByRaw("IsStar DESC, CreatedDate DESC");
        return;
      }
      paramQueryBuilder.orderByRaw("IsStar DESC, Title ASC, PubDate DESC");
      return;
    }
    switch (y.a[a.d.f().ordinal()])
    {
    default: 
      return;
    case 1: 
      paramQueryBuilder.orderByRaw("IsRead ASC, PubDate DESC");
      return;
    case 2: 
      paramQueryBuilder.orderByRaw("IsRead DESC, PubDate DESC");
      return;
    case 3: 
      paramQueryBuilder.orderByRaw("PubDate ASC");
      return;
    case 4: 
      paramQueryBuilder.orderByRaw("PubDate DESC");
      return;
    case 5: 
      paramQueryBuilder.orderByRaw("CreatedDate ASC");
      return;
    case 6: 
      paramQueryBuilder.orderByRaw("CreatedDate DESC");
      return;
    }
    paramQueryBuilder.orderByRaw("Title ASC, PubDate DESC");
  }
  
  private void a(Where<FeedItem, Long> paramWhere)
  {
    if (a.d.c()) {}
    try
    {
      paramWhere.and().eq("IsRead", Boolean.valueOf(false));
      return;
    }
    catch (SQLException paramWhere)
    {
      com.appyet.d.d.a(paramWhere);
    }
  }
  
  public final int a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    try
    {
      ad localad = new ad(this);
      TransactionManager.callInTransaction(b.getConnectionSource(), new e(this, paramInt1, paramBoolean, localad, paramInt2));
      paramInt1 = a;
      return paramInt1;
    }
    catch (Exception localException)
    {
      localException = localException;
      com.appyet.d.d.a(localException);
      return 0;
    }
    finally {}
  }
  
  public final Feed a(long paramLong)
  {
    try
    {
      Feed localFeed = (Feed)b.getFeedDao().queryForId(Long.valueOf(paramLong));
      return localFeed;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final FeedItem a(FeedItem paramFeedItem)
  {
    try
    {
      FeedItem localFeedItem = (FeedItem)b.getFeedItemDao().queryForId(paramFeedItem.getFeedItemId());
      if (localFeedItem != null)
      {
        paramFeedItem.setDescription(localFeedItem.getDescription());
        paramFeedItem.setArticle(localFeedItem.getArticle());
      }
      return paramFeedItem;
    }
    catch (SQLException paramFeedItem)
    {
      com.appyet.d.d.a(paramFeedItem);
    }
    return null;
  }
  
  public final List<FeedItem> a(long paramLong1, long paramLong2)
  {
    try
    {
      Object localObject = b.getFeedItemDao();
      QueryBuilder localQueryBuilder = ((Dao)localObject).queryBuilder();
      Where localWhere = localQueryBuilder.where();
      localWhere.eq("IsDeleted", Boolean.valueOf(false));
      localQueryBuilder.selectColumns(c);
      localQueryBuilder.limit(Long.valueOf(paramLong1));
      localQueryBuilder.offset(Long.valueOf(paramLong2));
      a(localQueryBuilder);
      a(localWhere);
      localObject = ((Dao)localObject).query(localQueryBuilder.prepare());
      return (List<FeedItem>)localObject;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final List<FeedItem> a(Feed paramFeed)
  {
    try
    {
      Dao localDao = b.getFeedItemDao();
      QueryBuilder localQueryBuilder = localDao.queryBuilder();
      localQueryBuilder.selectColumns(d);
      localQueryBuilder.where().eq("FeedId", paramFeed.getFeedId());
      localQueryBuilder.orderByRaw("CreatedDate DESC, PubDate DESC");
      paramFeed = localDao.query(localQueryBuilder.prepare());
      return paramFeed;
    }
    catch (SQLException paramFeed)
    {
      com.appyet.d.d.a(paramFeed);
    }
    return null;
  }
  
  public final List<FeedItem> a(Long paramLong)
  {
    try
    {
      Dao localDao = b.getFeedItemDao();
      QueryBuilder localQueryBuilder = b.getFeedDao().queryBuilder();
      localQueryBuilder.selectColumns(new String[] { "FeedId" });
      localQueryBuilder.where().eq("ModuleId", paramLong);
      paramLong = localDao.queryBuilder();
      Where localWhere = paramLong.where();
      localWhere.eq("ArticleStatus", FeedItem.ArticleStatusEnum.DownloadPending);
      localWhere.and().eq("IsDeleted", Boolean.valueOf(false));
      localWhere.and().in("FeedId", localQueryBuilder);
      paramLong = localDao.query(paramLong.prepare());
      return paramLong;
    }
    catch (SQLException paramLong)
    {
      com.appyet.d.d.a(paramLong);
    }
    return null;
  }
  
  public final List<FeedItem> a(Long paramLong, long paramLong1, long paramLong2)
  {
    Object localObject;
    try
    {
      localObject = b.getFeedDao();
      localQueryBuilder = ((Dao)localObject).queryBuilder();
      localQueryBuilder.where().eq("ModuleId", paramLong);
      localObject = ((Dao)localObject).query(localQueryBuilder.prepare());
      paramLong = new ArrayList();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        paramLong.add(((Feed)((Iterator)localObject).next()).getFeedId());
      }
      localObject = b.getFeedItemDao();
    }
    catch (SQLException paramLong)
    {
      com.appyet.d.d.a(paramLong);
      return null;
    }
    QueryBuilder localQueryBuilder = ((Dao)localObject).queryBuilder();
    Where localWhere = localQueryBuilder.where();
    localWhere.eq("IsDeleted", Boolean.valueOf(false));
    localWhere.and().in("FeedId", paramLong);
    localQueryBuilder.selectColumns(c);
    localQueryBuilder.limit(Long.valueOf(paramLong1));
    localQueryBuilder.offset(Long.valueOf(paramLong2));
    a(localQueryBuilder);
    a(localWhere);
    paramLong = ((Dao)localObject).query(localQueryBuilder.prepare());
    return paramLong;
  }
  
  public final List<FileCache> a(String paramString)
  {
    try
    {
      Dao localDao = b.getFileCacheDao();
      QueryBuilder localQueryBuilder = localDao.queryBuilder();
      localQueryBuilder.where().eq("CacheGuid", paramString);
      paramString = localDao.query(localQueryBuilder.prepare());
      return paramString;
    }
    catch (SQLException paramString)
    {
      com.appyet.d.d.a(paramString);
    }
    return null;
  }
  
  public final List<FeedItem> a(String paramString, long paramLong1, long paramLong2)
  {
    try
    {
      Dao localDao = b.getFeedItemDao();
      QueryBuilder localQueryBuilder = localDao.queryBuilder();
      Where localWhere = localQueryBuilder.where();
      localWhere.eq("IsDeleted", Boolean.valueOf(false));
      localWhere.and().like("Description", "%" + paramString + "%");
      localQueryBuilder.selectColumns(c);
      localQueryBuilder.limit(Long.valueOf(paramLong1));
      localQueryBuilder.offset(Long.valueOf(paramLong2));
      a(localQueryBuilder);
      a(localWhere);
      paramString = localDao.query(localQueryBuilder.prepare());
      return paramString;
    }
    catch (SQLException paramString)
    {
      com.appyet.d.d.a(paramString);
    }
    return null;
  }
  
  public final void a(long paramLong, String paramString)
  {
    try
    {
      TransactionManager.callInTransaction(b.getConnectionSource(), new u(this, paramLong, paramString));
      return;
    }
    catch (Exception paramString)
    {
      com.appyet.d.d.a(paramString);
    }
  }
  
  public final void a(long paramLong, boolean paramBoolean)
  {
    try
    {
      TransactionManager.callInTransaction(b.getConnectionSource(), new p(this, paramBoolean, paramLong));
      return;
    }
    catch (Exception localException)
    {
      localException = localException;
      com.appyet.d.d.a(localException);
      return;
    }
    finally {}
  }
  
  public final void a(FeedItem paramFeedItem, boolean paramBoolean)
  {
    try
    {
      TransactionManager.callInTransaction(b.getConnectionSource(), new o(this, paramBoolean, paramFeedItem));
      return;
    }
    catch (Exception paramFeedItem)
    {
      com.appyet.d.d.a(paramFeedItem);
    }
  }
  
  public final void a(Long paramLong, FeedItem.ArticleStatusEnum paramArticleStatusEnum)
  {
    try
    {
      TransactionManager.callInTransaction(b.getConnectionSource(), new j(this, paramArticleStatusEnum, paramLong));
      return;
    }
    catch (Exception paramLong)
    {
      paramLong = paramLong;
      com.appyet.d.d.a(paramLong);
      return;
    }
    finally {}
  }
  
  public final boolean a()
  {
    try
    {
      TransactionManager.callInTransaction(b.getConnectionSource(), new n(this));
      return true;
    }
    catch (Exception localException)
    {
      localException = localException;
      com.appyet.d.d.a(localException);
      return false;
    }
    finally {}
  }
  
  public final boolean a(FileCache paramFileCache)
  {
    if (paramFileCache == null) {
      return false;
    }
    try
    {
      TransactionManager.callInTransaction(b.getConnectionSource(), new z(this, paramFileCache));
      return true;
    }
    catch (Exception paramFileCache)
    {
      paramFileCache = paramFileCache;
      com.appyet.d.d.a(paramFileCache);
      return false;
    }
    finally {}
  }
  
  public final boolean a(Widget paramWidget)
  {
    try
    {
      TransactionManager.callInTransaction(b.getConnectionSource(), new v(this, paramWidget));
      return true;
    }
    catch (Exception paramWidget)
    {
      com.appyet.d.d.a(paramWidget);
    }
    return false;
  }
  
  public final boolean a(List<FeedItem> paramList)
  {
    try
    {
      TransactionManager.callInTransaction(b.getConnectionSource(), new t(this, paramList));
      return true;
    }
    catch (Exception paramList)
    {
      paramList = paramList;
      com.appyet.d.d.a(paramList);
      return false;
    }
    finally {}
  }
  
  public final long b(String paramString)
  {
    try
    {
      paramString = paramString.replace("[NOW]", String.valueOf(new Date().getTime()));
      Dao localDao = b.getFeedItemDao();
      QueryBuilder localQueryBuilder = localDao.queryBuilder();
      Where localWhere = localQueryBuilder.where();
      localWhere.raw(paramString, new ArgumentHolder[0]);
      localWhere.and().eq("IsRead", Boolean.valueOf(false));
      localQueryBuilder.setCountOf(true);
      localQueryBuilder.selectColumns(c);
      a(localQueryBuilder);
      a(localWhere);
      long l = localDao.countOf(localQueryBuilder.prepare());
      return l;
    }
    catch (SQLException paramString)
    {
      com.appyet.d.d.a(paramString);
    }
    return 0L;
  }
  
  public final List<FeedItem> b()
  {
    try
    {
      Object localObject = b.getFeedItemDao();
      QueryBuilder localQueryBuilder = ((Dao)localObject).queryBuilder();
      Where localWhere = localQueryBuilder.where();
      localWhere.eq("ArticleStatus", FeedItem.ArticleStatusEnum.DownloadPending);
      localWhere.and().eq("IsDeleted", Boolean.valueOf(false));
      localObject = ((Dao)localObject).query(localQueryBuilder.prepare());
      return (List<FeedItem>)localObject;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final List<Feed> b(long paramLong)
  {
    try
    {
      List localList = b.getFeedDao().queryForEq("ModuleId", Long.valueOf(paramLong));
      return localList;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final List<FeedItem> b(Long paramLong)
  {
    try
    {
      Dao localDao = b.getFeedItemDao();
      QueryBuilder localQueryBuilder = b.getFeedDao().queryBuilder();
      localQueryBuilder.selectColumns(new String[] { "FeedId" });
      localQueryBuilder.where().eq("ModuleId", paramLong);
      paramLong = localDao.queryBuilder();
      Where localWhere = paramLong.where();
      localWhere.eq("EnclosureStatus", FeedItem.EnclosureStatusEnum.DownloadPending);
      localWhere.and().eq("IsDeleted", Boolean.valueOf(false));
      localWhere.and().in("FeedId", localQueryBuilder);
      paramLong = localDao.query(paramLong.prepare());
      return paramLong;
    }
    catch (SQLException paramLong)
    {
      com.appyet.d.d.a(paramLong);
    }
    return null;
  }
  
  public final List<FeedItem> b(String paramString, long paramLong1, long paramLong2)
  {
    try
    {
      paramString = paramString.replace("[NOW]", String.valueOf(new Date().getTime()));
      Dao localDao = b.getFeedItemDao();
      QueryBuilder localQueryBuilder = localDao.queryBuilder();
      localQueryBuilder.limit(Long.valueOf(paramLong1));
      localQueryBuilder.offset(Long.valueOf(paramLong2));
      Where localWhere = localQueryBuilder.where();
      localWhere.raw(paramString, new ArgumentHolder[0]);
      localQueryBuilder.selectColumns(c);
      a(localQueryBuilder);
      a(localWhere);
      paramString = localDao.query(localQueryBuilder.prepare());
      return paramString;
    }
    catch (SQLException paramString)
    {
      com.appyet.d.d.a(paramString);
    }
    return null;
  }
  
  public final void b(FeedItem paramFeedItem)
  {
    try
    {
      TransactionManager.callInTransaction(b.getConnectionSource(), new m(this, paramFeedItem));
      return;
    }
    catch (Exception paramFeedItem)
    {
      com.appyet.d.d.a(paramFeedItem);
    }
  }
  
  public final boolean b(Feed paramFeed)
  {
    try
    {
      int i = b.getFeedDao().update(paramFeed);
      return i == 1;
    }
    catch (SQLException paramFeed)
    {
      com.appyet.d.d.a(paramFeed);
    }
    return false;
  }
  
  public final boolean b(FileCache paramFileCache)
  {
    try
    {
      int i = b.getFileCacheDao().update(paramFileCache);
      return i == 1;
    }
    catch (SQLException paramFileCache)
    {
      com.appyet.d.d.a(paramFileCache);
    }
    return false;
  }
  
  public final boolean b(Widget paramWidget)
  {
    try
    {
      Dao localDao = b.getWidgetDao();
      UpdateBuilder localUpdateBuilder = localDao.updateBuilder();
      localUpdateBuilder.where().eq("WidgetId", paramWidget.getWidgetId());
      localUpdateBuilder.updateColumnValue("Position", paramWidget.getPosition());
      int i = localDao.update(localUpdateBuilder.prepare());
      return i == 1;
    }
    catch (SQLException paramWidget)
    {
      com.appyet.d.d.a(paramWidget);
    }
    return false;
  }
  
  public final boolean b(List<FileCache> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return false;
    }
    try
    {
      TransactionManager.callInTransaction(b.getConnectionSource(), new aa(this, paramList));
      return true;
    }
    catch (Exception paramList)
    {
      paramList = paramList;
      com.appyet.d.d.a(paramList);
      return false;
    }
    finally {}
  }
  
  public final FeedItem c(long paramLong)
  {
    try
    {
      FeedItem localFeedItem = (FeedItem)b.getFeedItemDao().queryForId(Long.valueOf(paramLong));
      return localFeedItem;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final List<FeedItem> c()
  {
    try
    {
      Object localObject = b.getFeedItemDao();
      QueryBuilder localQueryBuilder = ((Dao)localObject).queryBuilder();
      Where localWhere = localQueryBuilder.where();
      localWhere.eq("EnclosureStatus", FeedItem.EnclosureStatusEnum.DownloadPending);
      localWhere.and().eq("IsDeleted", Boolean.valueOf(false));
      localObject = ((Dao)localObject).query(localQueryBuilder.prepare());
      return (List<FeedItem>)localObject;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final List<FeedItem> c(String paramString)
  {
    try
    {
      paramString = paramString.replace("[NOW]", String.valueOf(new Date().getTime()));
      Dao localDao = b.getFeedItemDao();
      QueryBuilder localQueryBuilder = localDao.queryBuilder();
      localQueryBuilder.limit(Long.valueOf(100L));
      Where localWhere = localQueryBuilder.where();
      localWhere.raw(paramString, new ArgumentHolder[0]);
      localWhere.and().eq("IsRead", Boolean.valueOf(false));
      localQueryBuilder.selectColumns(c);
      a(localQueryBuilder);
      paramString = localDao.query(localQueryBuilder.prepare());
      return paramString;
    }
    catch (SQLException paramString)
    {
      com.appyet.d.d.a(paramString);
    }
    return null;
  }
  
  public final boolean c(List<Long> paramList)
  {
    try
    {
      TransactionManager.callInTransaction(b.getConnectionSource(), new ab(this, paramList));
      return true;
    }
    catch (Exception paramList)
    {
      paramList = paramList;
      com.appyet.d.d.a(paramList);
      return false;
    }
    finally {}
  }
  
  public final List<Feed> d()
  {
    try
    {
      List localList = b.getFeedDao().queryForAll();
      return localList;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final List<FileCache> d(long paramLong)
  {
    try
    {
      List localList = b.getFileCacheDao().queryRaw("SELECT FileCache.FileCacheId, FileCache.CacheGuid, FileCache.DownloadAttempt, FileCache.DownloadStatus, FileCache.FileLink, FileCache.FileType, FileCache.FileCacheName FROM FileCache INNER JOIN FeedItem ON FileCache.CacheGuid = FeedItem.CacheGuid INNER JOIN Feed ON Feed.FeedId = FeedItem.FeedId WHERE FileCache.DownloadStatus = 'Pending' AND FeedItem.IsDeleted = 0 AND Feed.ModuleId = ?", new String[] { String.valueOf(paramLong) }).getResults();
      ArrayList localArrayList = new ArrayList();
      int i = 0;
      if (i < localList.size())
      {
        String[] arrayOfString = (String[])localList.get(i);
        FileCache localFileCache = new FileCache();
        localFileCache.setFileCacheId(Long.valueOf(Long.parseLong(arrayOfString[0])));
        localFileCache.setCacheGuid(arrayOfString[1]);
        if (arrayOfString[2] != null) {
          localFileCache.setDownloadAttempt(Integer.valueOf(Integer.parseInt(arrayOfString[2])));
        }
        for (;;)
        {
          localFileCache.setDownloadStatus(arrayOfString[3]);
          localFileCache.setFileLink(arrayOfString[4]);
          localFileCache.setFileType(arrayOfString[5]);
          localFileCache.setFileCacheName(arrayOfString[6]);
          localArrayList.add(localFileCache);
          i += 1;
          break;
          localFileCache.setDownloadAttempt(Integer.valueOf(0));
        }
      }
      return localArrayList;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
      return null;
    }
  }
  
  public final void d(List<FeedItem> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return;
    }
    try
    {
      TransactionManager.callInTransaction(b.getConnectionSource(), new g(this, paramList));
      return;
    }
    catch (Exception paramList)
    {
      com.appyet.d.d.a(paramList);
    }
  }
  
  public final List<FileCache> e()
  {
    try
    {
      List localList = b.getFileCacheDao().queryForAll();
      return localList;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final List<FeedItem> e(long paramLong)
  {
    try
    {
      Object localObject1 = b.getFeedItemDao();
      Object localObject2 = b.getFeedDao().queryBuilder();
      ((QueryBuilder)localObject2).selectColumns(new String[] { "FeedId" });
      ((QueryBuilder)localObject2).where().eq("ModuleId", Long.valueOf(paramLong));
      QueryBuilder localQueryBuilder = ((Dao)localObject1).queryBuilder();
      Where localWhere = localQueryBuilder.where();
      localWhere.eq("IsDeleted", Boolean.valueOf(false));
      localWhere.and().eq("IsRead", Boolean.valueOf(false));
      localWhere.and().in("FeedId", (QueryBuilder)localObject2);
      localQueryBuilder.selectColumns(c);
      a(localQueryBuilder);
      localQueryBuilder.limit(Long.valueOf(100L));
      localObject2 = localQueryBuilder.prepare();
      localQueryBuilder.orderByRaw("CreatedDate DESC");
      localObject1 = ((Dao)localObject1).query((PreparedQuery)localObject2);
      return (List<FeedItem>)localObject1;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final boolean e(List<Long> paramList)
  {
    try
    {
      TransactionManager.callInTransaction(b.getConnectionSource(), new w(this, paramList));
      return true;
    }
    catch (Exception paramList)
    {
      paramList = paramList;
      com.appyet.d.d.a(paramList);
      return false;
    }
    finally {}
  }
  
  public final List<FileCache> f()
  {
    try
    {
      Object localObject = b.getFileCacheDao();
      QueryBuilder localQueryBuilder = ((Dao)localObject).queryBuilder();
      localQueryBuilder.where().eq("DownloadStatus", FileCache.DownloadStatusEnum.Pending);
      localObject = ((Dao)localObject).query(localQueryBuilder.prepare());
      return (List<FileCache>)localObject;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final boolean f(long paramLong)
  {
    try
    {
      TransactionManager.callInTransaction(b.getConnectionSource(), new ac(this, paramLong));
      return true;
    }
    catch (Exception localException)
    {
      localException = localException;
      com.appyet.d.d.a(localException);
      return false;
    }
    finally {}
  }
  
  public final Module g(long paramLong)
  {
    try
    {
      Module localModule = (Module)b.getModuleDao().queryForId(Long.valueOf(paramLong));
      return localModule;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final List<Module> g()
  {
    try
    {
      Object localObject = b.getModuleDao();
      QueryBuilder localQueryBuilder = ((Dao)localObject).queryBuilder();
      localQueryBuilder.orderByRaw("SortOrder ASC, GroupName ASC, Name ASC");
      localObject = ((Dao)localObject).query(localQueryBuilder.prepare());
      return (List<Module>)localObject;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final Module h()
  {
    try
    {
      Object localObject = b.getModuleDao();
      QueryBuilder localQueryBuilder = ((Dao)localObject).queryBuilder();
      localQueryBuilder.where().eq("Type", "Downloads");
      localObject = (Module)((Dao)localObject).queryForFirst(localQueryBuilder.prepare());
      return (Module)localObject;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final Web h(long paramLong)
  {
    try
    {
      Object localObject = b.getWebDao();
      QueryBuilder localQueryBuilder = ((Dao)localObject).queryBuilder();
      localQueryBuilder.where().eq("ModuleId", Long.valueOf(paramLong));
      localObject = (Web)((Dao)localObject).queryForFirst(localQueryBuilder.prepare());
      return (Web)localObject;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final Forum i(long paramLong)
  {
    try
    {
      Object localObject = b.getForumDao();
      QueryBuilder localQueryBuilder = ((Dao)localObject).queryBuilder();
      localQueryBuilder.where().eq("ModuleId", Long.valueOf(paramLong));
      localObject = (Forum)((Dao)localObject).queryForFirst(localQueryBuilder.prepare());
      return (Forum)localObject;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final Module i()
  {
    try
    {
      Object localObject = b.getModuleDao();
      QueryBuilder localQueryBuilder = ((Dao)localObject).queryBuilder();
      localQueryBuilder.where().eq("Type", "Customize");
      localObject = (Module)((Dao)localObject).queryForFirst(localQueryBuilder.prepare());
      return (Module)localObject;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final Widget j(long paramLong)
  {
    try
    {
      Object localObject = b.getWidgetDao();
      QueryBuilder localQueryBuilder = ((Dao)localObject).queryBuilder();
      localQueryBuilder.where().eq("WidgetId", Long.valueOf(paramLong));
      localObject = (Widget)((Dao)localObject).queryForFirst(localQueryBuilder.prepare());
      return (Widget)localObject;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final List<Module> j()
  {
    try
    {
      Object localObject = b.getModuleDao();
      QueryBuilder localQueryBuilder = ((Dao)localObject).queryBuilder();
      localQueryBuilder.orderByRaw("SortOrder ASC, GroupName ASC, Name ASC");
      localQueryBuilder.where().eq("IsHidden", Boolean.valueOf(false));
      localObject = ((Dao)localObject).query(localQueryBuilder.prepare());
      return (List<Module>)localObject;
    }
    catch (SQLException localSQLException)
    {
      com.appyet.d.d.a(localSQLException);
    }
    return null;
  }
  
  public final boolean k()
  {
    try
    {
      TransactionManager.callInTransaction(b.getConnectionSource(), new x(this));
      return true;
    }
    catch (Exception localException)
    {
      localException = localException;
      com.appyet.d.d.a(localException);
      return false;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */