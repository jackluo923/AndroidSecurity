.class public Lcom/google/analytics/tracking/android/GAServiceManager;
.super Lcom/google/analytics/tracking/android/ServiceManager;


# static fields
.field private static final MSG_KEY:I = 0x1

.field private static final MSG_OBJECT:Ljava/lang/Object;

.field private static instance:Lcom/google/analytics/tracking/android/GAServiceManager;


# instance fields
.field private connected:Z

.field private ctx:Landroid/content/Context;

.field private dispatchPeriodInSeconds:I

.field private handler:Landroid/os/Handler;

.field private listenForNetwork:Z

.field private listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

.field private networkReceiver:Lcom/google/analytics/tracking/android/GANetworkReceiver;

.field private pendingDispatch:Z

.field private pendingForceLocalDispatch:Z

.field private pendingHostOverride:Ljava/lang/String;

.field private store:Lcom/google/analytics/tracking/android/AnalyticsStore;

.field private storeIsEmpty:Z

.field private volatile thread:Lcom/google/analytics/tracking/android/AnalyticsThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ServiceManager;-><init>()V

    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listenForNetwork:Z

    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceManager$1;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GAServiceManager$1;-><init>(Lcom/google/analytics/tracking/android/GAServiceManager;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;Lcom/google/analytics/tracking/android/AnalyticsStore;Z)V
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/ServiceManager;-><init>()V

    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listenForNetwork:Z

    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceManager$1;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GAServiceManager$1;-><init>(Lcom/google/analytics/tracking/android/GAServiceManager;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    iput-object p3, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    iput-boolean p4, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listenForNetwork:Z

    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/tracking/android/GAServiceManager;->initialize(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/analytics/tracking/android/GAServiceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/GAServiceManager;)I
    .locals 1

    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/analytics/tracking/android/GAServiceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/analytics/tracking/android/GAServiceManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static clearInstance()V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    return-void
.end method

.method public static getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;
    .locals 1

    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceManager;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/GAServiceManager;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    return-object v0
.end method

.method private initializeHandler()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/analytics/tracking/android/GAServiceManager$2;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/GAServiceManager$2;-><init>(Lcom/google/analytics/tracking/android/GAServiceManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private initializeNetworkReceiver()V
    .locals 2

    new-instance v0, Lcom/google/analytics/tracking/android/GANetworkReceiver;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GANetworkReceiver;-><init>(Lcom/google/analytics/tracking/android/ServiceManager;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->networkReceiver:Lcom/google/analytics/tracking/android/GANetworkReceiver;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->networkReceiver:Lcom/google/analytics/tracking/android/GANetworkReceiver;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GANetworkReceiver;->register(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized dispatchLocalHits()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    if-nez v0, :cond_0

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->DISPATCH:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsThread;->dispatch()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getListener()Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    return-object v0
.end method

.method declared-synchronized getStore()Lcom/google/analytics/tracking/android/AnalyticsStore;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;-><init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingHostOverride:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsStore;->getDispatcher()Lcom/google/analytics/tracking/android/Dispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingHostOverride:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/Dispatcher;->overrideHostUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingHostOverride:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceManager;->initializeHandler()V

    :cond_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->networkReceiver:Lcom/google/analytics/tracking/android/GANetworkReceiver;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listenForNetwork:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceManager;->initializeNetworkReceiver()V

    :cond_3
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized initialize(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchLocalHits()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z

    :cond_2
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingForceLocalDispatch:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/GAServiceManager;->setForceLocalDispatch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingForceLocalDispatch:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onRadioPowered()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized overrideHostUrl(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingHostOverride:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsStore;->getDispatcher()Lcom/google/analytics/tracking/android/Dispatcher;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/Dispatcher;->overrideHostUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setForceLocalDispatch()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    if-nez v0, :cond_0

    const-string v0, "setForceLocalDispatch() queued. It will be called once initialization is complete."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingForceLocalDispatch:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_FORCE_LOCAL_DISPATCH:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsThread;->setForceLocalDispatch()V

    goto :goto_0
.end method

.method public declared-synchronized setLocalDispatchPeriod(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-string v0, "Dispatch period set with null handler. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_DISPATCH_PERIOD:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    iput p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updateConnectivityStatus(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/analytics/tracking/android/GAServiceManager;->updatePowerSaveMode(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updatePowerSaveMode(ZZ)V
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PowerSaveMode "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    const-string v0, "initiated."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->storeIsEmpty:Z

    iput-boolean p2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->connected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    const-string v0, "terminated."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
