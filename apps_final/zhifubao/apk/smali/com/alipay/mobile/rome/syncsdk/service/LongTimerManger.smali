.class public Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;
.super Ljava/lang/Object;
.source "LongTimerManger.java"


# static fields
.field private static volatile a:Ljava/util/concurrent/ScheduledExecutorService;

.field private static volatile b:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;


# instance fields
.field private volatile c:Ljava/util/concurrent/ScheduledFuture;

.field private volatile d:Ljava/util/concurrent/ScheduledFuture;

.field private volatile e:Ljava/util/concurrent/ScheduledFuture;

.field private volatile f:Ljava/util/concurrent/ScheduledFuture;

.field private volatile g:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$LongLinkThreadFactory;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$LongLinkThreadFactory;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 25
    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method private static declared-synchronized a()V
    .locals 3

    .prologue
    .line 479
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    :cond_0
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v2, "checkExecutorService: newSingleThreadScheduledExecutor "

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$LongLinkThreadFactory;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$LongLinkThreadFactory;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 483
    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->a:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :cond_1
    monitor-exit v1

    return-void

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic access$0(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->g:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->d:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->e:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->f:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->b:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    if-nez v0, :cond_1

    .line 68
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->b:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->b:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    .line 68
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->b:Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized clearAllTimers()V
    .locals 2

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v1, "clearAllTimers: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->stopHeartBeatTimer()V

    .line 285
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->stopHeartBeatReplayCheckTimer()V

    .line 286
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->stopInitReplayCheckTimer()V

    .line 287
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->stopDelayedConnectTimer()V

    .line 288
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->stopSpdyWaitTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isHeartBeatReplayCheckTimerSubbmitted()Z
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->d:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    const/4 v0, 0x0

    .line 180
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSpdyWaitTimerSubmitted()Z
    .locals 4

    .prologue
    .line 266
    monitor-enter p0

    const/4 v0, 0x0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->f:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    const/4 v0, 0x1

    .line 271
    :cond_0
    const-string/jumbo v1, "sync_link_LongTimerManger"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isSpdyWaitTimerSubmitted: [ ret="

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

    .line 273
    monitor-exit p0

    return v0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDelayedConnectTimer(I)V
    .locals 5

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongTimerManger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startDelayedConnectTimer: [ delay="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->a()V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->g:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->g:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const-string/jumbo v0, "sync_link_LongTimerManger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "already have a DelayedConnectTimer: [ delayedConnectFuture="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->g:Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$DelayedConnectTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$DelayedConnectTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$DelayedConnectTask;)V

    .line 111
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->a:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->g:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startFlowControlTimer(I)V
    .locals 5

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v1, "startFlowControlTimer: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->a()V

    .line 87
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$FlowControlTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$FlowControlTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$FlowControlTask;)V

    .line 88
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->a:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startHeartBeatReplayCheckTimer(JI)V
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "typeHeartBeat"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->startReplayCheckTimer(Ljava/lang/String;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startHeartBeatTimer(I)V
    .locals 5

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongTimerManger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startHeartBeatTimer: [ delay="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->a()V

    .line 136
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->stopHeartBeatTimer()V

    .line 138
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$HeartBeatTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$HeartBeatTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$HeartBeatTask;)V

    .line 139
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->a:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->c:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startInitReplayCheckTimer(JI)V
    .locals 1

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "typeInit"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->startReplayCheckTimer(Ljava/lang/String;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startReplayCheckTimer(Ljava/lang/String;JI)V
    .locals 6

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongTimerManger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startReplayCheckTimer: [ type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ sendTimeMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 209
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->a()V

    .line 212
    const-string/jumbo v0, "typeHeartBeat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->stopHeartBeatReplayCheckTimer()V

    .line 216
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Ljava/lang/String;JI)V

    .line 218
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->a:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->d:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :cond_0
    :try_start_1
    const-string/jumbo v0, "typeInit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->stopInitReplayCheckTimer()V

    .line 223
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$ReplyCheckTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Ljava/lang/String;JI)V

    .line 225
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->a:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->e:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 227
    :cond_1
    :try_start_2
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v1, "startReplayCheckTimer: [ unknown type ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized startSpdyWaitTimer(I)V
    .locals 5

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongTimerManger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startSpdyWaitTimer: [ delay="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->a()V

    .line 242
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->stopSpdyWaitTimer()V

    .line 244
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$SpdyWaitCheckTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$SpdyWaitCheckTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger$SpdyWaitCheckTask;)V

    .line 246
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->a:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopDelayedConnectTimer()V
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v1, "stopDelayedConnectTimer: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->g:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->g:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopHeartBeatReplayCheckTimer()V
    .locals 2

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v1, "stopHeartBeatReplayCheckTimer: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->d:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->d:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_0
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopHeartBeatTimer()V
    .locals 2

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v1, "stopHeartBeatTimer: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopInitReplayCheckTimer()V
    .locals 2

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v1, "stopInitReplayCheckTimer: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->e:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->e:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_0
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSpdyWaitTimer()V
    .locals 2

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongTimerManger"

    const-string/jumbo v1, "stopSpdyWaitTimer: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->f:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/LongTimerManger;->f:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_0
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
