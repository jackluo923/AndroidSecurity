.class public Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;
.super Ljava/lang/Object;
.source "LogcatDumpManager.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, ".*(GC_EXPLICIT|GC_ALLOC|GC_CONCURRENT|GC_FOR_ALLOC|WAIT_FOR_CONCURRENT_GC|Grow heap).*"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->a:Ljava/lang/String;

    .line 31
    const-class v0, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->d:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;
    .locals 3

    .prologue
    .line 40
    const-class v1, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->b:Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->b:Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :goto_0
    monitor-exit v1

    return-object v0

    .line 42
    :cond_0
    :try_start_1
    const-class v2, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->b:Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->b:Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;

    .line 45
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :try_start_3
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->b:Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 57
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 59
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 60
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 63
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-eq v2, v4, :cond_1

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v5, "system"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    :cond_1
    const/16 v4, 0x7c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 77
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->c:Ljava/lang/String;

    const-string/jumbo v3, "start logcatDump"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string/jumbo v1, "logcat -v time -d -b main -b system"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 83
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    invoke-direct {v1, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 86
    const/4 v2, 0x0

    move v0, v2

    .line 88
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v4

    if-eqz v4, :cond_3

    add-int/lit8 v2, v0, 0x1

    const/16 v5, 0x4e20

    if-gt v0, v5, :cond_2

    .line 92
    :try_start_4
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 93
    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ".*\\([\\s]{0,10}("

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ")\\).*"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 97
    goto :goto_0

    .line 100
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    new-instance v5, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v6, "logcat"

    const-string/jumbo v7, ""

    sget-object v8, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move v0, v2

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "skip:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 104
    goto :goto_0

    :cond_2
    move v0, v2

    .line 107
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "end logcatDump:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 115
    if-eqz v3, :cond_4

    .line 116
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 118
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 127
    :cond_5
    :goto_1
    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "monitor"

    const-string/jumbo v2, "destroy logcatDump"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 121
    :catch_1
    move-exception v0

    .line 122
    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 112
    :goto_2
    :try_start_9
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->c:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 115
    if-eqz v2, :cond_6

    .line 116
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 118
    :cond_6
    if-eqz v1, :cond_5

    .line 119
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 121
    :catch_3
    move-exception v0

    .line 122
    :try_start_b
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    .line 114
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 115
    :goto_3
    if-eqz v3, :cond_7

    .line 116
    :try_start_c
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 118
    :cond_7
    if-eqz v1, :cond_8

    .line 119
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 123
    :cond_8
    :goto_4
    :try_start_d
    throw v0

    .line 121
    :catch_4
    move-exception v1

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/logmonitor/util/dump/LogcatDumpManager;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_4

    .line 114
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_3

    .line 111
    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method
