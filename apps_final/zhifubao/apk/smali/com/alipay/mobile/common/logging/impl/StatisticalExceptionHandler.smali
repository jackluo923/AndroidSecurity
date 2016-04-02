.class public Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;
.super Ljava/lang/Object;
.source "StatisticalExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;


# instance fields
.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private d:Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Runnable;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->h:Landroid/content/Context;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Z

    .line 41
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/a;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/logging/impl/a;-><init>(Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->g:Ljava/lang/Runnable;

    .line 49
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;
    .locals 2

    .prologue
    .line 58
    const-class v0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->b:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 52
    const-class v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->b:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->b:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit v1

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->d:Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

    .line 88
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 122
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Z

    if-eqz v0, :cond_1

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string/jumbo v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->traceNativeCrash(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 140
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void

    .line 127
    :cond_0
    invoke-static {p1, p2}, Lcom/alibaba/motu/CrashCombineUtils;->UserTrackReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/LogContextImpl;

    .line 129
    invoke-static {p1}, Lcom/alibaba/motu/CrashCombineUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b()Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v4, "crash"

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v6, Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    invoke-direct {v6, v0}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->getDes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v1, v7}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v7, v5, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    goto :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 67
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->f:Z

    .line 68
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 69
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 72
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->h:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/motu/NativeCrashHandler;->init(Landroid/content/Context;Z)Lcom/alibaba/motu/NativeCrashHandler;

    .line 74
    invoke-static {}, Lcom/alibaba/motu/NativeCrashHandler;->getInstance()Lcom/alibaba/motu/NativeCrashHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/motu/NativeCrashHandler;->register(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 75
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->f:Z

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->d:Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 96
    .line 97
    const-string/jumbo v0, "NegligibleThrowable"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->d:Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

    if-eqz v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->d:Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;->getExternalExceptionInfo(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_1
    iget-boolean v1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 107
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->crash(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 110
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
