.class public Lcom/alipay/mobile/common/imageworker/BitmapCallback;
.super Lcom/alipay/mobile/common/imageworker/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alipay/mobile/common/imageworker/HttpCallback",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/alipay/mobile/common/imageworker/HttpDataProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/imageworker/HttpCallback",
            "<TT;>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<*>;>;",
            "Lcom/alipay/mobile/common/imageworker/HttpDataProcessor",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/imageworker/HttpCallback;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/alipay/mobile/common/imageworker/HttpDataProcessor;)V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    iget-object v2, p0, Lcom/alipay/mobile/common/imageworker/BitmapCallback;->currentDownLoads:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/BitmapCallback;->processor:Lcom/alipay/mobile/common/imageworker/HttpDataProcessor;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/common/imageworker/HttpDataProcessor;->process(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/BitmapCallback;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/imageworker/BitmapCallback;->clearRequestCallbackAndTask(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/imageworker/DownloadListener;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Lcom/alipay/mobile/common/imageworker/DownloadListener;->onPostExecute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
