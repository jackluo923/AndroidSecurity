.class public Lcom/alipay/mobile/common/logging/api/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static behavorLogger:Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

.field private static isBind:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static logContext:Lcom/alipay/mobile/common/logging/api/LogContext;

.field private static monitorLogger:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

.field private static traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->logContext:Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 25
    sput-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 26
    sput-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->monitorLogger:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    .line 27
    sput-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->behavorLogger:Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->isBind:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    const-class v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 22
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->reportNoInitialization()V

    return-void
.end method

.method public static declared-synchronized attachLogContext(Lcom/alipay/mobile/common/logging/api/LogContext;)V
    .locals 2

    .prologue
    .line 82
    const-class v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->logContext:Lcom/alipay/mobile/common/logging/api/LogContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit v0

    return-void

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized bind(Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;)V
    .locals 3

    .prologue
    .line 93
    const-class v1, Lcom/alipay/mobile/common/logging/api/LoggerFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->isBind:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    monitor-exit v1

    return-void

    .line 96
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->isBind:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 97
    sput-object p1, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->behavorLogger:Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    .line 98
    sput-object p2, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->monitorLogger:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    .line 99
    sput-object p0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;
    .locals 3

    .prologue
    .line 38
    const-class v1, Lcom/alipay/mobile/common/logging/api/LoggerFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->isBind:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullBehavorLogger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullBehavorLogger;-><init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->behavorLogger:Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;
    .locals 3

    .prologue
    .line 71
    const-class v1, Lcom/alipay/mobile/common/logging/api/LoggerFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->isBind:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullLogContext;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullLogContext;-><init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->logContext:Lcom/alipay/mobile/common/logging/api/LogContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;
    .locals 3

    .prologue
    .line 60
    const-class v1, Lcom/alipay/mobile/common/logging/api/LoggerFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->isBind:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullMonitorLogger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullMonitorLogger;-><init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->monitorLogger:Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .locals 3

    .prologue
    .line 49
    const-class v1, Lcom/alipay/mobile/common/logging/api/LoggerFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->isBind:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullTraceLogger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/alipay/mobile/common/logging/api/LoggerFactory$NullTraceLogger;-><init>(Lcom/alipay/mobile/common/logging/api/LoggerFactory$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->traceLogger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 104
    const-class v1, Lcom/alipay/mobile/common/logging/api/LoggerFactory;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v2, "com.alipay.mobile.common.logging.LoggerFactoryBinder"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 105
    const-string/jumbo v2, "bind"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 106
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_0
    monitor-exit v1

    return-void

    .line 107
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static reportNoInitialization()V
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->TAG:Ljava/lang/String;

    .line 114
    return-void
.end method
