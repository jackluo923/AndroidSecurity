.class public Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/inmobi/androidsdk/impl/imai/db/ClickData;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2f06392ad58e8bbL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static declared-synchronized getLoggedClickEvents()Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;
    .locals 7

    const-class v2, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->getInstance()Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->getNoOfEvents()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getImai()Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->getmDefaultEventsBatch()I

    move-result v0

    invoke-static {}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->getInstance()Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;

    move-result-object v1

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getImai()Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->getmMaxDb()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->setDBLimit(I)V

    invoke-static {}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->getInstance()Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->getClickEvents(I)Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->getClickId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->getInstance()Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->deleteClickEvents(Ljava/util/ArrayList;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    :cond_1
    if-eqz v0, :cond_2

    :goto_1
    monitor-exit v2

    return-object v0

    :cond_2
    :try_start_2
    new-instance v0, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getClickEvent(J)Lcom/inmobi/androidsdk/impl/imai/db/ClickData;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->getClickId()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "[InMobi]-[Network]-4.4.1"

    const-string v3, "Cant get click event"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public declared-synchronized reduceRetryCount(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->getClickEvent(J)Lcom/inmobi/androidsdk/impl/imai/db/ClickData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->getRetryCount()I

    move-result v1

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->removeClickEvent(J)Z

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->getRetryCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setRetryCount(I)V

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Cant reduce retry count"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeClickEvent(J)Z
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->getClickEvent(J)Lcom/inmobi/androidsdk/impl/imai/db/ClickData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "[InMobi]-[Network]-4.4.1"

    const-string v3, "Cant remove click event"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveClickEvents()V
    .locals 3

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Save ping events"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;

    invoke-static {}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->getInstance()Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->insertClick(Lcom/inmobi/androidsdk/impl/imai/db/ClickData;)V

    goto :goto_0

    :cond_0
    return-void
.end method
