.class public Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;
.super Ljava/lang/Object;
.source "MonitorLoggerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;


# instance fields
.field private a:Lcom/alipay/mobile/common/logging/LogContextImpl;

.field private b:Lcom/alipay/mobile/common/logging/render/ExceptionRender;

.field private c:Lcom/alipay/mobile/common/logging/render/PerformanceRender;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    .line 27
    new-instance v0, Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->b:Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    .line 28
    new-instance v0, Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    .line 29
    return-void
.end method


# virtual methods
.method public crash(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 34
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->d()Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->d()Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;->getExternalExceptionInfo(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b()Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "crash"

    const/4 v3, 0x0

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v5, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->b:Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    const-string/jumbo v6, "MonitorPoint_Crash"

    invoke-virtual {v5, v6, p1, p2}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 44
    return-void
.end method

.method public exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 48
    if-nez p2, :cond_0

    .line 67
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string/jumbo v0, "Native_Crash_In_Child_Thread:"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b()Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "crash"

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->b:Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->getDes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2, v6}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "exception"

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->b:Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->getDes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2, v6}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v6, v3, v4}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    goto :goto_0
.end method

.method public footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v8, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    new-instance v9, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v10, "footprint"

    const/4 v11, 0x0

    sget-object v12, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_FOOTPRINT:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->getDes()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v10, v11, v12, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 98
    return-void
.end method

.method public performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    .locals 12

    .prologue
    .line 71
    const-string/jumbo v0, "performance"

    .line 72
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    if-ne p1, v1, :cond_0

    .line 73
    const-string/jumbo v0, "network"

    move-object v7, v0

    .line 82
    :goto_0
    iget-object v8, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    new-instance v9, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const/4 v10, 0x0

    sget-object v11, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/MonitorLoggerImpl;->c:Lcom/alipay/mobile/common/logging/render/PerformanceRender;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->getDes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getParam1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getParam2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getParam3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/render/PerformanceRender;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v10, v11, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 87
    return-void

    .line 74
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_WEBAPP:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    if-ne p1, v1, :cond_1

    .line 75
    const-string/jumbo v0, "webapp"

    move-object v7, v0

    goto :goto_0

    .line 76
    :cond_1
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_SDKMONITOR:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    if-ne p1, v1, :cond_2

    .line 77
    const-string/jumbo v0, "sdkmonitor"

    move-object v7, v0

    goto :goto_0

    .line 78
    :cond_2
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_SYNCLINK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_SYNCPROTO:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    if-ne p1, v1, :cond_4

    .line 80
    :cond_3
    const-string/jumbo v0, "romesync"

    move-object v7, v0

    goto :goto_0

    :cond_4
    move-object v7, v0

    goto :goto_0
.end method
