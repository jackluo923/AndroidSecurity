.class public final Lcom/appyet/manager/bq;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private c:Lcom/appyet/context/ApplicationContext;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Ljava/util/concurrent/ThreadPoolExecutor;

.field private k:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private m:Ljava/util/concurrent/atomic/AtomicInteger;

.field private n:Landroid/content/Intent;

.field private o:Lcom/appyet/manager/ProgressNotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "fe4232*fed"

    sput-object v0, Lcom/appyet/manager/bq;->a:Ljava/lang/String;

    new-instance v0, Lcom/appyet/manager/br;

    invoke-direct {v0}, Lcom/appyet/manager/br;-><init>()V

    sput-object v0, Lcom/appyet/manager/bq;->b:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Lcom/appyet/context/ApplicationContext;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appyet/manager/bq;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/appyet/manager/bq;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/appyet/manager/bq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/appyet/manager/bq;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    return-void
.end method

.method private static a(Ljava/util/List;J)Lcom/appyet/data/Feed;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/appyet/data/Feed;",
            ">;J)",
            "Lcom/appyet/data/Feed;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/Feed;

    invoke-virtual {v0}, Lcom/appyet/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/appyet/manager/bq;Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/appyet/manager/bq;->b(Ljava/lang/Long;Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/appyet/data/FeedItem;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v4, Lcom/appyet/data/FileCache;

    invoke-direct {v4}, Lcom/appyet/data/FileCache;-><init>()V

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appyet/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/appyet/data/FileCache;->setDownloadAttempt(Ljava/lang/Integer;)V

    sget-object v5, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Pending:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    invoke-virtual {v4, v5}, Lcom/appyet/data/FileCache;->setDownloadStatus(Lcom/appyet/data/FileCache$DownloadStatusEnum;)V

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/appyet/data/FileCache;->setFileLink(Ljava/lang/String;)V

    sget-object v5, Lcom/appyet/data/FileCache$FileTypeEnum;->Image:Lcom/appyet/data/FileCache$FileTypeEnum;

    invoke-virtual {v4, v5}, Lcom/appyet/data/FileCache;->setFileType(Lcom/appyet/data/FileCache$FileTypeEnum;)V

    invoke-virtual {v4, v1}, Lcom/appyet/data/FileCache;->setFileCacheName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getCacheGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/appyet/data/FileCache;->setCacheGuid(Ljava/lang/String;)V

    sget-object v1, Lcom/appyet/data/FileCache$FileTypeEnum;->Thumbnail:Lcom/appyet/data/FileCache$FileTypeEnum;

    invoke-virtual {v4, v1}, Lcom/appyet/data/FileCache;->setFileType(Lcom/appyet/data/FileCache$FileTypeEnum;)V

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v5, "://i.ytimg.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "://i1.ytimg.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "://i2.ytimg.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "://i3.ytimg.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "://i4.ytimg.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "://img.youtube.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "/3.jpg"

    const-string v6, "/0.jpg"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/appyet/data/FileCache;->setFileLink(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/appyet/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/appyet/data/FileCache;->setFileCacheName(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v1}, Lcom/appyet/data/FeedItem;->setThumbnail(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v1, v4}, Lcom/appyet/manager/d;->a(Lcom/appyet/data/FileCache;)Z

    :cond_4
    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appyet/d/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7

    :cond_6
    :goto_1
    return-void

    :cond_7
    :try_start_0
    invoke-static {v1}, Lcom/appyet/f/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "http://"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "https://"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "//"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appyet/f/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-static {v1}, Lcom/appyet/manager/bq;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    if-eqz v5, :cond_5

    :try_start_1
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v5, Lcom/appyet/data/FileCache;

    invoke-direct {v5}, Lcom/appyet/data/FileCache;-><init>()V

    invoke-static {v1}, Lcom/appyet/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/appyet/data/FileCache;->setDownloadAttempt(Ljava/lang/Integer;)V

    sget-object v7, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Pending:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    invoke-virtual {v5, v7}, Lcom/appyet/data/FileCache;->setDownloadStatus(Lcom/appyet/data/FileCache$DownloadStatusEnum;)V

    invoke-virtual {v5, v1}, Lcom/appyet/data/FileCache;->setFileLink(Ljava/lang/String;)V

    sget-object v7, Lcom/appyet/data/FileCache$FileTypeEnum;->Image:Lcom/appyet/data/FileCache$FileTypeEnum;

    invoke-virtual {v5, v7}, Lcom/appyet/data/FileCache;->setFileType(Lcom/appyet/data/FileCache$FileTypeEnum;)V

    invoke-virtual {v5, v6}, Lcom/appyet/data/FileCache;->setFileCacheName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getCacheGuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/appyet/data/FileCache;->setCacheGuid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_b

    if-eqz v1, :cond_b

    const-string v6, "://i.ytimg.com"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "://i1.ytimg.com"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "://i2.ytimg.com"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "://i3.ytimg.com"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "://i4.ytimg.com"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "://img.youtube.com"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    const-string v6, "/default.jpg"

    const-string v7, "/0.jpg"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/appyet/data/FileCache;->setFileLink(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/appyet/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/appyet/data/FileCache;->setFileCacheName(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0, v1}, Lcom/appyet/data/FeedItem;->setThumbnail(Ljava/lang/String;)V

    sget-object v1, Lcom/appyet/data/FileCache$FileTypeEnum;->Thumbnail:Lcom/appyet/data/FileCache$FileTypeEnum;

    invoke-virtual {v5, v1}, Lcom/appyet/data/FileCache;->setFileType(Lcom/appyet/data/FileCache$FileTypeEnum;)V

    :cond_b
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/appyet/manager/bq;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/appyet/manager/bq;->h:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_c
    :try_start_3
    const-string v5, "//"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0, v2}, Lcom/appyet/manager/d;->b(Ljava/util/List;)Z

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_6

    :try_start_4
    iget-object v1, v0, Lcom/appyet/manager/d;->b:Lcom/appyet/data/DatabaseHelper;

    invoke-virtual {v1}, Lcom/appyet/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    new-instance v2, Lcom/appyet/manager/s;

    invoke-direct {v2, v0, p1}, Lcom/appyet/manager/s;-><init>(Lcom/appyet/manager/d;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private a(Lcom/appyet/data/Feed;)Z
    .locals 17

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/appyet/manager/d;->a(J)Lcom/appyet/data/Feed;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/appyet/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getStreamHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/appyet/data/Feed;->setStreamHash(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getPubDateString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getPubDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/appyet/data/Feed;->setPubDateString(Ljava/lang/String;)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getFeedType()Lcom/appyet/data/Feed$FeedTypeEnum;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getFeedType()Lcom/appyet/data/Feed$FeedTypeEnum;

    move-result-object v2

    invoke-virtual {v5}, Lcom/appyet/data/Feed;->getFeedType()Lcom/appyet/data/Feed$FeedTypeEnum;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/appyet/data/Feed$FeedTypeEnum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getFeedType()Lcom/appyet/data/Feed$FeedTypeEnum;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/appyet/data/Feed;->setFeedType(Lcom/appyet/data/Feed$FeedTypeEnum;)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/appyet/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/appyet/data/Feed;->setEncoding(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v5}, Lcom/appyet/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v5}, Lcom/appyet/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/appyet/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/appyet/data/Feed;->setTitle(Ljava/lang/String;)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getWebLink()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getWebLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/appyet/data/Feed;->getWebLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getWebLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/appyet/data/Feed;->setWebLink(Ljava/lang/String;)V

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getImageLink()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getWebLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/appyet/data/Feed;->getWebLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getImageLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/appyet/data/Feed;->setImageLink(Ljava/lang/String;)V

    new-instance v2, Lcom/appyet/data/FileCache;

    invoke-direct {v2}, Lcom/appyet/data/FileCache;-><init>()V

    invoke-virtual {v5}, Lcom/appyet/data/Feed;->getCacheGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/appyet/data/FileCache;->setCacheGuid(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/appyet/data/FileCache;->setDownloadAttempt(Ljava/lang/Integer;)V

    sget-object v4, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Pending:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    invoke-virtual {v2, v4}, Lcom/appyet/data/FileCache;->setDownloadStatus(Lcom/appyet/data/FileCache$DownloadStatusEnum;)V

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getImageLinkMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/appyet/data/FileCache;->setFileCacheName(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getImageLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/appyet/data/FileCache;->setFileLink(Ljava/lang/String;)V

    sget-object v4, Lcom/appyet/data/FileCache$FileTypeEnum;->Image:Lcom/appyet/data/FileCache$FileTypeEnum;

    invoke-virtual {v2, v4}, Lcom/appyet/data/FileCache;->setFileType(Lcom/appyet/data/FileCache$FileTypeEnum;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v4, v2}, Lcom/appyet/manager/d;->a(Lcom/appyet/data/FileCache;)Z

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getHTTPETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/appyet/data/Feed;->setHTTPETag(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getHTTPLastModified()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/appyet/data/Feed;->setHTTPLastModified(Ljava/lang/String;)V

    if-eqz v1, :cond_9

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v1}, Lcom/appyet/data/Feed;->setSyncDate(Ljava/util/Date;)V

    invoke-virtual {v5}, Lcom/appyet/data/Feed;->getPubDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v1}, Lcom/appyet/data/Feed;->setPubDate(Ljava/util/Date;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v1, v5}, Lcom/appyet/manager/d;->b(Lcom/appyet/data/Feed;)Z

    :cond_9
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/appyet/manager/d;->a(Lcom/appyet/data/Feed;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getUniqueKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_a
    :try_start_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v2}, Lcom/appyet/data/Feed;->setPubDate(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_b
    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getFeedItems()Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getUniqueKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appyet/data/FeedItem;

    if-nez v2, :cond_d

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->buildUniqueKeyLegacy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appyet/data/FeedItem;

    :cond_d
    if-nez v2, :cond_28

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getPubDateString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getPubDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setPubDateString(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    :cond_e
    :try_start_3
    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    if-nez v2, :cond_18

    :cond_f
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "video/quicktime"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "video"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "audio"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "image"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "<div><img src=\'"

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "\'/></div>"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setDescription(Ljava/lang/String;)V

    :cond_10
    :goto_5
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setEnclosureLink(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setEnclosureType(Ljava/lang/String;)V

    :cond_11
    :goto_6
    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xa

    const/16 v12, 0x20

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const-string v11, "(\\<!--.*?-->|\\<style.*?</style>|\\<.*?>)"

    const-string v12, " "

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x12c

    if-le v11, v12, :cond_12

    const/4 v11, 0x0

    const/16 v12, 0x12c

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_12
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setSnippet(Ljava/lang/String;)V

    :goto_7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "-"

    const-string v12, ""

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setCacheGuid(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/appyet/data/Feed;->getIsAutoMobilize()Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object v2, Lcom/appyet/data/FeedItem$ArticleStatusEnum;->DownloadPending:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setArticleStatus(Lcom/appyet/data/FeedItem$ArticleStatusEnum;)V

    :cond_13
    invoke-virtual {v5}, Lcom/appyet/data/Feed;->getIsDownloadNewEnclosure()Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lcom/appyet/data/FeedItem$EnclosureStatusEnum;->DownloadPending:Lcom/appyet/data/FeedItem$EnclosureStatusEnum;

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setEnclosureStatus(Lcom/appyet/data/FeedItem$EnclosureStatusEnum;)V

    :cond_14
    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v11

    const-string v12, "(?s)<style.*?</style>"

    const-string v13, " "

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "<img[^>]+src\\s*=\\s*[\'\"]([^\'\"]+)[\'\"][^>]*>"

    const-string v13, "<img src=\"$1\" />"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "<img src=\"http://feeds.feedburner.com"

    const-string v12, "<rm src=\""

    invoke-static {v2, v11, v12}, Lcom/appyet/d/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "<a href=\"http://feedads.g.doubleclick.net"

    const-string v12, "<rm href=\""

    invoke-static {v2, v11, v12}, Lcom/appyet/d/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "<img src=\"http://feedads.g.doubleclick.net"

    const-string v12, "<rm src=\""

    invoke-static {v2, v11, v12}, Lcom/appyet/d/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "<img src=\"http://feedads.g.doubleclick.net"

    const-string v12, "<rm src=\""

    invoke-static {v2, v11, v12}, Lcom/appyet/d/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "<img src=\"http://da.feedsportal.com"

    const-string v12, "<rm src=\""

    invoke-static {v2, v11, v12}, Lcom/appyet/d/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "<img src=\"http://res3.feedsportal.com"

    const-string v12, "<rm src=\""

    invoke-static {v2, v11, v12}, Lcom/appyet/d/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "<img src=\"http://pi.feedsportal.com"

    const-string v12, "<rm src=\""

    invoke-static {v2, v11, v12}, Lcom/appyet/d/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setDescription(Ljava/lang/String;)V

    :cond_15
    sget-object v2, Lcom/appyet/f/p;->e:Lcom/appyet/f/p;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/appyet/f/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_16

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setPubDate(Ljava/util/Date;)V

    :cond_16
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setCreatedDate(Ljava/util/Date;)V

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "\t"

    const-string v12, ""

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "\n"

    const-string v12, ""

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setTitle(Ljava/lang/String;)V

    :cond_17
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    :cond_18
    :try_start_5
    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v11, "mp3"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_19

    const-string v11, "ogg"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_19

    const-string v11, "wav"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_19

    const-string v11, "m4a"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_19

    const-string v11, "audio"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1d

    :cond_19
    const-string v2, "audio/mpeg"

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setEnclosureType(Ljava/lang/String;)V

    :cond_1a
    :goto_8
    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v11

    const-string v2, "."

    invoke-virtual {v11, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v2, 0x0

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1b

    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    const-string v11, "mp3"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1c

    const-string v11, "ogg"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1c

    const-string v11, "wav"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1c

    const-string v11, "m4a"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1c

    const-string v11, "audio"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_21

    :cond_1c
    const-string v2, "audio/mpeg"

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setEnclosureType(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    :catch_2
    move-exception v2

    :try_start_6
    invoke-static {v2}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_4

    :cond_1d
    :try_start_7
    const-string v11, "avi"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1e

    const-string v11, "mkv"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1e

    const-string v11, "mp4"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1e

    const-string v11, "3gp"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1e

    const-string v11, "video"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1f

    :cond_1e
    const-string v2, "video/avi"

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setEnclosureType(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1f
    const-string v11, "jpg"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_20

    const-string v11, "jpeg"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_20

    const-string v11, "gif"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_20

    const-string v11, "png"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_20
    const-string v2, "image/png"

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setEnclosureType(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_21
    const-string v11, "avi"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_22

    const-string v11, "mkv"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_22

    const-string v11, "mp4"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_22

    const-string v11, "3gp"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_22

    const-string v11, "video"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_23

    :cond_22
    const-string v2, "video/avi"

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setEnclosureType(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_23
    const-string v11, "jpg"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_24

    const-string v11, "jpeg"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_24

    const-string v11, "gif"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_24

    const-string v11, "png"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_24
    const-string v2, "image/png"

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setEnclosureType(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    :cond_25
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "<img src=\'"

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "\'/>"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setDescription(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_26
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setEnclosureLink(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setEnclosureType(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_27
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/appyet/data/FeedItem;->setSnippet(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_28
    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->buildUniqueKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/appyet/data/FeedItem;->setFeedItemId(Ljava/lang/Long;)V

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getCommentsCount()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getCommentsCount()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_c

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getCommentsCount()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/appyet/data/FeedItem;->getCommentsCount()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getCommentsCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/appyet/data/FeedItem;->setCommentsCount(Ljava/lang/String;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_29
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2a

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v1, v7}, Lcom/appyet/manager/d;->a(Ljava/util/List;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/appyet/manager/bq;->a(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appyet/manager/bq;->d:I

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appyet/manager/bq;->d:I

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/appyet/manager/bq;->e:I

    :cond_2a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2b

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-interface {v9}, Ljava/util/List;->size()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1

    move-result v2

    if-eqz v2, :cond_2b

    :try_start_9
    iget-object v2, v1, Lcom/appyet/manager/d;->b:Lcom/appyet/data/DatabaseHelper;

    invoke-virtual {v2}, Lcom/appyet/data/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v2

    new-instance v4, Lcom/appyet/manager/r;

    invoke-direct {v4, v1, v9}, Lcom/appyet/manager/r;-><init>(Lcom/appyet/manager/d;Ljava/util/List;)V

    invoke-static {v2, v4}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_1

    :cond_2b
    :goto_9
    :try_start_a
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_2c

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_9

    :cond_2d
    const/4 v2, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2e
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/data/FeedItem;

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getIsStar()Z

    move-result v11

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getIsDeleted()Z

    move-result v12

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getIsRead()Z

    move-result v13

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureStatus()Lcom/appyet/data/FeedItem$EnclosureStatusEnum;

    move-result-object v4

    sget-object v14, Lcom/appyet/data/FeedItem$EnclosureStatusEnum;->DownloadCompleted:Lcom/appyet/data/FeedItem$EnclosureStatusEnum;

    if-ne v4, v14, :cond_31

    const/4 v4, 0x1

    :goto_c
    if-nez v12, :cond_30

    if-nez v11, :cond_2e

    invoke-virtual {v5}, Lcom/appyet/data/Feed;->getArticleNumberLimit()J

    move-result-wide v11

    const-wide/16 v14, 0x0

    cmp-long v11, v11, v14

    if-nez v11, :cond_2f

    if-eqz v13, :cond_2e

    :cond_2f
    if-nez v4, :cond_2e

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getIsQueued()Z

    move-result v1

    if-nez v1, :cond_2e

    :cond_30
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v5}, Lcom/appyet/data/Feed;->getArticleNumberLimit()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v1, v11, v13

    if-lez v1, :cond_32

    add-int/lit8 v1, v2, 0x1

    int-to-long v11, v1

    invoke-virtual {v5}, Lcom/appyet/data/Feed;->getArticleNumberLimit()J

    move-result-wide v13

    invoke-virtual {v7}, Ljava/util/Hashtable;->size()I

    move-result v2

    int-to-long v15, v2

    sub-long/2addr v13, v15

    cmp-long v2, v11, v13

    if-lez v2, :cond_33

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v1

    goto :goto_b

    :cond_31
    const/4 v4, 0x0

    goto :goto_c

    :cond_32
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    :cond_33
    move v2, v1

    goto :goto_b

    :cond_34
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_35

    const/4 v1, 0x1

    :goto_d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/appyet/manager/bq;->f:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v2, v8}, Lcom/appyet/manager/d;->c(Ljava/util/List;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual/range {p1 .. p1}, Lcom/appyet/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/appyet/manager/d;->f(J)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    :cond_35
    move v1, v3

    goto :goto_d
.end method

.method private a(Lcom/appyet/data/FeedItem;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/appyet/a/d;

    invoke-direct {v2}, Lcom/appyet/a/d;-><init>()V

    iput-object v0, v2, Lcom/appyet/a/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    invoke-virtual {v0, v2}, Lcom/appyet/manager/bl;->a(Lcom/appyet/a/d;)Lcom/appyet/a/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    :goto_1
    return v3

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v1}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/appyet/manager/bl;->b(Lcom/appyet/a/f;)V

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/appyet/manager/bq;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/manager/bq;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/appyet/manager/bq;Lcom/appyet/data/Feed;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/appyet/manager/bq;->a(Lcom/appyet/data/Feed;)Z

    move-result v0

    return v0
.end method

.method protected static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "feeds.feedburner.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "doubleclick.net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feedsportal.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "api.tweetmeme.com/imagebutton.gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "share-buttons/fb.jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "share-buttons/diggme.png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "share-buttons/stumbleupon.png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wordpress.com/1.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wordpress.com/b.gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "blogger.googleusercontent.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feeds.feedburner.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "www.assoc-amazon.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "doubleclick.net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "statcounter.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pheedo.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feedsportal.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/appyet/manager/bq;)I
    .locals 2

    iget v0, p0, Lcom/appyet/manager/bq;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appyet/manager/bq;->h:I

    return v0
.end method

.method static synthetic b(Lcom/appyet/manager/bq;Lcom/appyet/data/Feed;)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->k:Lcom/appyet/manager/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->k:Lcom/appyet/manager/al;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getFavIconUrlMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/manager/al;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->k:Lcom/appyet/manager/al;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getFavIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getFavIconUrlMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/al;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->k:Lcom/appyet/manager/al;

    invoke-virtual {p1}, Lcom/appyet/data/Feed;->getFavIconUrlMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/appyet/manager/al;->a(Ljava/io/InputStream;Ljava/lang/String;)Z

    iget v0, p0, Lcom/appyet/manager/bq;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appyet/manager/bq;->h:I

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/Long;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->x:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "moduleid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "forced"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v1, v0}, Lcom/appyet/context/ApplicationContext;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/bq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private c(Ljava/lang/Long;Z)V
    .locals 12

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/appyet/manager/bq;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->n()Z

    move-result v9

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->o()Z

    move-result v10

    iput-object v1, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    if-nez p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0}, Lcom/appyet/manager/d;->b()Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11

    :try_start_3
    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_13

    :try_start_4
    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_15

    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12

    if-eqz v0, :cond_0

    :try_start_7
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_16

    :try_start_8
    invoke-virtual {v0}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_9
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0, p1}, Lcom/appyet/manager/d;->a(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_4
    if-eqz v9, :cond_5

    if-nez v10, :cond_6

    :cond_5
    if-eqz p2, :cond_7

    :cond_6
    new-instance v0, Lcom/appyet/manager/ProgressNotificationManager;

    iget-object v1, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080116

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v11, v2}, Lcom/appyet/manager/ProgressNotificationManager;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    :cond_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    const-class v2, Lcom/appyet/service/SyncService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/appyet/manager/bq;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->z()Lcom/appyet/context/b;

    move-result-object v0

    sget-object v1, Lcom/appyet/context/b;->a:Lcom/appyet/context/b;

    if-ne v0, v1, :cond_c

    const/16 v0, 0x32

    if-le v11, v0, :cond_c

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/appyet/manager/bq;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v7, Lcom/appyet/manager/bq;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/appyet/manager/bq;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    :goto_3
    iget-object v0, p0, Lcom/appyet/manager/bq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/appyet/manager/bq;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz v9, :cond_8

    if-nez v10, :cond_9

    :cond_8
    if-eqz p2, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    iget-object v1, p0, Lcom/appyet/manager/bq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    const v4, 0x7f080057

    invoke-virtual {v3, v4}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bq;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/manager/bq;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Lcom/appyet/d/f;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/ProgressNotificationManager;->a(ILjava/lang/String;)V

    :cond_a
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    iget-boolean v2, p0, Lcom/appyet/manager/bq;->i:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v2, :cond_10

    :try_start_a
    iget-object v2, p0, Lcom/appyet/manager/bq;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/appyet/manager/bs;

    iget-object v4, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-direct {v3, p0, v4, v0}, Lcom/appyet/manager/bs;-><init>(Lcom/appyet/manager/bq;Lcom/appyet/context/ApplicationContext;Lcom/appyet/data/FeedItem;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    :cond_b
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    invoke-virtual {v0}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :cond_c
    :try_start_e
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/appyet/manager/bq;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v7, Lcom/appyet/manager/bq;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/appyet/manager/bq;->j:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3

    :catch_4
    move-exception v0

    :try_start_f
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    iget-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_17

    if-eqz v0, :cond_d

    :try_start_11
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_18

    :try_start_12
    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1a

    :try_start_13
    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1b

    const/4 v0, 0x0

    :try_start_14
    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1c

    :cond_d
    :try_start_15
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_19

    if-eqz v0, :cond_0

    :try_start_16
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1d

    :try_start_17
    invoke-virtual {v0}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_2

    :catch_6
    move-exception v0

    :try_start_18
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_19
    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    :cond_e
    iget-object v1, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    invoke-virtual {v1}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8

    :cond_f
    :goto_5
    throw v0

    :cond_10
    :try_start_1a
    iget-object v0, p0, Lcom/appyet/manager/bq;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    iget-object v0, p0, Lcom/appyet/manager/bq;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v1, 0x708

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/bq;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/appyet/manager/bq;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/bq;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p0, p1, p2}, Lcom/appyet/manager/bq;->b(Ljava/lang/Long;Z)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :try_start_1b
    iget-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9

    if-eqz v0, :cond_11

    :try_start_1c
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_a

    :try_start_1d
    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    :try_start_1e
    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_d

    const/4 v0, 0x0

    :try_start_1f
    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_e

    :cond_11
    :try_start_20
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_b

    if-eqz v0, :cond_0

    :try_start_21
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_f

    :try_start_22
    invoke-virtual {v0}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    goto/16 :goto_2

    :catch_8
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_5

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_2

    :catch_b
    move-exception v0

    goto/16 :goto_2

    :catch_c
    move-exception v0

    goto/16 :goto_2

    :catch_d
    move-exception v0

    goto/16 :goto_2

    :catch_e
    move-exception v0

    goto/16 :goto_2

    :catch_f
    move-exception v0

    goto/16 :goto_2

    :catch_10
    move-exception v0

    goto/16 :goto_2

    :catch_11
    move-exception v0

    goto/16 :goto_2

    :catch_12
    move-exception v0

    goto/16 :goto_2

    :catch_13
    move-exception v0

    goto/16 :goto_2

    :catch_14
    move-exception v0

    goto/16 :goto_2

    :catch_15
    move-exception v0

    goto/16 :goto_2

    :catch_16
    move-exception v0

    goto/16 :goto_2

    :catch_17
    move-exception v0

    goto/16 :goto_2

    :catch_18
    move-exception v0

    goto/16 :goto_2

    :catch_19
    move-exception v0

    goto/16 :goto_2

    :catch_1a
    move-exception v0

    goto/16 :goto_2

    :catch_1b
    move-exception v0

    goto/16 :goto_2

    :catch_1c
    move-exception v0

    goto/16 :goto_2

    :catch_1d
    move-exception v0

    goto/16 :goto_2
.end method

.method static synthetic d(Lcom/appyet/manager/bq;)Lcom/appyet/manager/ProgressNotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    return-object v0
.end method

.method private d(Ljava/lang/Long;Z)V
    .locals 11

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/appyet/manager/bq;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    invoke-virtual {v0}, Lcom/appyet/manager/bl;->a()Lcom/appyet/manager/bo;

    move-result-object v0

    sget-object v1, Lcom/appyet/manager/bo;->a:Lcom/appyet/manager/bo;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->n()Z

    move-result v2

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->o()Z

    move-result v3

    iput-object v4, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    if-nez p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0}, Lcom/appyet/manager/d;->c()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0}, Lcom/appyet/manager/d;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    :try_start_3
    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11

    :try_start_4
    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_12

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_13

    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10

    if-eqz v0, :cond_0

    :try_start_7
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_14

    :try_start_8
    invoke-virtual {v0}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_9
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0, p1}, Lcom/appyet/manager/d;->b(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    if-nez v3, :cond_6

    :cond_5
    if-eqz p2, :cond_7

    :cond_6
    new-instance v0, Lcom/appyet/manager/ProgressNotificationManager;

    iget-object v6, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v7, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v7}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080116

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v5, v7}, Lcom/appyet/manager/ProgressNotificationManager;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    :cond_7
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    const-class v7, Lcom/appyet/service/SyncService;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v6, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Lcom/appyet/context/ApplicationContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    iget-boolean v7, p0, Lcom/appyet/manager/bq;->i:Z

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v7, v7, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v7}, Lcom/appyet/manager/bp;->t()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-static {}, Lcom/appyet/context/ApplicationContext;->a()Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_8
    add-int/lit8 v1, v1, 0x1

    if-eqz v2, :cond_9

    if-nez v3, :cond_a

    :cond_9
    if-eqz p2, :cond_b

    :cond_a
    iget-object v7, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    const v10, 0x7f080058

    invoke-virtual {v9, v10}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/appyet/manager/ProgressNotificationManager;->a(ILjava/lang/String;)V

    :cond_b
    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getFeed()Lcom/appyet/data/Feed;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appyet/data/Feed;->getFeedId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v4, v7, v8}, Lcom/appyet/manager/bq;->a(Ljava/util/List;J)Lcom/appyet/data/Feed;

    invoke-direct {p0, v0}, Lcom/appyet/manager/bq;->a(Lcom/appyet/data/FeedItem;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_a
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    :cond_c
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    invoke-virtual {v0}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :cond_d
    :try_start_c
    invoke-direct {p0, p1, p2}, Lcom/appyet/manager/bq;->b(Ljava/lang/Long;Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    if-eqz v0, :cond_e

    :try_start_e
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    :try_start_f
    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    :try_start_10
    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    const/4 v0, 0x0

    :try_start_11
    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    :cond_e
    :try_start_12
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    if-eqz v0, :cond_0

    :try_start_13
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    :try_start_14
    invoke-virtual {v0}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :catch_4
    move-exception v0

    :try_start_15
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :try_start_16
    iget-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_15

    if-eqz v0, :cond_f

    :try_start_17
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_16

    :try_start_18
    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    :try_start_19
    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    const/4 v0, 0x0

    :try_start_1a
    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    :cond_f
    :try_start_1b
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_17

    if-eqz v0, :cond_0

    :try_start_1c
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1b

    :try_start_1d
    invoke-virtual {v0}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_2

    :catch_6
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_10
    :goto_4
    throw v0

    :catchall_0
    move-exception v0

    :try_start_1e
    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    :cond_11
    iget-object v1, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    invoke-virtual {v1}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_6

    goto :goto_4

    :catch_7
    move-exception v0

    goto/16 :goto_2

    :catch_8
    move-exception v0

    goto/16 :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_2

    :catch_b
    move-exception v0

    goto/16 :goto_2

    :catch_c
    move-exception v0

    goto/16 :goto_2

    :catch_d
    move-exception v0

    goto/16 :goto_2

    :catch_e
    move-exception v0

    goto/16 :goto_2

    :catch_f
    move-exception v0

    goto/16 :goto_2

    :catch_10
    move-exception v0

    goto/16 :goto_2

    :catch_11
    move-exception v0

    goto/16 :goto_2

    :catch_12
    move-exception v0

    goto/16 :goto_2

    :catch_13
    move-exception v0

    goto/16 :goto_2

    :catch_14
    move-exception v0

    goto/16 :goto_2

    :catch_15
    move-exception v0

    goto/16 :goto_2

    :catch_16
    move-exception v0

    goto/16 :goto_2

    :catch_17
    move-exception v0

    goto/16 :goto_2

    :catch_18
    move-exception v0

    goto/16 :goto_2

    :catch_19
    move-exception v0

    goto/16 :goto_2

    :catch_1a
    move-exception v0

    goto/16 :goto_2

    :catch_1b
    move-exception v0

    goto/16 :goto_2
.end method

.method static synthetic e(Lcom/appyet/manager/bq;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/bq;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic e()V
    .locals 0

    return-void
.end method

.method private e(Ljava/lang/Long;Z)V
    .locals 12

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/appyet/manager/bq;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->n()Z

    move-result v9

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->o()Z

    move-result v10

    iput-object v1, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    if-nez p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0}, Lcom/appyet/manager/d;->d()Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11

    :try_start_3
    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_13

    :try_start_4
    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_15

    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12

    if-eqz v0, :cond_0

    :try_start_7
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_16

    :try_start_8
    invoke-virtual {v0}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_9
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/d;->b(J)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_4
    if-eqz v9, :cond_5

    if-nez v10, :cond_6

    :cond_5
    if-eqz p2, :cond_7

    :cond_6
    new-instance v0, Lcom/appyet/manager/ProgressNotificationManager;

    iget-object v1, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080116

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v11, v2}, Lcom/appyet/manager/ProgressNotificationManager;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    :cond_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    const-class v2, Lcom/appyet/service/SyncService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/appyet/manager/bq;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/appyet/manager/bq;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v7, Lcom/appyet/manager/bq;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/appyet/manager/bq;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/appyet/manager/bq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/appyet/manager/bq;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz v9, :cond_8

    if-nez v10, :cond_9

    :cond_8
    if-eqz p2, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    iget-object v1, p0, Lcom/appyet/manager/bq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    const v4, 0x7f080055

    invoke-virtual {v3, v4}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bq;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/manager/bq;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Lcom/appyet/d/f;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/ProgressNotificationManager;->a(ILjava/lang/String;)V

    :cond_a
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/Feed;

    iget-boolean v2, p0, Lcom/appyet/manager/bq;->i:Z

    if-nez v2, :cond_d

    const/4 v2, 0x0

    iput v2, p0, Lcom/appyet/manager/bq;->e:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object v2, p0, Lcom/appyet/manager/bq;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/appyet/manager/bt;

    iget-object v4, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-direct {v3, p0, v4, v0}, Lcom/appyet/manager/bt;-><init>(Lcom/appyet/manager/bq;Lcom/appyet/context/ApplicationContext;Lcom/appyet/data/Feed;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    :cond_b
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    invoke-virtual {v0}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :catch_4
    move-exception v0

    :try_start_e
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_3

    :catch_5
    move-exception v0

    :try_start_f
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    iget-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_17

    if-eqz v0, :cond_c

    :try_start_11
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_18

    :try_start_12
    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1a

    :try_start_13
    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1b

    const/4 v0, 0x0

    :try_start_14
    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1c

    :cond_c
    :try_start_15
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_19

    if-eqz v0, :cond_0

    :try_start_16
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1d

    :try_start_17
    invoke-virtual {v0}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    goto/16 :goto_2

    :cond_d
    :try_start_18
    iget-object v0, p0, Lcom/appyet/manager/bq;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    iget-object v0, p0, Lcom/appyet/manager/bq;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v1, 0x708

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/bq;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/appyet/manager/bq;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/bq;->k:Ljava/util/concurrent/ArrayBlockingQueue;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :try_start_19
    iget-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    if-eqz v0, :cond_e

    :try_start_1a
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a

    :try_start_1b
    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c

    :try_start_1c
    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d

    const/4 v0, 0x0

    :try_start_1d
    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_e

    :cond_e
    :try_start_1e
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_b

    if-eqz v0, :cond_0

    :try_start_1f
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f

    :try_start_20
    invoke-virtual {v0}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    goto/16 :goto_2

    :catch_8
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_f
    :goto_4
    throw v0

    :catchall_0
    move-exception v0

    :try_start_21
    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    :cond_10
    iget-object v1, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    invoke-virtual {v1}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_8

    goto :goto_4

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_2

    :catch_b
    move-exception v0

    goto/16 :goto_2

    :catch_c
    move-exception v0

    goto/16 :goto_2

    :catch_d
    move-exception v0

    goto/16 :goto_2

    :catch_e
    move-exception v0

    goto/16 :goto_2

    :catch_f
    move-exception v0

    goto/16 :goto_2

    :catch_10
    move-exception v0

    goto/16 :goto_2

    :catch_11
    move-exception v0

    goto/16 :goto_2

    :catch_12
    move-exception v0

    goto/16 :goto_2

    :catch_13
    move-exception v0

    goto/16 :goto_2

    :catch_14
    move-exception v0

    goto/16 :goto_2

    :catch_15
    move-exception v0

    goto/16 :goto_2

    :catch_16
    move-exception v0

    goto/16 :goto_2

    :catch_17
    move-exception v0

    goto/16 :goto_2

    :catch_18
    move-exception v0

    goto/16 :goto_2

    :catch_19
    move-exception v0

    goto/16 :goto_2

    :catch_1a
    move-exception v0

    goto/16 :goto_2

    :catch_1b
    move-exception v0

    goto/16 :goto_2

    :catch_1c
    move-exception v0

    goto/16 :goto_2

    :catch_1d
    move-exception v0

    goto/16 :goto_2
.end method

.method static synthetic f(Lcom/appyet/manager/bq;)I
    .locals 2

    iget v0, p0, Lcom/appyet/manager/bq;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appyet/manager/bq;->g:I

    return v0
.end method

.method private f(Ljava/lang/Long;Z)V
    .locals 12

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/appyet/manager/bq;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    invoke-virtual {v0}, Lcom/appyet/manager/bl;->a()Lcom/appyet/manager/bo;

    move-result-object v0

    sget-object v1, Lcom/appyet/manager/bo;->a:Lcom/appyet/manager/bo;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->n()Z

    move-result v9

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->o()Z

    move-result v10

    iput-object v2, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    if-nez p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0}, Lcom/appyet/manager/d;->f()Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11

    :try_start_3
    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_13

    :try_start_4
    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_15

    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12

    if-eqz v0, :cond_0

    :try_start_7
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_16

    :try_start_8
    invoke-virtual {v0}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_9
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/d;->d(J)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_4
    if-eqz v9, :cond_5

    if-nez v10, :cond_6

    :cond_5
    if-eqz p2, :cond_7

    :cond_6
    new-instance v0, Lcom/appyet/manager/ProgressNotificationManager;

    iget-object v1, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080116

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v11, v2}, Lcom/appyet/manager/ProgressNotificationManager;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    :cond_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    const-class v2, Lcom/appyet/service/SyncService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/appyet/manager/bq;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/appyet/manager/bq;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v7, Lcom/appyet/manager/bq;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/appyet/manager/bq;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/appyet/manager/bq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/appyet/manager/bq;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz v9, :cond_8

    if-nez v10, :cond_9

    :cond_8
    if-eqz p2, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    iget-object v1, p0, Lcom/appyet/manager/bq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    const v4, 0x7f080054

    invoke-virtual {v3, v4}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bq;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bq;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/appyet/manager/bq;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Lcom/appyet/d/f;->a(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/ProgressNotificationManager;->a(ILjava/lang/String;)V

    :cond_a
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FileCache;

    iget-boolean v2, p0, Lcom/appyet/manager/bq;->i:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v2, :cond_d

    :try_start_a
    iget-object v2, p0, Lcom/appyet/manager/bq;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/appyet/manager/bu;

    iget-object v4, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-direct {v3, p0, v4, v0}, Lcom/appyet/manager/bu;-><init>(Lcom/appyet/manager/bq;Lcom/appyet/context/ApplicationContext;Lcom/appyet/data/FileCache;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    :cond_b
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    invoke-virtual {v0}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :catch_4
    move-exception v0

    :try_start_e
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_3

    :catch_5
    move-exception v0

    :try_start_f
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    iget-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_17

    if-eqz v0, :cond_c

    :try_start_11
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_18

    :try_start_12
    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1a

    :try_start_13
    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1b

    const/4 v0, 0x0

    :try_start_14
    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1c

    :cond_c
    :try_start_15
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_19

    if-eqz v0, :cond_0

    :try_start_16
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1d

    :try_start_17
    invoke-virtual {v0}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    goto/16 :goto_2

    :cond_d
    :try_start_18
    iget-object v0, p0, Lcom/appyet/manager/bq;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    iget-object v0, p0, Lcom/appyet/manager/bq;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v1, 0x708

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/bq;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/appyet/manager/bq;->k:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/bq;->k:Ljava/util/concurrent/ArrayBlockingQueue;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :try_start_19
    iget-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    if-eqz v0, :cond_e

    :try_start_1a
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a

    :try_start_1b
    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c

    :try_start_1c
    invoke-virtual {v0, v1}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d

    const/4 v0, 0x0

    :try_start_1d
    iput-object v0, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_e

    :cond_e
    :try_start_1e
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_b

    if-eqz v0, :cond_0

    :try_start_1f
    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f

    :try_start_20
    invoke-virtual {v0}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    goto/16 :goto_2

    :catch_8
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_f
    :goto_4
    throw v0

    :catchall_0
    move-exception v0

    :try_start_21
    iget-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/appyet/context/ApplicationContext;->stopService(Landroid/content/Intent;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appyet/manager/bq;->n:Landroid/content/Intent;

    :cond_10
    iget-object v1, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    invoke-virtual {v1}, Lcom/appyet/manager/ProgressNotificationManager;->a()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_8

    goto :goto_4

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_2

    :catch_b
    move-exception v0

    goto/16 :goto_2

    :catch_c
    move-exception v0

    goto/16 :goto_2

    :catch_d
    move-exception v0

    goto/16 :goto_2

    :catch_e
    move-exception v0

    goto/16 :goto_2

    :catch_f
    move-exception v0

    goto/16 :goto_2

    :catch_10
    move-exception v0

    goto/16 :goto_2

    :catch_11
    move-exception v0

    goto/16 :goto_2

    :catch_12
    move-exception v0

    goto/16 :goto_2

    :catch_13
    move-exception v0

    goto/16 :goto_2

    :catch_14
    move-exception v0

    goto/16 :goto_2

    :catch_15
    move-exception v0

    goto/16 :goto_2

    :catch_16
    move-exception v0

    goto/16 :goto_2

    :catch_17
    move-exception v0

    goto/16 :goto_2

    :catch_18
    move-exception v0

    goto/16 :goto_2

    :catch_19
    move-exception v0

    goto/16 :goto_2

    :catch_1a
    move-exception v0

    goto/16 :goto_2

    :catch_1b
    move-exception v0

    goto/16 :goto_2

    :catch_1c
    move-exception v0

    goto/16 :goto_2

    :catch_1d
    move-exception v0

    goto/16 :goto_2
.end method

.method static synthetic g(Lcom/appyet/manager/bq;)Lcom/appyet/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/appyet/manager/bq;->d:I

    return v0
.end method

.method public final a(J)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/appyet/manager/bv;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/appyet/manager/bv;-><init>(Lcom/appyet/manager/bq;Ljava/lang/Long;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bv;->a([Ljava/lang/Object;)Lcom/appyet/f/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Long;Z)V
    .locals 11

    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/context/ApplicationContext;->c()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/appyet/context/ApplicationContext;->a(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/manager/bq;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/manager/bq;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/manager/bq;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/manager/bq;->h:I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/appyet/manager/bp;->b(J)V

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->c()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-le v0, v5, :cond_2

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/context/ApplicationContext;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/appyet/context/ApplicationContext;->a(I)V

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->c()I

    move-result v0

    if-gtz v0, :cond_0

    iput-boolean v10, p0, Lcom/appyet/manager/bq;->i:Z

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/appyet/manager/bp;->b(J)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-static {v0}, Lcom/appyet/manager/ar;->a(Lcom/appyet/context/ApplicationContext;)V

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Lcom/appyet/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v4}, Lcom/appyet/context/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_WAKE_LOCK_TAG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    invoke-virtual {v0}, Lcom/appyet/manager/bl;->a()Lcom/appyet/manager/bo;

    move-result-object v0

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v2}, Lcom/appyet/manager/bp;->m()Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/appyet/manager/bo;->b:Lcom/appyet/manager/bo;

    if-ne v0, v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/appyet/manager/bq;->e(Ljava/lang/Long;Z)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    invoke-virtual {v0}, Lcom/appyet/manager/bl;->a()Lcom/appyet/manager/bo;

    move-result-object v0

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v2}, Lcom/appyet/manager/bp;->m()Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/appyet/manager/bo;->b:Lcom/appyet/manager/bo;

    if-ne v0, v2, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/appyet/manager/bq;->c(Ljava/lang/Long;Z)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    invoke-virtual {v0}, Lcom/appyet/manager/bl;->a()Lcom/appyet/manager/bo;

    move-result-object v0

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v2}, Lcom/appyet/manager/bp;->r()Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lcom/appyet/manager/bo;->b:Lcom/appyet/manager/bo;

    if-ne v0, v2, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/appyet/manager/bq;->f(Ljava/lang/Long;Z)V

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->g:Lcom/appyet/manager/bl;

    invoke-virtual {v0}, Lcom/appyet/manager/bl;->a()Lcom/appyet/manager/bo;

    move-result-object v0

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v2}, Lcom/appyet/manager/bp;->s()Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Lcom/appyet/manager/bo;->b:Lcom/appyet/manager/bo;

    if-ne v0, v2, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/appyet/manager/bq;->d(Ljava/lang/Long;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_4
    :try_start_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v3, v3, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v3, v3, Lcom/appyet/metadata/MetadataApplication;->AppSyncUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?guid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v3, v3, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v3, v3, Lcom/appyet/metadata/MetadataApplication;->Guid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&pkn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3}, Lcom/appyet/context/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&tvc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v3, v3, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v3, v3, Lcom/appyet/metadata/MetadataApplication;->BuildTemplateVersionCode:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v3, v3, Lcom/appyet/metadata/Metadata;->MetadataApplication:Lcom/appyet/metadata/MetadataApplication;

    iget-object v3, v3, Lcom/appyet/metadata/MetadataApplication;->AppSyncUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/appyet/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v5, v5, Lcom/appyet/context/ApplicationContext;->k:Lcom/appyet/manager/al;

    invoke-virtual {v5, v3}, Lcom/appyet/manager/al;->c(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v5, v7, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_7

    const-wide/32 v7, 0x5265c00

    cmp-long v0, v5, v7

    if-lez v0, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->k:Lcom/appyet/manager/al;

    invoke-virtual {v0, v2, v4}, Lcom/appyet/manager/al;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->k:Lcom/appyet/manager/al;

    invoke-virtual {v0, v4}, Lcom/appyet/manager/al;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->k:Lcom/appyet/manager/al;

    const-string v2, "UTF8"

    invoke-virtual {v0, v4, v2}, Lcom/appyet/manager/al;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    const-string v2, "Vendor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lcom/google/a/r;

    invoke-direct {v2}, Lcom/google/a/r;-><init>()V

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss"

    iput-object v5, v2, Lcom/google/a/r;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/a/r;->a()Lcom/google/a/k;

    move-result-object v2

    const-class v5, Lcom/appyet/metadata/MetadataAppSync;

    invoke-virtual {v2, v0, v5}, Lcom/google/a/k;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/MetadataAppSync;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->k:Lcom/appyet/manager/al;

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->k:Lcom/appyet/manager/al;

    invoke-virtual {v0, v2, v4, v3}, Lcom/appyet/manager/al;->a(Lcom/appyet/manager/al;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->g()V

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    invoke-virtual {v0}, Lcom/appyet/manager/ap;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    :goto_5
    :try_start_3
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-boolean v0, v0, Lcom/appyet/context/ApplicationContext;->a:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->n()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/appyet/manager/bq;->d:I

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v2}, Lcom/appyet/manager/bp;->X()I

    move-result v2

    iget v3, p0, Lcom/appyet/manager/bq;->d:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/appyet/manager/bp;->j(I)V

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Lcom/appyet/context/ApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/Notification;

    const v3, 0x1080027

    iget-object v4, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    const v5, 0x7f080116

    invoke-virtual {v4, v5}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    const-class v5, Lcom/appyet/activity/MainActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f020078

    iput v4, v2, Landroid/app/Notification;->icon:I

    iget-object v4, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v4}, Lcom/appyet/manager/bp;->X()I

    move-result v4

    iput v4, v2, Landroid/app/Notification;->number:I

    iget-object v4, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v5, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    const v6, 0x7f080116

    invoke-virtual {v5, v6}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    const v7, 0x7f080056

    invoke-virtual {v6, v7}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v9, v9, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v9}, Lcom/appyet/manager/bp;->X()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v3}, Lcom/appyet/manager/bp;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v3, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v3}, Lcom/appyet/manager/bp;->u()Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->defaults:I

    :cond_a
    iget-object v3, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v3}, Lcom/appyet/manager/bp;->v()Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Landroid/app/Notification;->defaults:I

    :cond_b
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_6
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->u:Lcom/appyet/manager/bx;

    new-instance v2, Lcom/appyet/manager/by;

    invoke-direct {v2, v0}, Lcom/appyet/manager/by;-><init>(Lcom/appyet/manager/bx;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/appyet/manager/by;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->s:Lcom/appyet/manager/a;

    invoke-virtual {v0}, Lcom/appyet/manager/a;->a()V

    :cond_c
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->w()I

    move-result v0

    if-gtz v0, :cond_d

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->y()I

    move-result v0

    if-lez v0, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v2}, Lcom/appyet/manager/bp;->y()I

    move-result v2

    iget-object v3, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v3}, Lcom/appyet/manager/bp;->w()I

    move-result v3

    iget-object v4, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v4}, Lcom/appyet/manager/bp;->x()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/appyet/manager/d;->a(IIZ)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_e
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/context/ApplicationContext;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/appyet/context/ApplicationContext;->a(I)V

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->c()I

    move-result v0

    if-gtz v0, :cond_f

    iput-boolean v10, p0, Lcom/appyet/manager/bq;->i:Z

    :cond_f
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/appyet/manager/bp;->b(J)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :cond_10
    :try_start_4
    sget-object v2, Lcom/appyet/manager/bo;->a:Lcom/appyet/manager/bo;

    if-eq v0, v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/appyet/manager/bq;->e(Ljava/lang/Long;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/context/ApplicationContext;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/appyet/context/ApplicationContext;->a(I)V

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->c()I

    move-result v0

    if-gtz v0, :cond_11

    iput-boolean v10, p0, Lcom/appyet/manager/bq;->i:Z

    :cond_11
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/appyet/manager/bp;->b(J)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :cond_12
    :try_start_6
    sget-object v2, Lcom/appyet/manager/bo;->a:Lcom/appyet/manager/bo;

    if-eq v0, v2, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/appyet/manager/bq;->c(Ljava/lang/Long;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/context/ApplicationContext;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/appyet/context/ApplicationContext;->a(I)V

    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->c()I

    move-result v0

    if-gtz v0, :cond_13

    iput-boolean v10, p0, Lcom/appyet/manager/bq;->i:Z

    :cond_13
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/appyet/manager/bp;->b(J)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :cond_14
    :try_start_8
    sget-object v2, Lcom/appyet/manager/bo;->a:Lcom/appyet/manager/bo;

    if-eq v0, v2, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/appyet/manager/bq;->f(Ljava/lang/Long;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v3, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3}, Lcom/appyet/context/ApplicationContext;->c()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/appyet/context/ApplicationContext;->a(I)V

    iget-object v2, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v2}, Lcom/appyet/context/ApplicationContext;->c()I

    move-result v2

    if-gtz v2, :cond_15

    iput-boolean v10, p0, Lcom/appyet/manager/bq;->i:Z

    :cond_15
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget-object v3, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/appyet/manager/bp;->b(J)V

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_16
    invoke-static {}, Ljava/lang/System;->gc()V

    throw v0

    :cond_17
    :try_start_9
    sget-object v2, Lcom/appyet/manager/bo;->a:Lcom/appyet/manager/bo;

    if-eq v0, v2, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/appyet/manager/bq;->d(Ljava/lang/Long;Z)V

    goto/16 :goto_4

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_5

    :cond_18
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget v2, p0, Lcom/appyet/manager/bq;->d:I

    invoke-virtual {v0, v2}, Lcom/appyet/manager/bp;->j(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_6
.end method

.method public final a(Z)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/appyet/manager/bv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/appyet/manager/bv;-><init>(Lcom/appyet/manager/bq;Ljava/lang/Long;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/bv;->a([Ljava/lang/Object;)Lcom/appyet/f/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/manager/bq;->i:Z

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/manager/bq;->i:Z

    :goto_0
    iget-object v0, p0, Lcom/appyet/manager/bq;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->c()I

    move-result v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Error;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/manager/bq;->i:Z

    return-void
.end method

.method public final d()Lcom/appyet/manager/ProgressNotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/bq;->o:Lcom/appyet/manager/ProgressNotificationManager;

    return-object v0
.end method
