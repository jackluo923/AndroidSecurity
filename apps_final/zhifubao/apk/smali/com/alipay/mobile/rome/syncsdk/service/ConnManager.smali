.class public Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;
.super Ljava/lang/Object;
.source "ConnManager.java"


# instance fields
.field private volatile a:Landroid/content/Context;

.field private volatile b:Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

.field private volatile c:J

.field private volatile d:J

.field private volatile e:J

.field private volatile f:J

.field private volatile g:J

.field private volatile h:J

.field private volatile i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

.field private volatile j:I

.field private volatile k:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;

.field private volatile l:Ljava/util/concurrent/ExecutorService;

.field private volatile m:Ljava/util/concurrent/Future;

.field private volatile n:Ljava/util/concurrent/Future;

.field private volatile o:Ljava/util/concurrent/Future;

.field private volatile p:Ljava/util/concurrent/Future;

.field private volatile q:Ljava/util/concurrent/Future;

.field private volatile r:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;)V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string/jumbo v0, "sync_link_ConnManager"

    const-string/jumbo v1, "ConnManager: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a:Landroid/content/Context;

    .line 117
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    .line 119
    sget v0, Lcom/alipay/mobile/rome/syncsdk/transport/c/b;->c:I

    iput v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->j:I

    .line 120
    return-void
.end method

.method private a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 3

    .prologue
    .line 685
    const-string/jumbo v0, "sync_link_ConnManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "submitTask:[ task="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->l:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->l:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->l:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    :cond_0
    const-string/jumbo v0, "sync_link_ConnManager"

    const-string/jumbo v1, "submitTask:[ newSingleThreadExecutor restart]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager$1;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->l:Ljava/util/concurrent/ExecutorService;

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->l:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 142
    const-string/jumbo v1, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    :goto_0
    return v0

    .line 146
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isForceStopped()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    const-string/jumbo v1, "sync_link_ConnManager"

    const-string/jumbo v2, "checkCanConnect: [ isForceStopped=true ] "

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isReconnEnable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    const-string/jumbo v1, "sync_link_ConnManager"

    const-string/jumbo v2, "checkCanConnect: [ isReconnEnable=false ] "

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isNetAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 155
    const-string/jumbo v1, "sync_link_ConnManager"

    const-string/jumbo v2, "checkCanConnect: [ isNetAvailable=false ] "

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->clearAllTimers()V

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->m:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->m:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->m:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->o:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->o:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->o:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->p:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->p:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->p:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->q:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->q:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->q:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->r:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->r:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_4

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->r:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 275
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->n:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->n:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_5

    .line 276
    const-string/jumbo v0, "sync_link_ConnManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "disconnect: [ already has a disconnect task ][ futureDisconnect="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->n:Ljava/util/concurrent/Future;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :goto_0
    return-void

    .line 282
    :cond_5
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/d;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/d;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->n:Ljava/util/concurrent/Future;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized connect()V
    .locals 3

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_ConnManager"

    const-string/jumbo v1, "connect: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 207
    :goto_0
    monitor-exit p0

    return-void

    .line 193
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->m:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->m:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->n:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->n:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    :cond_1
    const-string/jumbo v0, "sync_link_ConnManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "connect: [ already has a connect task ][ futureConnect="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->m:Ljava/util/concurrent/Future;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 200
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->isSpdyWaitTimerSubmitted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    const-string/jumbo v0, "sync_link_ConnManager"

    const-string/jumbo v1, "connect: [ isSpdyWaitTimerSubmitted=true ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_3
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->m:Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized connectOnRunned()V
    .locals 2

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_ConnManager"

    const-string/jumbo v1, "connectOnRunned: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->m:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()V
    .locals 3

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_ConnManager"

    const-string/jumbo v1, "disconnect"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/b;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 229
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdy"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->getCurrentAppStatus()Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->BACKGROUND:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    if-ne v0, v1, :cond_0

    .line 232
    const-string/jumbo v0, "sync_link_ConnManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Don\'t disconnect[spdy]["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->getCurrentAppStatus()Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectByServerNotify()V
    .locals 2

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_ConnManager"

    const-string/jumbo v1, "disconnectByServerNotify"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/b;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 246
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnectStartTime()J
    .locals 2

    .prologue
    .line 486
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnection()Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;
    .locals 3

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_ConnManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getConnection: [ connection="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->b:Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->b:Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized getCurrState()Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->getCurrState()Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastRecvHeartBeatTime()J
    .locals 2

    .prologue
    .line 560
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastRecvInitReplyTime()J
    .locals 2

    .prologue
    .line 574
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastRecvPacketTime()J
    .locals 2

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastSendHeartBeatTime()J
    .locals 2

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastSendInitPacketTime()J
    .locals 2

    .prologue
    .line 532
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLinkAddr()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;
    .locals 1

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLinkNotifier()Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;
    .locals 1

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->k:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProtocolVersion()I
    .locals 1

    .prologue
    .line 502
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 4

    .prologue
    .line 590
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->isConnected()Z

    move-result v0

    .line 591
    const-string/jumbo v1, "sync_link_ConnManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isConnected: [ isConnected="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    monitor-exit p0

    return v0

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDeviceBinded()Z
    .locals 4

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->isDeviceBinded()Z

    move-result v0

    .line 601
    const-string/jumbo v1, "sync_link_ConnManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isDeviceBinded: [ isDeviceBinded="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    monitor-exit p0

    return v0

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isNetAvailable()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->isNetAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isUserBinded()Z
    .locals 4

    .prologue
    .line 610
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->isUserBinded()Z

    move-result v0

    .line 611
    const-string/jumbo v1, "sync_link_ConnManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isUserBinded: [ isUserBinded="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    monitor-exit p0

    return v0

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConnectSucceeded()V
    .locals 1

    .prologue
    .line 650
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->onConnectSucceeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    monitor-exit p0

    return-void

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDeviceBindSended()V
    .locals 1

    .prologue
    .line 664
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->onDeviceBindSended()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    monitor-exit p0

    return-void

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRecvRegisterReply()V
    .locals 4

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->onRecvRegisterReply()V

    .line 626
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->isUserBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setConnAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 630
    :try_start_1
    const-string/jumbo v1, "sync_link_ConnManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onRecvRegisterReply: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->clearAllTimers()V

    .line 636
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->disconnect()V

    .line 639
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v0

    .line 640
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getReconnectInterval()I

    move-result v1

    .line 639
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->startDelayedConnectTimer(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRegisterSended()V
    .locals 1

    .prologue
    .line 657
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->onRegisterSended()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    monitor-exit p0

    return-void

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onUserBindSended()V
    .locals 1

    .prologue
    .line 671
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->onUserBindSended()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    monitor-exit p0

    return-void

    .line 671
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onUserUnBindSended()V
    .locals 1

    .prologue
    .line 678
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->onUserUnBindSended()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    monitor-exit p0

    return-void

    .line 678
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reconnect()V
    .locals 2

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_ConnManager"

    const-string/jumbo v1, "reconnect: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->disconnect()V

    .line 294
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 299
    :goto_0
    monitor-exit p0

    return-void

    .line 298
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->m:Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendBindUerPacket()V
    .locals 2

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_ConnManager"

    const-string/jumbo v1, "sendBindUerPacket: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 347
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isReconnEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setFailCountForOnceEnable()V

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 360
    :goto_0
    monitor-exit p0

    return-void

    .line 355
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 359
    :cond_2
    :try_start_2
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/a;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->p:Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized sendHeartBeatPacket()V
    .locals 2

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_ConnManager"

    const-string/jumbo v1, "sendHeartBeatPacket: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 337
    :goto_0
    monitor-exit p0

    return-void

    .line 327
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->isHeartBeatReplayCheckTimerSubbmitted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    const-string/jumbo v0, "sync_link_ConnManager"

    const-string/jumbo v1, "sendHeartBeatPacket: [ wait heartbeat reply ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 332
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->q:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->q:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->q:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 336
    :cond_2
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/e;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/e;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->q:Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized sendLinkDefaultData(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    const-string/jumbo v0, "sync_link_ConnManager"

    const-string/jumbo v1, "sendLinkDefaultData: [ isConnected=false ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isReconnEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setFailCountForOnceEnable()V

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 411
    :goto_0
    monitor-exit p0

    return-void

    .line 405
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v0

    .line 406
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getReconnectInterval()I

    move-result v1

    .line 405
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->startDelayedConnectTimer(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 410
    :cond_2
    :try_start_2
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/g;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/a/g;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized sendLinkSyncData(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 418
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 419
    const-string/jumbo v0, "sync_link_ConnManager"

    const-string/jumbo v1, "sendLinkSyncData: [ isConnected=false ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isReconnEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setFailCountForOnceEnable()V

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 437
    :goto_0
    monitor-exit p0

    return-void

    .line 431
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    move-result-object v0

    .line 432
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getReconnectInterval()I

    move-result v1

    .line 431
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->startDelayedConnectTimer(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 436
    :cond_2
    :try_start_2
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/h;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/a/h;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized sendRegisterPacket()V
    .locals 2

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_ConnManager"

    const-string/jumbo v1, "sendRegisterPacket: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 314
    :goto_0
    monitor-exit p0

    return-void

    .line 313
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/f;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->o:Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendUnBindUerPacket()V
    .locals 2

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_ConnManager"

    const-string/jumbo v1, "sendUnBindUerPacket: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 370
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isReconnEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setFailCountForOnceEnable()V

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 383
    :goto_0
    monitor-exit p0

    return-void

    .line 378
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 382
    :cond_2
    :try_start_2
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/i;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/i;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->r:Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setConnectStartTime(J)V
    .locals 1

    .prologue
    .line 493
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    monitor-exit p0

    return-void

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConnection(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V
    .locals 3

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_ConnManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setConnection: [ connection="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->b:Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    monitor-exit p0

    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastRecvHeartBeatTime(J)V
    .locals 1

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    monitor-exit p0

    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastRecvInitReplyTime(J)V
    .locals 1

    .prologue
    .line 581
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    monitor-exit p0

    return-void

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastRecvPacketTime(J)V
    .locals 1

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    monitor-exit p0

    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastSendHeartBeatTime(J)V
    .locals 1

    .prologue
    .line 525
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    monitor-exit p0

    return-void

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastSendInitPacketTime(J)V
    .locals 1

    .prologue
    .line 539
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    monitor-exit p0

    return-void

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLinkNotifier(Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;)V
    .locals 1

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->k:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProtocolVersion(I)V
    .locals 1

    .prologue
    .line 509
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    monitor-exit p0

    return-void

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toInitState()V
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->toInitState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
