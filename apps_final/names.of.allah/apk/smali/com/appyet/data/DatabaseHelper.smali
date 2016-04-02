.class public Lcom/appyet/data/DatabaseHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "data2.db"

.field private static final DATABASE_VERSION:I = 0x7

.field private static final OPTIMIZATION_SQL:Ljava/lang/String; = "PRAGMA count_changes=OFF; VACUUM;"


# instance fields
.field private mFeedDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/appyet/data/Feed;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFeedItemDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/appyet/data/FeedItem;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFileCacheDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/appyet/data/FileCache;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mForumDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/appyet/data/Forum;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mModuleDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/appyet/data/Module;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mWebDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/appyet/data/Web;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/appyet/data/Widget;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v2, "data2.db"

    const/4 v3, 0x0

    const/4 v4, 0x7

    const v5, 0x7f060001

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;II)V

    return-void
.end method

.method private upgradeDB(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    const-string v0, "ALTER TABLE Module ADD COLUMN \'Layout\' VARCHAR;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    const-string v0, "ALTER TABLE Module ADD COLUMN \'IsHidden\' SMALLINT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x4

    if-ge p2, v0, :cond_2

    const-string v0, "CREATE TABLE Widget (\'WidgetId\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'ModuleId\' INTEGER, \'Position\' INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x5

    if-ge p2, v0, :cond_3

    const-string v0, "ALTER TABLE Feed ADD COLUMN \'ArticleNumberLimit\' INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x6

    if-ge p2, v0, :cond_4

    const-string v0, "CREATE TABLE Forum (ForumId INTEGER PRIMARY KEY AUTOINCREMENT , ModuleId INTEGER , Guid VARCHAR, Type VARCHAR , Link VARCHAR);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x7

    if-ge p2, v0, :cond_5

    const-string v0, "ALTER TABLE FeedItem ADD COLUMN \'CommentsCount\' INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE FeedItem ADD COLUMN \'CommentsWebLink\' INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public getFeedDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/appyet/data/Feed;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mFeedDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/appyet/data/Feed;

    invoke-virtual {p0, v0}, Lcom/appyet/data/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mFeedDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mFeedDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getFeedItemDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/appyet/data/FeedItem;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mFeedItemDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/appyet/data/FeedItem;

    invoke-virtual {p0, v0}, Lcom/appyet/data/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mFeedItemDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mFeedItemDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getFileCacheDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/appyet/data/FileCache;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mFileCacheDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/appyet/data/FileCache;

    invoke-virtual {p0, v0}, Lcom/appyet/data/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mFileCacheDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mFileCacheDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getForumDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/appyet/data/Forum;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mForumDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/appyet/data/Forum;

    invoke-virtual {p0, v0}, Lcom/appyet/data/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mForumDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mForumDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getModuleDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/appyet/data/Module;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mModuleDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/appyet/data/Module;

    invoke-virtual {p0, v0}, Lcom/appyet/data/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mModuleDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mModuleDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getWebDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/appyet/data/Web;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mWebDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/appyet/data/Web;

    invoke-virtual {p0, v0}, Lcom/appyet/data/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mWebDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mWebDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getWidgetDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/appyet/data/Widget;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mWidgetDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/appyet/data/Widget;

    invoke-virtual {p0, v0}, Lcom/appyet/data/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mWidgetDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/appyet/data/DatabaseHelper;->mWidgetDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 1

    const-string v0, "CREATE TABLE Module (ModuleId INTEGER PRIMARY KEY AUTOINCREMENT , Guid VARCHAR, Type VARCHAR , Name VARCHAR , GroupName VARCHAR , StatusLabel VARCHAR , Icon VARCHAR , SortOrder INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE Feed (FeedId INTEGER PRIMARY KEY AUTOINCREMENT , Guid VARCHAR, ModuleId INTEGER , Encoding VARCHAR , FavIcon VARCHAR , ImageLink VARCHAR, FeedType VARCHAR , Link VARCHAR NOT NULL , PubDate BIGINT , Title VARCHAR , TotalCount INTEGER DEFAULT 0 , UnreadCount INTEGER DEFAULT 0 , WebLink VARCHAR, StreamHash VARCHAR, SyncDate BIGINT, IsAutoMobilize SMALLINT, MobilizeProvider VARCHAR, IsDownloadNewEnclosure SMALLINT, CacheGuid VARCHAR, HTTPLastModified VARCHAR, HTTPETag VARCHAR);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE FeedItem (FeedItemId INTEGER PRIMARY KEY AUTOINCREMENT , FeedId INTEGER , Author VARCHAR , CommentsLink VARCHAR , Description VARCHAR , EnclosureCurrentPosition INTEGER , EnclosureDuration INTEGER , EnclosureLength INTEGER , EnclosureLink VARCHAR , EnclosureType VARCHAR , Title VARCHAR , Thumbnail VARCHAR , Snippet VARCHAR , PubDate BIGINT NOT NULL , UniqueKey VARCHAR , Link VARCHAR , IsStar SMALLINT , IsRead SMALLINT , IsDeleted SMALLINT , IsQueued SMALLINT, QueueOrder INTEGER, ArticleStatus SMALLINT, EnclosureStatus SMALLINT, Article VARCHAR, CacheGuid VARCHAR, CreatedDate INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE Web (WebId INTEGER PRIMARY KEY AUTOINCREMENT , ModuleId INTEGER , Guid VARCHAR, Type VARCHAR , Data VARCHAR);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE FileCache(FileCacheId INTEGER PRIMARY KEY AUTOINCREMENT , DownloadAttempt INTEGER DEFAULT 0 NOT NULL , DownloadStatus VARCHAR NOT NULL , FileCacheName VARCHAR NOT NULL , FileLink VARCHAR NOT NULL , FileType VARCHAR NOT NULL, CacheGuid VARCHAR);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IDX_FeedItem_FeedId ON FeedItem(FeedId);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/appyet/data/DatabaseHelper;->upgradeDB(Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    invoke-super {p0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "PRAGMA count_changes=OFF; VACUUM;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/appyet/data/DatabaseHelper;->upgradeDB(Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void
.end method
