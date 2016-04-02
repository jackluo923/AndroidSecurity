.class public Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;
.super Ljava/lang/Object;
.source "MethodTracing.java"


# static fields
.field private static a:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->a:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;
    .locals 2

    .prologue
    .line 16
    const-class v1, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->a:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    invoke-direct {v0}, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;-><init>()V

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->a:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;

    .line 19
    :cond_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->a:Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;Ljava/lang/String;JLcom/alipay/mobile/logmonitor/util/tracing/MethodTracingCallBack;I)V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;->b(Ljava/lang/String;JLcom/alipay/mobile/logmonitor/util/tracing/MethodTracingCallBack;I)V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;JLcom/alipay/mobile/logmonitor/util/tracing/MethodTracingCallBack;I)V
    .locals 4

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, "startMethodTracing"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/FileUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-static {p1, p5}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 40
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V

    .line 41
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 42
    if-eqz p4, :cond_0

    .line 43
    invoke-interface {p4}, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracingCallBack;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, "startMethodTracing  end"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_1
    monitor-exit p0

    return-void

    .line 46
    :cond_1
    :try_start_2
    const-string/jumbo v0, "has no sdcard"

    invoke-interface {p4, v0}, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracingCallBack;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    if-eqz p4, :cond_2

    .line 50
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracingCallBack;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, "startMethodTracing  end"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 53
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "startMethodTracing  end"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;JLcom/alipay/mobile/logmonitor/util/tracing/MethodTracingCallBack;I)V
    .locals 8

    .prologue
    .line 25
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/alipay/mobile/logmonitor/util/tracing/a;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/logmonitor/util/tracing/a;-><init>(Lcom/alipay/mobile/logmonitor/util/tracing/MethodTracing;Ljava/lang/String;JLcom/alipay/mobile/logmonitor/util/tracing/MethodTracingCallBack;I)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 30
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 31
    return-void
.end method
