.class public Lcom/alipay/mobile/rome/syncservice/sync/c/a;
.super Ljava/lang/Object;
.source "SyncDispatchManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_service_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/c/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync/c/b;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/sync/c/b;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 38
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 4

    .prologue
    .line 130
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "checkAllBizNeedDispatch:"

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->b()Ljava/util/Set;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 139
    monitor-exit v1

    return-void

    .line 133
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->d(Ljava/lang/String;)Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 7

    .prologue
    .line 207
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/c/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    .line 208
    iget-object v2, p0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->biz:Ljava/lang/String;

    .line 209
    iget-object v3, p0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    .line 211
    sget-object v4, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "dispatchCmdFailed:[ userId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ][ biz="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 212
    const-string/jumbo v6, " ][ id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 211
    invoke-static {v4, v5}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 214
    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 217
    invoke-static {v2}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v0, v2, v3}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    .line 223
    invoke-static {v2}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit v1

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 7

    .prologue
    .line 184
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/c/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    .line 185
    iget-object v2, p0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    .line 186
    iget-object v3, p0, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    .line 188
    sget-object v4, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "dispatchMsgFailed:[ userId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ][ biz="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 189
    const-string/jumbo v6, " ][ id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-static {v4, v5}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 194
    invoke-static {v2}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v0, v2, v3}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    .line 200
    invoke-static {v2}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit v1

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 291
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    :cond_0
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/c/a;

    monitor-enter v1

    .line 294
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "submit: newSingleThreadScheduledExecutor "

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync/c/b;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/sync/c/b;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 297
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 293
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_3
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 305
    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 50
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchBiz:[ biz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p0}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->d(Ljava/lang/String;)Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchBiz: [ getBizCallback return null ][ biz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 55
    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_0
    monitor-exit v1

    return-void

    .line 60
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchBiz: [ biz is dispatching ][ biz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 66
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    move-result-object v2

    .line 68
    const-string/jumbo v0, "deviceBased"

    invoke-static {p0}, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 80
    :cond_2
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "dispatchBiz: [ userId=null ]"

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    const-string/jumbo v0, "userBased"

    invoke-static {p0}, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 75
    :cond_4
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "dispatchBiz: [ unknown biz ]"

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 83
    :cond_5
    :try_start_3
    invoke-virtual {v2, v0, p0}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/rome/syncservice/sync/d/a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 92
    if-nez v0, :cond_6

    .line 93
    :try_start_4
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchBiz: [ biz no msg ] [ biz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "dispatchBiz: [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :cond_6
    iget-object v2, v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->d:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 99
    iget-object v2, v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->d:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 101
    :cond_7
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/d/b;->a(Lcom/alipay/mobile/rome/syncservice/sync/d/a;)Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    move-result-object v2

    .line 103
    new-instance v3, Lcom/alipay/mobile/rome/syncservice/sync/c/f;

    .line 104
    iget-wide v4, v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:J

    iget v0, v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->g:I

    invoke-direct {v3, v2, v4, v5, v0}, Lcom/alipay/mobile/rome/syncservice/sync/c/f;-><init>(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;JI)V

    .line 103
    invoke-static {v3}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 106
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 111
    :cond_8
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/d/b;->b(Lcom/alipay/mobile/rome/syncservice/sync/d/a;)Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    move-result-object v2

    .line 113
    if-nez v2, :cond_9

    .line 114
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "dispatchBiz: [ syncCommand=null ]"

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    :cond_9
    new-instance v3, Lcom/alipay/mobile/rome/syncservice/sync/c/e;

    .line 120
    iget-wide v4, v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:J

    iget v0, v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->g:I

    invoke-direct {v3, v2, v4, v5, v0}, Lcom/alipay/mobile/rome/syncservice/sync/c/e;-><init>(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;JI)V

    .line 119
    invoke-static {v3}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 122
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 238
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/c/a;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 241
    const-string/jumbo v2, "SYNC_CALLBACK"

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ","

    const-string/jumbo v5, "#"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v5

    .line 241
    invoke-static {v2, v3, p1, v4, v5}, Lcom/alipay/mobile/rome/syncservice/d/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 246
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, p0, p1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    .line 252
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit v1

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 314
    const-class v7, Lcom/alipay/mobile/rome/syncservice/sync/c/a;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "submit: newSingleThreadScheduledExecutor "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync/c/b;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/sync/c/b;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 317
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 322
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    .line 323
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a/a;->a()I

    move-result v1

    int-to-long v4, v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    .line 322
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 325
    monitor-exit v7

    return-object v0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 170
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 172
    if-eqz v0, :cond_0

    .line 173
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_0
    monitor-exit v1

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 265
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/c/a;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 268
    const-string/jumbo v2, "SYNC_CALLBACK"

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ","

    const-string/jumbo v5, "#"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v5

    .line 268
    invoke-static {v2, v3, p1, v4, v5}, Lcom/alipay/mobile/rome/syncservice/d/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 273
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, p0, p1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    .line 279
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit v1

    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized c(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 147
    const-class v2, Lcom/alipay/mobile/rome/syncservice/sync/c/a;

    monitor-enter v2

    const/4 v1, 0x0

    .line 149
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 151
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x1

    .line 153
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isBizDispatching:[ biz="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ][ isDispatch=true ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-static {v1, v3}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :goto_0
    monitor-exit v2

    return v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
