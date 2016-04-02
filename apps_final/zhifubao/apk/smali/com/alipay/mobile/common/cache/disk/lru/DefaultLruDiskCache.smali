.class public Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;
.super Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;
.source "DefaultLruDiskCache.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;-><init>()V

    .line 21
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/32 v2, 0x80000

    .line 50
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    .line 52
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->setDirectory(Ljava/lang/String;)V

    .line 53
    sub-long/2addr v0, v2

    .line 54
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->setMaxsize(J)V

    .line 55
    return-void

    :cond_0
    move-wide v0, v2

    .line 54
    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-direct {v0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    .line 27
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected init()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->init()V

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getExternalCacheDir()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
