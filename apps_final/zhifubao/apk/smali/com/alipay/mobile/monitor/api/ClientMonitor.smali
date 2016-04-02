.class public Lcom/alipay/mobile/monitor/api/ClientMonitor;
.super Ljava/lang/Object;
.source "ClientMonitor.java"


# static fields
.field private static a:Lcom/alipay/mobile/monitor/api/ClientMonitor;

.field private static final c:Ljava/lang/String;

.field private static final d:J

.field private static g:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/monitor/api/TrafficRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const-class v0, Lcom/alipay/mobile/monitor/api/ClientMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->c:Ljava/lang/String;

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->d:J

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/alipay/mobile/monitor/api/TrafficRecord;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/monitor/api/MonitorConstants;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->g:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->e:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->f:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->b:Landroid/content/Context;

    .line 43
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 44
    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 45
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 47
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    .line 48
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->e:Z

    .line 52
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    iget-object v1, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->b:Landroid/content/Context;

    const-string/jumbo v2, "com.alipay.mobile.logmonitor.ClientMonitorService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    return-object v0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/alipay/mobile/monitor/api/ClientMonitor;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/alipay/mobile/monitor/api/ClientMonitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->a:Lcom/alipay/mobile/monitor/api/ClientMonitor;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/alipay/mobile/monitor/api/ClientMonitor;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/monitor/api/ClientMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->a:Lcom/alipay/mobile/monitor/api/ClientMonitor;

    .line 58
    :cond_0
    sget-object v0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->a:Lcom/alipay/mobile/monitor/api/ClientMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;
    .locals 3

    .prologue
    .line 62
    const-class v1, Lcom/alipay/mobile/monitor/api/ClientMonitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->a:Lcom/alipay/mobile/monitor/api/ClientMonitor;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "ClientMonitor must be created by calling createInstance(Context context)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 65
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->a:Lcom/alipay/mobile/monitor/api/ClientMonitor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public autoWakeupReceiver()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/monitor/api/ClientMonitor;->c:Ljava/lang/String;

    const-string/jumbo v2, "autoWakeupReceiver"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".action.monitor.wakeup"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string/jumbo v0, "autoWakeup"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->b:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 77
    iget-object v2, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->b:Landroid/content/Context;

    const/16 v3, 0x64

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 80
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 81
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/alipay/mobile/monitor/api/ClientMonitor;->d:J

    add-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/api/ClientMonitor;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized flushTraficConsume()V
    .locals 3

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, ".monitor.action.NOTE_TRAFIC_CONSUME"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    const-string/jumbo v1, "TrafficRecordList"

    iget-object v2, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isTraficConsumeAccept(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    .line 117
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->b:Landroid/content/Context;

    const-string/jumbo v4, "trafficDegrade"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 126
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 128
    if-eqz v4, :cond_0

    const-string/jumbo v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/monitor/api/ClientMonitor;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "un TraficConsumeAccept host:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 141
    :goto_1
    return v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/monitor/api/ClientMonitor;->c:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {v3, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_1

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/monitor/api/ClientMonitor;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "un TraficConsumeAccept url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 138
    goto :goto_1

    .line 141
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public loadTrafficConsumeInfo()Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
    .locals 2

    .prologue
    .line 145
    new-instance v1, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;

    iget-object v0, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;-><init>(Landroid/content/Context;)V

    .line 147
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 148
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->load(Z)V

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 150
    sget-object v0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-object v1

    .line 151
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public noteTraficConsume(Ljava/lang/String;JJ)V
    .locals 7

    .prologue
    .line 89
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 90
    return-void
.end method

.method public declared-synchronized noteTraficConsume(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/monitor/api/TrafficRecord;

    move-object v1, p2

    move-object v2, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/monitor/api/TrafficRecord;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/api/ClientMonitor;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " noteTraficConsume: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-boolean v1, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xf

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/monitor/api/TrafficRecord;->c()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/alipay/mobile/monitor/api/TrafficRecord;->d()J

    move-result-wide v3

    add-long v0, v1, v3

    const-wide/32 v2, 0xc350

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->flushTraficConsume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_1
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateTraficDegradeCfg(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const-string/jumbo v0, ".monitor.action.REPORT_TRAFIC_STRATEGY"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "cfg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/alipay/mobile/monitor/api/ClientMonitor;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 163
    :cond_0
    return-void
.end method
