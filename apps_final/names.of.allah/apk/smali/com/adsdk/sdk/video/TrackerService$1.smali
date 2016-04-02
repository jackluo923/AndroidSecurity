.class Lcom/adsdk/sdk/video/TrackerService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v6, 0x2710

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/adsdk/sdk/video/TrackerService;->access$0(Z)V

    :goto_0
    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sStopped:Z
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v5}, Lcom/adsdk/sdk/video/TrackerService;->access$0(Z)V

    invoke-static {v5}, Lcom/adsdk/sdk/video/TrackerService;->access$7(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->access$8(Ljava/lang/Thread;)V

    return-void

    :cond_0
    # invokes: Lcom/adsdk/sdk/video/TrackerService;->getNextUpdate()Lcom/adsdk/sdk/video/TrackEvent;
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$3()Lcom/adsdk/sdk/video/TrackEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending tracking :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/adsdk/sdk/video/TrackEvent;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Events left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$4()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    const-string v1, "Sending conversion Request"

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Perform tracking HTTP Get Url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    const-string v3, "User-Agent"

    const-string v4, "http.agent"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/net/URI;

    iget-object v4, v0, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->requestRetry(Lcom/adsdk/sdk/video/TrackEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    # invokes: Lcom/adsdk/sdk/video/TrackerService;->hasMoreUpdates()Z
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$2()Z

    move-result v0

    if-eqz v0, :cond_2

    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sStopped:Z
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$1()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sStopped:Z
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$1()Z

    move-result v0

    if-nez v0, :cond_4

    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$5()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-wide/16 v0, 0x7530

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$6()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$4()Ljava/util/Queue;

    move-result-object v0

    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$5()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    # getter for: Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$5()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_3
    const-string v1, "Tracking OK"

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->requestRetry(Lcom/adsdk/sdk/video/TrackEvent;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->access$0(Z)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method
