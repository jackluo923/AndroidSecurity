.class public Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;
.super Ljava/lang/Object;
.source "PowerDegradeManager.java"


# static fields
.field static final a:Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:Ljava/lang/String;

.field private static f:J

.field private static g:J

.field private static h:Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;


# instance fields
.field private i:Landroid/content/Context;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->b:I

    .line 23
    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->c:I

    .line 24
    const/4 v0, 0x4

    sput v0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->d:I

    .line 26
    const-string/jumbo v0, ".action.degrade.power.wifiscan"

    sput-object v0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->e:Ljava/lang/String;

    .line 28
    const-class v0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->a:Ljava/lang/String;

    .line 33
    const-wide/32 v0, 0xf4240

    sput-wide v0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->f:J

    .line 34
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->g:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->i:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->h:Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->h:Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;

    .line 51
    :cond_0
    sget-object v0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->h:Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 141
    :goto_0
    if-eq v0, v1, :cond_1

    .line 142
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 146
    :cond_1
    if-eqz p1, :cond_2

    .line 147
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->a:Ljava/lang/String;

    const-string/jumbo v2, "killProcess now !"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 149
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 150
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 152
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private b()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->i:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 157
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 159
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 160
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->i:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 168
    :goto_0
    return v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->a:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move v0, v2

    .line 168
    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 90
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->j:I

    if-lez v1, :cond_0

    .line 91
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkPowerDegrade:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->j:I

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->a:Ljava/lang/String;

    const-string/jumbo v2, "isBackgroundRunning:false"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 100
    :cond_1
    const/4 v1, 0x1

    .line 101
    :try_start_1
    iget v2, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->j:I

    sget v3, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->d:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    move v1, v0

    .line 106
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->j:I

    sget v2, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->b:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->i:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v2, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->i:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    if-eqz v1, :cond_4

    .line 116
    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    :cond_4
    :try_start_3
    invoke-direct {p0, v1}, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->a(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :catch_0
    move-exception v0

    :try_start_4
    invoke-direct {p0, v1}, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->a(Z)V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-direct {p0, v1}, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->a(Z)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final a(FLcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;)V
    .locals 7

    .prologue
    const/high16 v2, 0x41f00000    # 30.0f

    const/4 v3, 0x0

    .line 56
    if-nez p2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_2

    iget-wide v0, p2, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->l:J

    sget-wide v4, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->f:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    iget-wide v0, p2, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    const-wide v4, 0x40e86a0000000000L    # 50000.0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_2

    .line 64
    iget v0, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->j:I

    sget v1, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->j:I

    .line 68
    :cond_2
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_3

    iget-wide v0, p2, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->o:J

    sget-wide v4, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->g:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    .line 70
    iget v0, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->j:I

    sget v1, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->j:I

    .line 71
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;

    invoke-direct {v0}, Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/sensor/SensorDiagnosis;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "monitor.action.dump.sensor"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    :cond_3
    :goto_1
    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_4

    iget-wide v0, p2, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4

    .line 77
    iget v0, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->j:I

    sget v1, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->j:I

    .line 81
    :cond_4
    iget v0, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->j:I

    if-lez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "degradeActionFlag is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " caused by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->a:Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 71
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->a:Ljava/lang/String;

    const-string/jumbo v2, " Wallet process in not runnning."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
