.class Lcom/millennialmedia/android/BridgeMMCachedVideo;
.super Lcom/millennialmedia/android/MMJSObject;

# interfaces
.implements Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;


# instance fields
.field private success:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    return-void
.end method

.method private getVPA()Lcom/millennialmedia/android/VideoPlayerActivity;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/android/MMActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getWrappedActivity()Lcom/millennialmedia/android/MMBaseActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getWrappedActivity()Lcom/millennialmedia/android/MMBaseActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/millennialmedia/android/VideoPlayerActivity;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getWrappedActivity()Lcom/millennialmedia/android/MMBaseActivity;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoPlayerActivity;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public availableCachedVideos(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x2

    new-instance v3, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Landroid/content/Context;Lorg/json/JSONArray;)V

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    new-instance v0, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    const/4 v2, 0x1

    iput v2, v0, Lcom/millennialmedia/android/MMJSResponse;->result:I

    iput-object v1, v0, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized cacheVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "url"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v3}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    invoke-virtual {v3, v1}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "HTTP response is null"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_2
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    if-nez v3, :cond_1

    :try_start_3
    const-string v0, "Null HTTP entity"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "HTTP error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    const-string v0, "Millennial ad return failed. Zero content length returned."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/json"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    :try_start_4
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/millennialmedia/android/VideoAd;

    invoke-direct {v4, v3}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v4}, Lcom/millennialmedia/android/VideoAd;->isValid()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    iput v3, v4, Lcom/millennialmedia/android/VideoAd;->downloadPriority:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v4, p0}, Lcom/millennialmedia/android/AdCache;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    iget-boolean v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->success:Z

    if-eqz v0, :cond_3

    const-string v0, "Cached video(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const-string v0, "Millennial ad return failed. Invalid response data."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "Millennial ad return failed. Invalid response data."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_4
    :goto_1
    move-object v0, v2

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_9
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/Throwable;)V

    const-string v1, "Caching interrupted: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v0

    :cond_5
    const-string v0, "Unable to start download for Cached video(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method public downloadCompleted(Lcom/millennialmedia/android/CachedAd;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/millennialmedia/android/AdCache;->save(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z

    :cond_0
    iput-boolean p2, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->success:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public downloadStart(Lcom/millennialmedia/android/CachedAd;)V
    .locals 0

    return-void
.end method

.method public endVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->getVPA()Lcom/millennialmedia/android/VideoPlayerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/millennialmedia/android/BridgeMMCachedVideo$3;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$3;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->getVPA()Lcom/millennialmedia/android/VideoPlayerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/millennialmedia/android/BridgeMMCachedVideo$4;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$4;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playCachedVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "videoId"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/VideoAd;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v3, v5}, Lcom/millennialmedia/android/VideoAd;->canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "PROPERTY_EXPANDING"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->getAdImplId(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/millennialmedia/android/VideoAd;->show(Landroid/content/Context;J)V

    const-string v0, "Playing Video(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v3

    goto :goto_0
.end method

.method public playVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->getVPA()Lcom/millennialmedia/android/VideoPlayerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/millennialmedia/android/BridgeMMCachedVideo$2;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$2;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restartVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->getVPA()Lcom/millennialmedia/android/VideoPlayerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/millennialmedia/android/BridgeMMCachedVideo$5;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$5;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public videoIdExists(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "videoId"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/VideoAd;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/millennialmedia/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/millennialmedia/android/VideoAd;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
