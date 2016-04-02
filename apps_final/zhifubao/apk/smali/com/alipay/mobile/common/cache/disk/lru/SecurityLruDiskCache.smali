.class public Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;
.super Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;
.source "SecurityLruDiskCache.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;-><init>()V

    .line 20
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    invoke-direct {v0}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    .line 26
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected init()V
    .locals 8

    .prologue
    const-wide/32 v2, 0x80000

    .line 31
    invoke-super {p0}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->init()V

    .line 32
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v6, v1

    mul-long/2addr v4, v6

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->setDirectory(Ljava/lang/String;)V

    sub-long v0, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->setMaxsize(J)V

    .line 33
    return-void

    :cond_0
    move-wide v0, v2

    .line 32
    goto :goto_0
.end method
