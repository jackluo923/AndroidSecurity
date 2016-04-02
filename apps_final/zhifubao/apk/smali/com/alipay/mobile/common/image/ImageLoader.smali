.class public Lcom/alipay/mobile/common/image/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

.field private b:Lcom/alipay/mobile/common/cache/mem/MemCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/cache/mem/MemCache",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/mobile/common/transport/http/HttpManager;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/cache/disk/DiskCache;Lcom/alipay/mobile/common/cache/mem/MemCache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/http/HttpManager;",
            "Lcom/alipay/mobile/common/cache/disk/DiskCache;",
            "Lcom/alipay/mobile/common/cache/mem/MemCache",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->c:Lcom/alipay/mobile/common/transport/http/HttpManager;

    .line 48
    iput-object p2, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    .line 49
    iput-object p3, p0, Lcom/alipay/mobile/common/image/ImageLoader;->b:Lcom/alipay/mobile/common/cache/mem/MemCache;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;II)Z
    .locals 5

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->open()V

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v0, p1, p3}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 212
    if-eqz v0, :cond_1

    .line 213
    invoke-interface {p4, p3}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onPreLoad(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, v0, p5, p6}, Lcom/alipay/mobile/common/image/ImageLoader;->createBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    .line 216
    invoke-interface {p4, p3, v0}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 217
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->b:Lcom/alipay/mobile/common/cache/mem/MemCache;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/alipay/mobile/common/cache/mem/MemCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->close()V

    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    .line 220
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->remove(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->close()V

    .line 228
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
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

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->close()V

    throw v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/image/ImageLoader;)Lcom/alipay/mobile/common/cache/mem/MemCache;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->b:Lcom/alipay/mobile/common/cache/mem/MemCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/image/ImageLoader;)Lcom/alipay/mobile/common/cache/disk/DiskCache;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;)V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;

    .line 109
    if-nez v0, :cond_0

    .line 110
    monitor-exit v1

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->removeListener(Lcom/alipay/mobile/common/image/ImageLoaderListener;)V

    .line 112
    invoke-virtual {v0}, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->getListenerSize()I

    move-result v0

    if-gtz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 114
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 116
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public createBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 238
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 241
    if-lez p2, :cond_2

    if-lez p3, :cond_2

    .line 242
    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 243
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 244
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 248
    :goto_0
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v0, p2

    .line 249
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v1, p3

    .line 250
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 252
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 255
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->getDencity()I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 256
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 257
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 258
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 260
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 262
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 267
    :goto_2
    return-object v0

    :cond_0
    move-object v0, p1

    .line 246
    check-cast v0, [B

    move-object v1, p1

    check-cast v1, [B

    array-length v1, v1

    invoke-static {v0, v4, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 264
    check-cast v0, [B

    check-cast p1, [B

    array-length v2, p1

    invoke-static {v0, v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_2
    move v0, v2

    move-object v1, v3

    goto :goto_1
.end method

.method public startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;II)V
    .locals 8

    .prologue
    .line 66
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/common/image/ImageLoader;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V

    .line 67
    return-void
.end method

.method public startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V
    .locals 9

    .prologue
    .line 81
    if-nez p3, :cond_1

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ImageLoader"

    const-string/jumbo v2, "path must be set."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->b:Lcom/alipay/mobile/common/cache/mem/MemCache;

    invoke-virtual {v0, p1, p3}, Lcom/alipay/mobile/common/cache/mem/MemCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p4, p3, v0}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-interface {p4, p3, v0, v1}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onProgressUpdate(Ljava/lang/String;D)V

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    .line 89
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 90
    const-string/jumbo v1, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    :cond_2
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/common/image/ImageLoader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/image/ImageLoaderListener;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v7, p0, Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->addListener(Lcom/alipay/mobile/common/image/ImageLoaderListener;)V

    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 85
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 94
    :cond_4
    :try_start_1
    new-instance v8, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-direct {v8, p3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;-><init>(Lcom/alipay/mobile/common/image/ImageLoader;Ljava/lang/String;Ljava/lang/String;IILcom/alipay/mobile/common/image/ImageCacheListener;)V

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->addListener(Lcom/alipay/mobile/common/image/ImageLoaderListener;)V

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->c:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/common/transport/http/HttpManager;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;

    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 96
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v8

    new-instance v0, Lcom/alipay/mobile/common/image/ImageLoader$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move v4, p5

    move v5, p6

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/common/image/ImageLoader$1;-><init>(Lcom/alipay/mobile/common/image/ImageLoader;Lcom/alipay/mobile/common/image/ImageLoaderListener;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
