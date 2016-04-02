.class public Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/ImageLoaderService;
.source "ImageLoaderServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/image/ImageLoader;

.field private b:Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$ImageStrategy;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;-><init>()V

    .line 29
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpManager;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v1, Lcom/alipay/mobile/common/image/ImageLoader;

    invoke-static {}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getInstance()Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->getInstance()Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/alipay/mobile/common/image/ImageLoader;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/cache/disk/DiskCache;Lcom/alipay/mobile/common/cache/mem/MemCache;)V

    iput-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;->a:Lcom/alipay/mobile/common/image/ImageLoader;

    .line 31
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/common/impl/DefaultImageStrategy;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$ImageStrategy;

    .line 32
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;->a:Lcom/alipay/mobile/common/image/ImageLoader;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/image/ImageLoader;->cancel(Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;)V

    .line 116
    return-void
.end method

.method public loadFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$ImageStrategy;

    invoke-interface {v0, p3, p4, p5}, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$ImageStrategy;->preferImageUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->getInstance()Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    :goto_0
    return-object v0

    .line 49
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getInstance()Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->open()V

    .line 51
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getInstance()Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;->a:Lcom/alipay/mobile/common/image/ImageLoader;

    invoke-virtual {v2, v0, p4, p5}, Lcom/alipay/mobile/common/image/ImageLoader;->createBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->getInstance()Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getInstance()Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->close()V

    goto :goto_0

    .line 58
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getInstance()Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->remove(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getInstance()Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->close()V

    .line 66
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/CacheException;->getCode()Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/CacheException;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getInstance()Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getInstance()Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->close()V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;II)V
    .locals 8

    .prologue
    .line 37
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V

    .line 38
    return-void
.end method

.method public startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V
    .locals 8

    .prologue
    .line 73
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ImageLoaderService"

    const-string/jumbo v2, "imagePath is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$ImageStrategy;

    invoke-interface {v0, p3, p4}, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$ImageStrategy;->loadAssetImage(Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$ImageStrategy;

    invoke-interface {v0, p3, p5, p6}, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$ImageStrategy;->preferImageUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 83
    new-instance v4, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;

    invoke-direct {v4, p0, p4, p3}, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl$1;-><init>(Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/ImageLoaderServiceImpl;->a:Lcom/alipay/mobile/common/image/ImageLoader;

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/common/image/ImageLoader;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V

    goto :goto_0
.end method
