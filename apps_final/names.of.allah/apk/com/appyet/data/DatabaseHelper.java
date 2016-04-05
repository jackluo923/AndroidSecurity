package com.appyet.data;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.support.ConnectionSource;
import java.util.Locale;

public class DatabaseHelper
  extends OrmLiteSqliteOpenHelper
{
  public static final String DATABASE_NAME = "data2.db";
  private static final int DATABASE_VERSION = 7;
  private static final String OPTIMIZATION_SQL = "PRAGMA count_changes=OFF; VACUUM;";
  private Dao<Feed, Long> mFeedDao;
  private Dao<FeedItem, Long> mFeedItemDao;
  private Dao<FileCache, Long> mFileCacheDao;
  private Dao<Forum, Long> mForumDao;
  private Dao<Module, Long> mModuleDao;
  private Dao<Web, Long> mWebDao;
  private Dao<Widget, Long> mWidgetDao;
  
  public DatabaseHelper(Context paramContext)
  {
    super(paramContext, "data2.db", null, 7, 2131099649);
  }
  
  private void upgradeDB(SQLiteDatabase paramSQLiteDatabase, int paramInt)
  {
    if (paramInt < 2) {
      paramSQLiteDatabase.execSQL("ALTER TABLE Module ADD COLUMN 'Layout' VARCHAR;");
    }
    if (paramInt < 3) {
      paramSQLiteDatabase.execSQL("ALTER TABLE Module ADD COLUMN 'IsHidden' SMALLINT;");
    }
    if (paramInt < 4) {
      paramSQLiteDatabase.execSQL("CREATE TABLE Widget ('WidgetId' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 'ModuleId' INTEGER, 'Position' INTEGER);");
    }
    if (paramInt < 5) {
      paramSQLiteDatabase.execSQL("ALTER TABLE Feed ADD COLUMN 'ArticleNumberLimit' INTEGER;");
    }
    if (paramInt < 6) {
      paramSQLiteDatabase.execSQL("CREATE TABLE Forum (ForumId INTEGER PRIMARY KEY AUTOINCREMENT , ModuleId INTEGER , Guid VARCHAR, Type VARCHAR , Link VARCHAR);");
    }
    if (paramInt < 7)
    {
      paramSQLiteDatabase.execSQL("ALTER TABLE FeedItem ADD COLUMN 'CommentsCount' INTEGER;");
      paramSQLiteDatabase.execSQL("ALTER TABLE FeedItem ADD COLUMN 'CommentsWebLink' INTEGER;");
    }
  }
  
  public Dao<Feed, Long> getFeedDao()
  {
    if (mFeedDao == null) {
      mFeedDao = getDao(Feed.class);
    }
    return mFeedDao;
  }
  
  public Dao<FeedItem, Long> getFeedItemDao()
  {
    if (mFeedItemDao == null) {
      mFeedItemDao = getDao(FeedItem.class);
    }
    return mFeedItemDao;
  }
  
  public Dao<FileCache, Long> getFileCacheDao()
  {
    if (mFileCacheDao == null) {
      mFileCacheDao = getDao(FileCache.class);
    }
    return mFileCacheDao;
  }
  
  public Dao<Forum, Long> getForumDao()
  {
    if (mForumDao == null) {
      mForumDao = getDao(Forum.class);
    }
    return mForumDao;
  }
  
  public Dao<Module, Long> getModuleDao()
  {
    if (mModuleDao == null) {
      mModuleDao = getDao(Module.class);
    }
    return mModuleDao;
  }
  
  public Dao<Web, Long> getWebDao()
  {
    if (mWebDao == null) {
      mWebDao = getDao(Web.class);
    }
    return mWebDao;
  }
  
  public Dao<Widget, Long> getWidgetDao()
  {
    if (mWidgetDao == null) {
      mWidgetDao = getDao(Widget.class);
    }
    return mWidgetDao;
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE Module (ModuleId INTEGER PRIMARY KEY AUTOINCREMENT , Guid VARCHAR, Type VARCHAR , Name VARCHAR , GroupName VARCHAR , StatusLabel VARCHAR , Icon VARCHAR , SortOrder INTEGER);");
    paramSQLiteDatabase.execSQL("CREATE TABLE Feed (FeedId INTEGER PRIMARY KEY AUTOINCREMENT , Guid VARCHAR, ModuleId INTEGER , Encoding VARCHAR , FavIcon VARCHAR , ImageLink VARCHAR, FeedType VARCHAR , Link VARCHAR NOT NULL , PubDate BIGINT , Title VARCHAR , TotalCount INTEGER DEFAULT 0 , UnreadCount INTEGER DEFAULT 0 , WebLink VARCHAR, StreamHash VARCHAR, SyncDate BIGINT, IsAutoMobilize SMALLINT, MobilizeProvider VARCHAR, IsDownloadNewEnclosure SMALLINT, CacheGuid VARCHAR, HTTPLastModified VARCHAR, HTTPETag VARCHAR);");
    paramSQLiteDatabase.execSQL("CREATE TABLE FeedItem (FeedItemId INTEGER PRIMARY KEY AUTOINCREMENT , FeedId INTEGER , Author VARCHAR , CommentsLink VARCHAR , Description VARCHAR , EnclosureCurrentPosition INTEGER , EnclosureDuration INTEGER , EnclosureLength INTEGER , EnclosureLink VARCHAR , EnclosureType VARCHAR , Title VARCHAR , Thumbnail VARCHAR , Snippet VARCHAR , PubDate BIGINT NOT NULL , UniqueKey VARCHAR , Link VARCHAR , IsStar SMALLINT , IsRead SMALLINT , IsDeleted SMALLINT , IsQueued SMALLINT, QueueOrder INTEGER, ArticleStatus SMALLINT, EnclosureStatus SMALLINT, Article VARCHAR, CacheGuid VARCHAR, CreatedDate INTEGER);");
    paramSQLiteDatabase.execSQL("CREATE TABLE Web (WebId INTEGER PRIMARY KEY AUTOINCREMENT , ModuleId INTEGER , Guid VARCHAR, Type VARCHAR , Data VARCHAR);");
    paramSQLiteDatabase.execSQL("CREATE TABLE FileCache(FileCacheId INTEGER PRIMARY KEY AUTOINCREMENT , DownloadAttempt INTEGER DEFAULT 0 NOT NULL , DownloadStatus VARCHAR NOT NULL , FileCacheName VARCHAR NOT NULL , FileLink VARCHAR NOT NULL , FileType VARCHAR NOT NULL, CacheGuid VARCHAR);");
    paramSQLiteDatabase.execSQL("CREATE INDEX IDX_FeedItem_FeedId ON FeedItem(FeedId);");
    upgradeDB(paramSQLiteDatabase, 0);
  }
  
  public void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.setLocale(Locale.getDefault());
    super.onOpen(paramSQLiteDatabase);
    paramSQLiteDatabase.execSQL("PRAGMA count_changes=OFF; VACUUM;");
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, ConnectionSource paramConnectionSource, int paramInt1, int paramInt2)
  {
    upgradeDB(paramSQLiteDatabase, paramInt1);
  }
}

/* Location:
 * Qualified Name:     com.appyet.data.DatabaseHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */