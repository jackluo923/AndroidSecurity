.class Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

.field final synthetic c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Landroid/content/Context;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    if-nez v0, :cond_2

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Click event list empty"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->deinit()V

    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    sget-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_1
    :try_start_1
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->getRetryCount()I

    move-result v3

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->isPingWv()Z

    move-result v4

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->isFollowRedirects()Z

    move-result v5

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getImai()Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->getRetryInterval()I

    move-result v1

    iget-object v6, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Cannot process click. Network Not available"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    if-le v3, v10, :cond_4

    sget-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->deinit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Exception pinging click in background"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->deinit()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Exception ping to server "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    :try_start_3
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getImai()Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->getMaxRetry()I

    move-result v6

    invoke-static {}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_7

    if-ge v3, v6, :cond_7

    const-string v6, "[InMobi]-[Network]-4.4.1"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Retrying to ping in background after "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit16 v8, v1, 0x3e8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " secs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a:Ljava/lang/Thread;

    monitor-enter v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    sget-object v7, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a:Ljava/lang/Thread;

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    :try_start_6
    const-string v1, "[InMobi]-[Network]-4.4.1"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Processing click in background: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_b

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->processClickUrlInWebview(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "[InMobi]-[Network]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Ping in webview successful: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    :cond_8
    :goto_3
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->size()I

    move-result v0

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getImai()Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->getmDefaultEventsBatch()I

    move-result v1

    if-le v0, v1, :cond_3

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->saveClickEvents()V

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->clear()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    :catch_2
    move-exception v1

    :try_start_7
    const-string v7, "[InMobi]-[Network]-4.4.1"

    const-string v8, "Network thread wait failure"

    invoke-static {v7, v8, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v6

    throw v0

    :cond_9
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setRetryCount(I)V

    if-le v3, v10, :cond_a

    sget-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v0, "[InMobi]-[Network]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Ping in webview failed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-virtual {v1, v2, v5}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->processClickHttpClient(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "[InMobi]-[Network]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Ping successful: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    goto :goto_3

    :cond_c
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setRetryCount(I)V

    if-le v3, v10, :cond_d

    sget-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string v0, "[InMobi]-[Network]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Ping  failed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->b:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    :cond_e
    const-string v0, "[InMobi]-[Network]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Ping failed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_3

    :cond_f
    :try_start_9
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;->c:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->deinit()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0
.end method
