.class Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/common/image/ImageLoaderListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Lcom/alipay/mobile/common/image/ImageCacheListener;

.field final synthetic this$0:Lcom/alipay/mobile/common/image/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/image/ImageLoader;Ljava/lang/String;Ljava/lang/String;IILcom/alipay/mobile/common/image/ImageCacheListener;)V
    .locals 1

    .prologue
    .line 278
    iput-object p1, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p2, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->a:Ljava/lang/String;

    .line 280
    iput-object p3, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->b:Ljava/lang/String;

    .line 281
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    .line 282
    iput p4, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->d:I

    .line 283
    iput p5, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->e:I

    .line 284
    iput-object p6, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->f:Lcom/alipay/mobile/common/image/ImageCacheListener;

    .line 285
    return-void
.end method


# virtual methods
.method public addListener(Lcom/alipay/mobile/common/image/ImageLoaderListener;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public getListenerSize()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 4

    .prologue
    .line 362
    check-cast p1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/image/ImageLoader;->access$100(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/image/ImageLoaderListener;

    .line 365
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onCancelled(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 367
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/image/ImageLoader;->access$100(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/image/ImageLoader;->access$300(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 350
    check-cast p1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/image/ImageLoader;->access$100(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/image/ImageLoaderListener;

    .line 353
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2, p3}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onFailed(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 355
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/image/ImageLoader;->access$100(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/image/ImageLoader;->access$300(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 12

    .prologue
    .line 316
    check-cast p1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 317
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;
    invoke-static {v1}, Lcom/alipay/mobile/common/image/ImageLoader;->access$100(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v11

    monitor-enter v11

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 319
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    move-object v10, v0

    .line 320
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v5

    .line 321
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    iget v2, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->d:I

    iget v3, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->e:I

    invoke-virtual {v1, v5, v2, v3}, Lcom/alipay/mobile/common/image/ImageLoader;->createBitmap(Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 322
    if-eqz v2, :cond_3

    .line 323
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/image/ImageLoaderListener;

    .line 324
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1

    .line 326
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->b:Lcom/alipay/mobile/common/cache/mem/MemCache;
    invoke-static {v1}, Lcom/alipay/mobile/common/image/ImageLoader;->access$000(Lcom/alipay/mobile/common/image/ImageLoader;)Lcom/alipay/mobile/common/cache/mem/MemCache;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v6, v2}, Lcom/alipay/mobile/common/cache/mem/MemCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->f:Lcom/alipay/mobile/common/image/ImageCacheListener;

    if-eqz v1, :cond_2

    .line 330
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->f:Lcom/alipay/mobile/common/image/ImageCacheListener;

    invoke-interface {v1, p1, v10}, Lcom/alipay/mobile/common/image/ImageCacheListener;->getCachePeriod(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)J

    move-result-wide v8

    .line 334
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->a:Lcom/alipay/mobile/common/cache/disk/DiskCache;
    invoke-static {v1}, Lcom/alipay/mobile/common/image/ImageLoader;->access$200(Lcom/alipay/mobile/common/image/ImageLoader;)Lcom/alipay/mobile/common/cache/disk/DiskCache;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getCreateTime()J

    move-result-wide v6

    invoke-virtual {v10}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getContentType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v1 .. v10}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->d:Ljava/util/Map;
    invoke-static {v1}, Lcom/alipay/mobile/common/image/ImageLoader;->access$100(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->this$0:Lcom/alipay/mobile/common/image/ImageLoader;

    # getter for: Lcom/alipay/mobile/common/image/ImageLoader;->e:Ljava/util/Map;
    invoke-static {v1}, Lcom/alipay/mobile/common/image/ImageLoader;->access$300(Lcom/alipay/mobile/common/image/ImageLoader;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    monitor-exit v11

    return-void

    .line 332
    :cond_2
    invoke-virtual {v10}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getPeriod()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v8, v1, v3

    goto :goto_1

    .line 338
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/image/ImageLoaderListener;

    .line 339
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e7

    const-string/jumbo v5, "\u7f51\u7edc\u8bf7\u6c42\u8fd4\u56de\u7684\u4e0d\u662f\u56fe\u7247"

    invoke-interface {v1, v3, v4, v5}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onFailed(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/image/ImageLoaderListener;

    move-object v1, p1

    .line 309
    check-cast v1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 310
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onPreLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/image/ImageLoaderListener;

    move-object v1, p1

    .line 301
    check-cast v1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 302
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/common/image/ImageLoaderListener;->onProgressUpdate(Ljava/lang/String;D)V

    goto :goto_0

    .line 304
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/alipay/mobile/common/image/ImageLoaderListener;)V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/common/image/ImageLoader$HttpCallback;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 292
    return-void
.end method
