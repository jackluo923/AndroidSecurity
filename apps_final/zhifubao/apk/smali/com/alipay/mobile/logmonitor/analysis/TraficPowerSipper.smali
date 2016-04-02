.class public Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;
.super Ljava/lang/Object;
.source "TraficPowerSipper.java"


# static fields
.field private static final b:[I

.field private static c:Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;


# instance fields
.field final a:Landroid/content/Context;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->b:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->d:J

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    .line 87
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;
    .locals 2

    .prologue
    .line 95
    const-class v1, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->c:Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->c:Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;

    .line 98
    :cond_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->c:Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 79

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xf

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->d:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v3, :cond_16

    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v8, v6, :cond_16

    long-to-double v8, v4

    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "/proc/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/stat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [J

    sget-object v5, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->b:[I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v5, v10, v4, v11}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    aget-wide v10, v4, v3

    const/4 v3, 0x3

    aget-wide v3, v4, v3

    add-long/2addr v3, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v3, v10

    if-lez v5, :cond_0

    :goto_1
    long-to-double v3, v3

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v3, v10

    add-double/2addr v3, v8

    double-to-long v4, v3

    move-wide v3, v4

    :goto_2
    move-wide v4, v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v8, "snapshotCpuTime"

    const-wide/16 v9, -0x1

    invoke-virtual {v3, v8, v9, v10}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v10, "snapshotElapseTime"

    const-wide/16 v11, -0x1

    invoke-virtual {v3, v10, v11, v12}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v12, "snapshotCpuTime"

    invoke-virtual {v3, v12, v4, v5}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v12, "snapshotElapseTime"

    invoke-virtual {v3, v12, v6, v7}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V

    const-wide/16 v12, 0x0

    cmp-long v3, v8, v12

    if-ltz v3, :cond_3

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-gez v3, :cond_5

    .line 193
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v4, "lastTraficPowerDump"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)J

    move-result-wide v3

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 197
    sub-long v3, v5, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 199
    sget-object v7, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x3

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    cmp-long v3, v3, v7

    if-gez v3, :cond_6

    .line 400
    :cond_4
    :goto_4
    return-void

    .line 190
    :cond_5
    sub-long v3, v4, v8

    sub-long v5, v6, v10

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-ltz v7, :cond_3

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v7

    const-string/jumbo v8, "totalCpuTime"

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v9

    const-string/jumbo v10, "totalElapseTime"

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v11}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v11

    const-string/jumbo v12, "totalCpuTime"

    add-long/2addr v3, v7

    invoke-virtual {v11, v12, v3, v4}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v4, "totalElapseTime"

    add-long/2addr v5, v9

    invoke-virtual {v3, v4, v5, v6}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V

    goto :goto_3

    .line 203
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v4, "lastTraficPowerDump"

    invoke-virtual {v3, v4, v5, v6}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V

    .line 206
    const-wide/16 v36, 0x0

    .line 207
    const-wide/16 v34, 0x0

    .line 209
    const-wide/16 v47, 0x3

    .line 210
    const-wide/16 v32, 0x0

    .line 211
    const-wide/16 v30, 0x0

    .line 212
    const-wide/16 v28, 0x0

    .line 213
    const-wide/16 v26, 0x0

    .line 214
    const-wide/16 v24, 0x0

    .line 215
    const-wide/16 v22, 0x0

    .line 217
    const/16 v43, 0x0

    .line 218
    const/16 v42, 0x0

    .line 220
    const/16 v41, 0x0

    .line 221
    const/16 v40, 0x0

    .line 223
    const/16 v39, 0x0

    .line 224
    const/16 v38, 0x0

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v4, "totalCpuTime"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v6, "totalElapseTime"

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v6, v7, v8}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v8, "totalCpuTime"

    invoke-virtual {v3, v8}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v8, "totalElapseTime"

    invoke-virtual {v3, v8}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_15

    const v3, 0x3f23d70a    # 0.64f

    long-to-float v8, v4

    const/4 v9, 0x0

    add-float/2addr v8, v9

    mul-float/2addr v3, v8

    long-to-float v8, v6

    div-float/2addr v3, v8

    const v8, 0x3dcccccd    # 0.1f

    sub-float/2addr v3, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v3, v8

    const/4 v8, 0x0

    cmpg-float v8, v3, v8

    if-gez v8, :cond_15

    const/4 v3, 0x0

    move/from16 v59, v3

    :goto_5
    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, v59, v3

    if-ltz v3, :cond_7

    new-instance v3, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;->a()V

    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v8, "TraficPowerSipper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "analysisCpuBatteryLevel,totalCpuTime="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",totalElapseTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",cpuBatteryLevel"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v8, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/high16 v46, -0x40800000    # -1.0f

    .line 228
    const/high16 v45, -0x40800000    # -1.0f

    .line 229
    const/16 v44, -0x1

    .line 230
    const-wide/16 v19, 0x0

    .line 231
    const-wide/16 v17, 0x0

    .line 232
    const-wide/16 v15, 0x0

    .line 233
    const-wide/16 v13, 0x0

    .line 234
    const-wide/16 v11, 0x0

    .line 235
    const-wide/16 v9, 0x0

    .line 236
    const-wide/16 v7, 0x0

    .line 237
    const-wide/16 v5, 0x0

    .line 238
    const-wide/16 v3, 0x0

    .line 241
    :try_start_0
    new-instance v21, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;-><init>(Landroid/content/Context;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Landroid/content/SharedPreferences;

    move-result-object v49

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->readFromSP(Landroid/content/SharedPreferences;)V

    .line 243
    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getLoadSecondTime()J

    move-result-wide v36

    .line 244
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v49

    const-string/jumbo v50, "TraficPowerSipper"

    new-instance v51, Ljava/lang/StringBuilder;

    const-string/jumbo v52, "lastConsumeInfo:"

    invoke-direct/range {v51 .. v52}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v51

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-interface/range {v49 .. v51}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v49, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    move-object/from16 v50, v0

    invoke-direct/range {v49 .. v50}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;-><init>(Landroid/content/Context;)V

    .line 247
    const/16 v50, 0x0

    invoke-virtual/range {v49 .. v50}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->load(Z)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Landroid/content/SharedPreferences;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->writeToSP(Landroid/content/SharedPreferences;)V

    .line 249
    invoke-virtual/range {v49 .. v49}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getLoadSecondTime()J

    move-result-wide v34

    .line 250
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v50

    const-string/jumbo v51, "TraficPowerSipper"

    new-instance v52, Ljava/lang/StringBuilder;

    const-string/jumbo v53, "curConsumeInfo:"

    invoke-direct/range {v52 .. v53}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-interface/range {v50 .. v52}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getLoadSecondTime()J

    move-result-wide v50

    const-wide/16 v52, 0x0

    cmp-long v50, v50, v52

    if-lez v50, :cond_4

    .line 258
    move-object/from16 v0, v49

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->subtraction(Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;)V

    .line 259
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v21

    const-string/jumbo v50, "TraficPowerSipper"

    new-instance v51, Ljava/lang/StringBuilder;

    const-string/jumbo v52, "resultConsumeInfo:"

    invoke-direct/range {v51 .. v52}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v21

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {v49 .. v49}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getWifiTxBytes()J

    move-result-wide v32

    .line 262
    invoke-virtual/range {v49 .. v49}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getWifiRxBytes()J

    move-result-wide v30

    .line 264
    invoke-virtual/range {v49 .. v49}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getGprsTxBytes()J

    move-result-wide v28

    .line 265
    invoke-virtual/range {v49 .. v49}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getGprsRxBytes()J

    move-result-wide v26

    .line 267
    invoke-virtual/range {v49 .. v49}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getTotalTxBytes()J

    move-result-wide v24

    .line 268
    invoke-virtual/range {v49 .. v49}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getTotalRxBytes()J

    move-result-wide v22

    .line 270
    invoke-virtual/range {v49 .. v49}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getLoadSecondTime()J

    move-result-wide v49

    sget-object v21, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v51, 0x1

    move-object/from16 v0, v21

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v51

    div-long v47, v49, v51
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v49, v30

    move-wide/from16 v51, v32

    move-wide/from16 v53, v47

    move-wide/from16 v55, v34

    move-wide/from16 v57, v36

    move-wide/from16 v33, v24

    move-wide/from16 v35, v26

    move-wide/from16 v47, v28

    move-wide/from16 v31, v22

    .line 278
    :goto_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;->b()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v26

    .line 279
    :try_start_2
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result v21

    if-nez v21, :cond_e

    const/16 v27, 0x1

    .line 280
    :goto_7
    if-eqz v27, :cond_8

    .line 281
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v21

    const-string/jumbo v22, "TraficPowerSipper"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;->c()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v24

    .line 285
    :try_start_4
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    move-result v21

    if-nez v21, :cond_f

    const/16 v25, 0x1

    .line 286
    :goto_8
    if-eqz v25, :cond_9

    .line 287
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v21

    const-string/jumbo v22, "TraficPowerSipper"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;->d()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    move-result-object v22

    .line 291
    :try_start_6
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    move-result v21

    if-nez v21, :cond_10

    const/16 v23, 0x1

    .line 292
    :goto_9
    if-eqz v23, :cond_a

    .line 293
    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v21

    const-string/jumbo v28, "TraficPowerSipper"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;->a()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    move-object/from16 v28, v24

    move-object/from16 v29, v26

    move/from16 v30, v27

    move/from16 v27, v23

    move-object/from16 v26, v22

    move/from16 v23, v25

    .line 303
    :goto_a
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;-><init>(Landroid/content/Context;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, ":push"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static/range {v21 .. v21}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->b(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_11

    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v24, "monitor.action.MONITOR_POWER"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_b
    new-instance v24, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v24 .. v24}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d()Z

    move-result v21

    if-nez v21, :cond_b

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v21

    const-string/jumbo v22, "TraficPowerSipper"

    const-string/jumbo v25, "powerInfo refresh fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_b
    invoke-virtual/range {v24 .. v24}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b()I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    move-result v25

    .line 305
    :try_start_9
    invoke-virtual/range {v24 .. v24}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a()F
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    move-result v22

    .line 306
    :try_start_a
    invoke-virtual/range {v24 .. v24}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c()Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    move-result-object v21

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->a(Landroid/content/Context;)Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/monitor/power/degrade/PowerDegradeManager;->a(FLcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;)V

    .line 311
    if-eqz v21, :cond_14

    .line 312
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    move-wide/from16 v19, v0

    .line 313
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    move-wide/from16 v17, v0

    .line 314
    move-object/from16 v0, v21

    iget-wide v15, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->n:J

    .line 315
    move-object/from16 v0, v21

    iget-wide v13, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->m:D

    .line 316
    move-object/from16 v0, v21

    iget-wide v11, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->l:J

    .line 317
    move-object/from16 v0, v21

    iget-wide v9, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->f:J

    .line 318
    move-object/from16 v0, v21

    iget-wide v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->o:J

    .line 319
    move-object/from16 v0, v21

    iget-wide v5, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->g:J

    .line 320
    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    .line 323
    const-wide v37, 0x40f86a0000000000L    # 100000.0

    cmpg-double v21, v3, v37

    if-gez v21, :cond_13

    const-wide/32 v37, 0xaae60

    cmp-long v21, v7, v37

    if-gez v21, :cond_13

    const-wide/32 v37, 0xf4240

    cmp-long v21, v11, v37

    if-gez v21, :cond_13

    .line 324
    const/high16 v21, -0x40800000    # -1.0f

    .line 328
    :goto_c
    const/high16 v24, 0x41200000    # 10.0f

    cmpl-float v24, v21, v24

    if-lez v24, :cond_c

    :try_start_b
    sget-object v24, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v37, 0x14

    move-object/from16 v0, v24

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v37

    cmp-long v24, v19, v37

    if-lez v24, :cond_c

    .line 329
    new-instance v24, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v24 .. v24}, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;->a()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    :cond_c
    :goto_d
    move/from16 v24, v21

    move-wide/from16 v60, v5

    move-wide/from16 v62, v7

    move-wide/from16 v6, v60

    move-wide/from16 v64, v9

    move-wide/from16 v8, v62

    move-wide/from16 v66, v11

    move-wide/from16 v10, v64

    move-wide/from16 v68, v13

    move-wide/from16 v12, v66

    move-wide/from16 v70, v15

    move-wide/from16 v14, v68

    move-wide/from16 v72, v17

    move-wide/from16 v16, v70

    move-wide/from16 v74, v19

    move-wide/from16 v20, v74

    move-wide/from16 v18, v72

    move-wide/from16 v76, v3

    move-wide/from16 v4, v76

    .line 338
    :goto_e
    const-wide/16 v37, 0x0

    cmp-long v3, v53, v37

    if-lez v3, :cond_12

    .line 339
    const-wide/16 v37, 0x3e8

    div-long v37, v31, v37

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;->f()J

    move-result-wide v39

    mul-long v39, v39, v53

    cmp-long v3, v37, v39

    if-gtz v3, :cond_d

    const-wide/16 v37, 0x3e8

    div-long v37, v33, v37

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;->e()J

    move-result-wide v39

    mul-long v39, v39, v53

    cmp-long v3, v37, v39

    if-gtz v3, :cond_d

    add-long v37, v31, v33

    const-wide/16 v39, 0x3e8

    div-long v37, v37, v39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/monitor/trafic/degrade/TrafficMonitor;->g()J

    move-result-wide v39

    mul-long v39, v39, v53

    cmp-long v3, v37, v39

    if-lez v3, :cond_12

    .line 343
    :cond_d
    const/4 v3, 0x1

    .line 347
    :goto_f
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v23

    const-string/jumbo v37, "TraficPowerSipper"

    new-instance v38, Ljava/lang/StringBuilder;

    const-string/jumbo v39, "startTime="

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v38

    move-wide/from16 v1, v57

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ",endTime="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v55

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ",totalUploadSize="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ",totalDownloadSize="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "consumeBatteryLevel="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "consumeBatteryIndex="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "trafficReportDesc="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "trafficOverflowDesc="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "trafficDegradeDesc="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v23, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct/range {v23 .. v23}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    .line 360
    const-string/jumbo v37, "startTime"

    invoke-static/range {v57 .. v58}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v37, "endTime"

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string/jumbo v37, "wifiUploadSize"

    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string/jumbo v37, "wifiDownloadSize"

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string/jumbo v37, "mobileUploadSize"

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string/jumbo v37, "mobileDownloadSize"

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string/jumbo v35, "totalUploadSize"

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v35, "totalDownloadSize"

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v35, "trafficInterval"

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v35, "totalSize"

    add-long v31, v31, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string/jumbo v31, "cpuBatteryLevel"

    invoke-static/range {v59 .. v59}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string/jumbo v31, "consumeBatteryLevel"

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string/jumbo v24, "consumeBatteryLevelReal"

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string/jumbo v22, "consumeBatteryIndex"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string/jumbo v22, "trafficReport"

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string/jumbo v22, "trafficReportDesc"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string/jumbo v22, "trafficOverflow"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string/jumbo v3, "trafficOverflowDesc"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string/jumbo v3, "trafficDegrade"

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string/jumbo v3, "trafficDegradeDesc"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string/jumbo v3, "powerCpuTime"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string/jumbo v3, "powerWakelockTime"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string/jumbo v3, "powerWifilockTime"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string/jumbo v3, "powerTcpPower"

    invoke-static {v14, v15}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v14}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string/jumbo v3, "powerWifiscanTime"

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v12}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string/jumbo v3, "powerGPSTime"

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v10}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string/jumbo v3, "powerSensorTime"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v8}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string/jumbo v3, "WifiRunningTime"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string/jumbo v3, "TotalPower"

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string/jumbo v3, "TrafficPowerReport"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 397
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    move-object/from16 v0, v23

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 399
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    goto/16 :goto_4

    .line 272
    :catch_0
    move-exception v21

    .line 273
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v49

    const-string/jumbo v50, "TraficPowerSipper"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide/from16 v49, v30

    move-wide/from16 v51, v32

    move-wide/from16 v53, v47

    move-wide/from16 v55, v34

    move-wide/from16 v57, v36

    move-wide/from16 v33, v24

    move-wide/from16 v35, v26

    move-wide/from16 v47, v28

    move-wide/from16 v31, v22

    goto/16 :goto_6

    .line 279
    :cond_e
    const/16 v27, 0x0

    goto/16 :goto_7

    .line 285
    :cond_f
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 291
    :cond_10
    const/16 v23, 0x0

    goto/16 :goto_9

    .line 298
    :catch_1
    move-exception v21

    move-object/from16 v22, v38

    move/from16 v23, v39

    move-object/from16 v24, v40

    move/from16 v25, v41

    move-object/from16 v26, v42

    move/from16 v27, v43

    .line 299
    :goto_10
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v28

    const-string/jumbo v29, "TraficPowerSipper"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v28, v24

    move-object/from16 v29, v26

    move/from16 v30, v27

    move/from16 v27, v23

    move-object/from16 v26, v22

    move/from16 v23, v25

    goto/16 :goto_a

    .line 303
    :cond_11
    :try_start_c
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v22

    const-string/jumbo v24, "TraficPowerSipper"

    const-string/jumbo v25, " Wallet process in not runnning."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_b

    .line 333
    :catch_2
    move-exception v21

    move/from16 v22, v44

    move/from16 v24, v45

    move/from16 v25, v46

    move-wide/from16 v60, v7

    move-wide/from16 v62, v9

    move-wide/from16 v8, v60

    move-wide/from16 v64, v11

    move-wide/from16 v10, v62

    move-wide/from16 v66, v13

    move-wide/from16 v12, v64

    move-wide/from16 v68, v15

    move-wide/from16 v14, v66

    move-wide/from16 v70, v17

    move-wide/from16 v16, v68

    move-wide/from16 v72, v19

    move-wide/from16 v18, v70

    move-object/from16 v74, v21

    move-wide/from16 v20, v72

    move-wide/from16 v75, v3

    move-object/from16 v3, v74

    move-wide/from16 v77, v5

    move-wide/from16 v6, v77

    move-wide/from16 v4, v75

    .line 334
    :goto_11
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v37

    const-string/jumbo v38, "TraficPowerSipper"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move/from16 v60, v22

    move/from16 v22, v24

    move/from16 v24, v25

    move/from16 v25, v60

    goto/16 :goto_e

    .line 333
    :catch_3
    move-exception v21

    move/from16 v22, v25

    move/from16 v24, v45

    move/from16 v25, v46

    move-wide/from16 v60, v7

    move-wide/from16 v62, v9

    move-wide/from16 v8, v60

    move-wide/from16 v64, v11

    move-wide/from16 v10, v62

    move-wide/from16 v66, v13

    move-wide/from16 v12, v64

    move-wide/from16 v68, v15

    move-wide/from16 v14, v66

    move-wide/from16 v70, v17

    move-wide/from16 v16, v68

    move-wide/from16 v72, v19

    move-wide/from16 v18, v70

    move-object/from16 v74, v21

    move-wide/from16 v20, v72

    move-wide/from16 v75, v3

    move-object/from16 v3, v74

    move-wide/from16 v77, v5

    move-wide/from16 v6, v77

    move-wide/from16 v4, v75

    goto :goto_11

    :catch_4
    move-exception v21

    move/from16 v24, v22

    move-wide/from16 v60, v3

    move-object/from16 v3, v21

    move-wide/from16 v62, v5

    move-wide/from16 v4, v60

    move-wide/from16 v64, v7

    move-wide/from16 v6, v62

    move-wide/from16 v66, v9

    move-wide/from16 v8, v64

    move-wide/from16 v68, v11

    move-wide/from16 v10, v66

    move-wide/from16 v70, v13

    move-wide/from16 v12, v68

    move-wide/from16 v72, v15

    move-wide/from16 v14, v70

    move-wide/from16 v74, v17

    move-wide/from16 v16, v72

    move-wide/from16 v76, v19

    move-wide/from16 v20, v76

    move-wide/from16 v18, v74

    move/from16 v78, v25

    move/from16 v25, v22

    move/from16 v22, v78

    goto :goto_11

    :catch_5
    move-exception v24

    move-object/from16 v60, v24

    move/from16 v24, v22

    move/from16 v22, v25

    move/from16 v25, v21

    move-wide/from16 v61, v7

    move-wide/from16 v63, v9

    move-wide/from16 v8, v61

    move-wide/from16 v65, v11

    move-wide/from16 v10, v63

    move-wide/from16 v67, v13

    move-wide/from16 v12, v65

    move-wide/from16 v69, v15

    move-wide/from16 v14, v67

    move-wide/from16 v71, v17

    move-wide/from16 v16, v69

    move-wide/from16 v73, v19

    move-wide/from16 v20, v73

    move-wide/from16 v18, v71

    move-wide/from16 v75, v3

    move-object/from16 v3, v60

    move-wide/from16 v77, v5

    move-wide/from16 v6, v77

    move-wide/from16 v4, v75

    goto/16 :goto_11

    .line 298
    :catch_6
    move-exception v21

    move-object/from16 v22, v38

    move/from16 v23, v39

    move-object/from16 v24, v40

    move/from16 v25, v41

    move/from16 v27, v43

    goto/16 :goto_10

    :catch_7
    move-exception v21

    move-object/from16 v22, v38

    move/from16 v23, v39

    move-object/from16 v24, v40

    move/from16 v25, v41

    goto/16 :goto_10

    :catch_8
    move-exception v21

    move-object/from16 v22, v38

    move/from16 v23, v39

    move/from16 v25, v41

    goto/16 :goto_10

    :catch_9
    move-exception v21

    move-object/from16 v22, v38

    move/from16 v23, v39

    goto/16 :goto_10

    :catch_a
    move-exception v21

    move/from16 v23, v39

    goto/16 :goto_10

    :catch_b
    move-exception v21

    goto/16 :goto_10

    :cond_12
    move/from16 v3, v23

    goto/16 :goto_f

    :cond_13
    move/from16 v21, v22

    goto/16 :goto_c

    :cond_14
    move/from16 v21, v22

    goto/16 :goto_d

    :cond_15
    move/from16 v59, v3

    goto/16 :goto_5

    :cond_16
    move-wide v3, v4

    goto/16 :goto_2
.end method
