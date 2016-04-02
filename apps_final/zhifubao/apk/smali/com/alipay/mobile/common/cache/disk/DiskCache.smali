.class public abstract Lcom/alipay/mobile/common/cache/disk/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mDirectory:Ljava/lang/String;

.field protected mEntities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/cache/disk/Entity;",
            ">;"
        }
    .end annotation
.end field

.field protected mGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/common/cache/disk/Entity;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mMaxsize:J

.field protected mMeta:Lcom/alipay/mobile/common/cache/disk/Meta;

.field protected mSize:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 72
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    :goto_0
    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 597
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/cache/disk/DiskCache$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/cache/disk/DiskCache$4;-><init>(Lcom/alipay/mobile/common/cache/disk/DiskCache;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 255
    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->removeEntity(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->removeCacheFile(Ljava/lang/String;)V

    .line 259
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/cache/disk/DiskCache;Ljava/lang/String;[B)V
    .locals 4

    .prologue
    .line 35
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/alipay/mobile/common/cache/disk/CacheException;

    sget-object v2, Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;->WRITE_IO_ERROR:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    const-string/jumbo v3, "cache file create error."

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/common/cache/disk/CacheException;-><init>(Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    new-instance v2, Lcom/alipay/mobile/common/cache/disk/CacheException;

    sget-object v3, Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;->WRITE_IO_ERROR:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/alipay/mobile/common/cache/disk/CacheException;-><init>(Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_2
    throw v0

    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    return-void

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "DiskCache"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_4
    :try_start_6
    new-instance v2, Lcom/alipay/mobile/common/cache/disk/CacheException;

    sget-object v3, Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;->WRITE_IO_ERROR:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/alipay/mobile/common/cache/disk/CacheException;-><init>(Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_3
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "DiskCache"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/cache/disk/DiskCache;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/cache/disk/DiskCache;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 539
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 540
    const/4 v2, 0x0

    .line 541
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 542
    new-instance v0, Lcom/alipay/mobile/common/cache/disk/CacheException;

    sget-object v1, Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;->READ_IO_ERROR:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    const-string/jumbo v2, "cache file not found."

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/cache/disk/CacheException;-><init>(Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 547
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 548
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 559
    :goto_0
    return-object v0

    .line 557
    :catch_0
    move-exception v1

    .line 558
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "DiskCache"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 551
    :goto_1
    :try_start_3
    new-instance v2, Lcom/alipay/mobile/common/cache/disk/CacheException;

    sget-object v3, Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;->READ_IO_ERROR:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/alipay/mobile/common/cache/disk/CacheException;-><init>(Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 554
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    .line 556
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 559
    :cond_1
    :goto_3
    throw v0

    .line 557
    :catch_2
    move-exception v1

    .line 558
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "DiskCache"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 554
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 550
    :catch_3
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method addEntity(Lcom/alipay/mobile/common/cache/disk/Entity;)V
    .locals 6

    .prologue
    .line 462
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    monitor-enter v1

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/cache/disk/Entity;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    invoke-virtual {p1}, Lcom/alipay/mobile/common/cache/disk/Entity;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_1
    iget-wide v2, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mSize:J

    invoke-virtual {p1}, Lcom/alipay/mobile/common/cache/disk/Entity;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mSize:J

    .line 466
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method clear()V
    .locals 2

    .prologue
    .line 516
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/cache/disk/DiskCache$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/cache/disk/DiskCache$3;-><init>(Lcom/alipay/mobile/common/cache/disk/DiskCache;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;)V

    .line 532
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a()V

    .line 95
    return-void
.end method

.method containEntity(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 494
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    monitor-enter v1

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 347
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "DiskCache must call open() before"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "owner can\'t be -"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_1
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->containEntity(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 373
    :cond_2
    :goto_0
    return-object v0

    .line 358
    :cond_3
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->getEntity(Ljava/lang/String;)Lcom/alipay/mobile/common/cache/disk/Entity;

    move-result-object v1

    .line 360
    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/Entity;->expire()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 361
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_4
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/cache/disk/Entity;->authenticate(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 368
    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/Entity;->use()V

    .line 369
    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/Entity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->obtainKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->getDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-static {v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getCacheCount()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mDirectory:Ljava/lang/String;

    return-object v0
.end method

.method getEntity(Ljava/lang/String;)Lcom/alipay/mobile/common/cache/disk/Entity;
    .locals 2

    .prologue
    .line 507
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    monitor-enter v1

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/cache/disk/Entity;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFileDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 441
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->containEntity(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    :goto_0
    return-object v0

    .line 443
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->getEntity(Ljava/lang/String;)Lcom/alipay/mobile/common/cache/disk/Entity;

    move-result-object v1

    .line 445
    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/Entity;->expire()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/Entity;->use()V

    .line 450
    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/Entity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->obtainKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->getDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMaxsize()J
    .locals 2

    .prologue
    .line 380
    iget-wide v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mMaxsize:J

    return-wide v0
.end method

.method public getSerializable(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Serializable;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 309
    if-nez v1, :cond_0

    .line 332
    :goto_0
    return-object v0

    .line 312
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 315
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 316
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 326
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    .line 331
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "DiskCache"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 318
    :goto_1
    :try_start_3
    new-instance v3, Lcom/alipay/mobile/common/cache/disk/CacheException;

    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alipay/mobile/common/cache/disk/CacheException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 324
    :catchall_0
    move-exception v0

    .line 325
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 326
    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 332
    :cond_1
    :goto_3
    throw v0

    .line 319
    :catch_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 320
    :goto_4
    :try_start_5
    new-instance v3, Lcom/alipay/mobile/common/cache/disk/CacheException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alipay/mobile/common/cache/disk/CacheException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 321
    :catch_3
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 322
    :goto_5
    new-instance v3, Lcom/alipay/mobile/common/cache/disk/CacheException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alipay/mobile/common/cache/disk/CacheException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 329
    :catch_4
    move-exception v1

    .line 331
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "DiskCache"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 324
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    .line 321
    :catch_5
    move-exception v0

    goto :goto_5

    .line 319
    :catch_6
    move-exception v0

    goto :goto_4

    .line 317
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method public getSize()J
    .locals 4

    .prologue
    .line 387
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    monitor-enter v1

    .line 388
    :try_start_0
    iget-wide v2, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mSize:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected abstract init()V
.end method

.method protected obtainKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "DiskCache"

    const-string/jumbo v2, "DiskCache has inited"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->init()V

    .line 84
    new-instance v0, Lcom/alipay/mobile/common/cache/disk/Meta;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/cache/disk/Meta;-><init>(Lcom/alipay/mobile/common/cache/disk/DiskCache;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mMeta:Lcom/alipay/mobile/common/cache/disk/Meta;

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mMeta:Lcom/alipay/mobile/common/cache/disk/Meta;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/Meta;->init()V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
    .locals 14

    .prologue
    .line 149
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "DiskCache must call open() before"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "owner can\'t be -"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v1, "-"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "group can\'t be -"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->obtainKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 162
    new-instance v1, Lcom/alipay/mobile/common/cache/disk/Entity;

    const/4 v5, 0x0

    move-object/from16 v0, p4

    array-length v2, v0

    int-to-long v6, v2

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-object/from16 v13, p9

    invoke-direct/range {v1 .. v13}, Lcom/alipay/mobile/common/cache/disk/Entity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;JJLjava/lang/String;)V

    .line 165
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->addEntity(Lcom/alipay/mobile/common/cache/disk/Entity;)V

    .line 166
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;

    move-object/from16 v0, p4

    invoke-direct {v2, p0, v8, v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;-><init>(Lcom/alipay/mobile/common/cache/disk/DiskCache;Ljava/lang/String;[B)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method public putSerializable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;JJLjava/lang/String;)V
    .locals 13

    .prologue
    .line 112
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    const/4 v2, 0x0

    .line 116
    :try_start_0
    new-instance v11, Ljava/io/ObjectOutputStream;

    invoke-direct {v11, v12}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 118
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    .line 119
    invoke-virtual/range {v1 .. v10}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    :try_start_2
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 125
    invoke-virtual {v11}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v1

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "DiskCache"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :catch_1
    move-exception v1

    .line 121
    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    :catchall_0
    move-exception v1

    .line 124
    :goto_2
    :try_start_4
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 125
    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 131
    :cond_0
    :goto_3
    throw v1

    .line 128
    :catch_2
    move-exception v2

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "DiskCache"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 123
    :catchall_1
    move-exception v1

    move-object v2, v11

    goto :goto_2

    .line 120
    :catch_3
    move-exception v1

    move-object v2, v11

    goto :goto_1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "DiskCache must call open() before"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public removeByGroup(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "DiskCache must call open() before"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    if-eqz p1, :cond_3

    .line 229
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "group can\'t be -"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 233
    if-eqz v0, :cond_3

    .line 234
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 236
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/cache/disk/Entity;

    .line 237
    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/Entity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :cond_3
    return-void
.end method

.method protected removeCacheFile(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->obtainKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/cache/disk/DiskCache$2;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache$2;-><init>(Lcom/alipay/mobile/common/cache/disk/DiskCache;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;)V

    .line 298
    return-void
.end method

.method removeEntity(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 476
    iget-object v2, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    monitor-enter v2

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/cache/disk/Entity;

    .line 478
    if-eqz v0, :cond_1

    .line 479
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/Entity;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 481
    :cond_0
    iget-wide v3, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mSize:J

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/Entity;->getSize()J

    move-result-wide v0

    sub-long v0, v3, v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mSize:J

    .line 483
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected final setDirectory(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 407
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mDirectory:Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mDirectory:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not set valid cache directory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1

    .line 412
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An Error occured while  cache directory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not set valid cache directory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_2
    return-void
.end method

.method protected final setMaxsize(J)V
    .locals 4

    .prologue
    .line 423
    iput-wide p1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mMaxsize:J

    .line 424
    iget-wide v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mMaxsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not set valid cache size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    return-void
.end method
