.class public Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/TimerTaskService;
.source "TimerTaskServiceImpl.java"


# instance fields
.field baseTime:J

.field lock:Ljava/lang/Object;

.field mCountDownListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mScheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

.field mTimer:Ljava/util/Timer;

.field scheduleStarted:Z

.field scheduleTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/TimerTaskService;-><init>()V

    .line 28
    iput-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mTimer:Ljava/util/Timer;

    .line 29
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->baseTime:J

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->lock:Ljava/lang/Object;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->scheduleStarted:Z

    .line 32
    iput-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->scheduleTask:Ljava/util/concurrent/ScheduledFuture;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mListeners:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mCountDownListeners:Ljava/util/Map;

    .line 66
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 68
    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mScheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 70
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->scheduleTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->scheduleTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 175
    iput-boolean v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->scheduleStarted:Z

    .line 177
    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;)Z
    .locals 3

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 107
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;

    .line 110
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;->getListener()Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mListeners:Ljava/util/Map;

    .line 188
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mCountDownListeners:Ljava/util/Map;

    .line 189
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->a()V

    .line 191
    return-void
.end method

.method public registerListener(Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;I)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 123
    :cond_0
    if-gtz p2, :cond_1

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 126
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    .line 129
    :cond_2
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;-><init>(Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;Landroid/os/Handler;)V

    .line 131
    iget-object v9, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mCountDownListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->scheduleStarted:Z

    if-nez v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mScheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;-><init>(Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$1;)V

    const-string/jumbo v2, "TimerTaskService"

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->baseTime:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->scheduleWithFixedDelay(Ljava/lang/Runnable;Ljava/lang/String;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->scheduleTask:Ljava/util/concurrent/ScheduledFuture;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->scheduleStarted:Z

    .line 140
    :cond_3
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v8

    .line 142
    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public registerListener(Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;ILandroid/os/Handler;)Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 78
    :cond_0
    if-gtz p2, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 81
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->a(Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    .line 85
    :cond_2
    if-nez p3, :cond_4

    .line 86
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;-><init>(Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;Landroid/os/Handler;)V

    .line 90
    :goto_1
    iget-object v9, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mCountDownListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->scheduleStarted:Z

    if-nez v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mScheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$TickTimerTask;-><init>(Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$1;)V

    const-string/jumbo v2, "TimerTaskService"

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->baseTime:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->scheduleWithFixedDelay(Ljava/lang/Runnable;Ljava/lang/String;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->scheduleTask:Ljava/util/concurrent/ScheduledFuture;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->scheduleStarted:Z

    .line 99
    :cond_3
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v8

    .line 101
    goto :goto_0

    .line 88
    :cond_4
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;

    invoke-direct {v0, p1, p3}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;-><init>(Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;Landroid/os/Handler;)V

    goto :goto_1

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public unregisterListener(Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 147
    if-nez p1, :cond_0

    move v0, v1

    .line 163
    :goto_0
    return v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 151
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;

    .line 154
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl$onTickListenerWrapper;->getListener()Lcom/alipay/mobile/framework/service/common/TimerTaskService$OnTickListener;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mListeners:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mCountDownListeners:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/impl/TimerTaskServiceImpl;->a()V

    .line 160
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    move v0, v1

    .line 163
    goto :goto_0
.end method
