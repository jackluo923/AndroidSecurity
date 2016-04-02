.class public Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;
.super Ljava/lang/Object;
.source "TrafficConsumeInfo.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->c:I

    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->a:Landroid/content/Context;

    .line 84
    return-void
.end method


# virtual methods
.method public calcGprsBytes()J
    .locals 4

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public calcRxBytes()J
    .locals 4

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    goto :goto_0
.end method

.method public calcTotalBytes()J
    .locals 4

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public calcTxBytes()J
    .locals 4

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    goto :goto_0
.end method

.method public calcWifiBytes()J
    .locals 4

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getGprsRxBytes()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    return-wide v0
.end method

.method public getGprsTxBytes()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    return-wide v0
.end method

.method public getLoadSecondTime()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->b:J

    return-wide v0
.end method

.method public getTotalRxBytes()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    return-wide v0
.end method

.method public getTotalTxBytes()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->c:I

    return v0
.end method

.method public getWifiRxBytes()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    return-wide v0
.end method

.method public getWifiTxBytes()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    return-wide v0
.end method

.method public load(Z)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 188
    const/4 v1, 0x0

    .line 190
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v7, v0

    .line 195
    :goto_0
    if-nez v7, :cond_1

    .line 308
    :cond_0
    :goto_1
    return-void

    .line 191
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v7, v1

    goto :goto_0

    .line 199
    :cond_1
    iget v4, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    div-long/2addr v0, v8

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->b:J

    .line 205
    invoke-static {v4}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    .line 206
    cmp-long v5, v0, v2

    if-gez v5, :cond_2

    move-wide v0, v2

    .line 209
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->setTotalRxBytes(J)V

    .line 211
    invoke-static {v4}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 212
    cmp-long v8, v4, v2

    if-gez v8, :cond_3

    move-wide v4, v2

    .line 215
    :cond_3
    invoke-virtual {p0, v4, v5}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->setTotalTxBytes(J)V

    .line 217
    if-eqz p1, :cond_4

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    .line 222
    :cond_4
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 223
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const/4 v1, 0x0

    .line 232
    :try_start_1
    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 235
    if-nez v0, :cond_9

    .line 283
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "TrafficConsumeInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "load:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-wide v4, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_5

    .line 286
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    .line 289
    :cond_5
    iget-wide v4, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_6

    .line 290
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    .line 293
    :cond_6
    iget-wide v4, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_7

    .line 294
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    .line 297
    :cond_7
    iget-wide v4, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_8

    .line 298
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    .line 301
    :cond_8
    if-eqz v1, :cond_0

    .line 303
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 304
    :catch_1
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 239
    :cond_9
    :try_start_3
    const-class v4, Landroid/net/INetworkStatsService;

    const-string/jumbo v7, "getMobileIfaces"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 240
    if-nez v4, :cond_e

    .line 283
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "TrafficConsumeInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "load:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-wide v4, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_a

    .line 286
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    .line 289
    :cond_a
    iget-wide v4, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_b

    .line 290
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    .line 293
    :cond_b
    iget-wide v4, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_c

    .line 294
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    .line 297
    :cond_c
    iget-wide v4, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_d

    .line 298
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    .line 301
    :cond_d
    if-eqz v1, :cond_0

    .line 303
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 304
    :catch_2
    move-exception v0

    goto :goto_2

    .line 244
    :cond_e
    :try_start_5
    invoke-interface {v0}, Landroid/net/INetworkStatsService;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 245
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 246
    if-eqz v4, :cond_f

    array-length v0, v4

    if-eqz v0, :cond_f

    .line 248
    array-length v8, v4

    move v0, v6

    :goto_3
    if-ge v0, v8, :cond_f

    aget-object v6, v4, v0

    .line 249
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 252
    :cond_f
    new-instance v0, Ljava/io/FileReader;

    const-string/jumbo v4, "/proc/net/xt_qtaguid/stats"

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 253
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 256
    :cond_10
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 257
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 258
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 265
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo v1, "0x0"

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 267
    iget-wide v8, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    const/4 v1, 0x7

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    .line 268
    iget-wide v8, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 280
    :catch_3
    move-exception v0

    move-object v1, v4

    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 283
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "TrafficConsumeInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "load:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-wide v4, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_11

    .line 286
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    .line 289
    :cond_11
    iget-wide v4, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_12

    .line 290
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    .line 293
    :cond_12
    iget-wide v4, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_13

    .line 294
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    .line 297
    :cond_13
    iget-wide v4, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_14

    .line 298
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    .line 301
    :cond_14
    if-eqz v1, :cond_0

    .line 303
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_1

    .line 304
    :catch_4
    move-exception v0

    goto/16 :goto_2

    .line 270
    :cond_15
    :try_start_9
    const-string/jumbo v1, "wlan0"

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v1, "0x0"

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 272
    iget-wide v8, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    .line 273
    iget-wide v8, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 283
    :catchall_0
    move-exception v0

    :goto_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v5, "TrafficConsumeInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "load:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-wide v5, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    cmp-long v1, v5, v2

    if-gez v1, :cond_16

    .line 286
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    .line 289
    :cond_16
    iget-wide v5, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    cmp-long v1, v5, v2

    if-gez v1, :cond_17

    .line 290
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    .line 293
    :cond_17
    iget-wide v5, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    cmp-long v1, v5, v2

    if-gez v1, :cond_18

    .line 294
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    .line 297
    :cond_18
    iget-wide v5, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    cmp-long v1, v5, v2

    if-gez v1, :cond_19

    .line 298
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    .line 301
    :cond_19
    if-eqz v4, :cond_1a

    .line 303
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 283
    :cond_1a
    :goto_7
    throw v0

    .line 304
    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 283
    :cond_1b
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TrafficConsumeInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "load:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    .line 286
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    .line 289
    :cond_1c
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1d

    .line 290
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    .line 293
    :cond_1d
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1e

    .line 294
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    .line 297
    :cond_1e
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1f

    .line 298
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    .line 301
    :cond_1f
    if-eqz v4, :cond_0

    .line 303
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_1

    .line 304
    :catch_6
    move-exception v0

    goto/16 :goto_2

    .line 283
    :catchall_1
    move-exception v0

    move-object v4, v1

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    move-object v4, v1

    goto/16 :goto_6

    .line 280
    :catch_7
    move-exception v0

    goto/16 :goto_5
.end method

.method public readFromSP(Landroid/content/SharedPreferences;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 312
    if-eqz p1, :cond_0

    .line 313
    const-string/jumbo v0, "loadSecondTime"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->b:J

    .line 314
    const-string/jumbo v0, "version"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->c:I

    .line 315
    const-string/jumbo v0, "totalTxBytes"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    .line 316
    const-string/jumbo v0, "totalRxBytes"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    .line 317
    const-string/jumbo v0, "wifiTxBytes"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    .line 318
    const-string/jumbo v0, "wifiRxBytes"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    .line 319
    const-string/jumbo v0, "gprsTxBytes"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    .line 320
    const-string/jumbo v0, "gprsRxBytes"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    .line 322
    :cond_0
    return-void
.end method

.method public setGprsRxBytes(J)V
    .locals 0

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    .line 108
    return-void
.end method

.method public setGprsTxBytes(J)V
    .locals 0

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    .line 104
    return-void
.end method

.method public setLoadSecondTime(J)V
    .locals 0

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->b:J

    .line 72
    return-void
.end method

.method public setTotalRxBytes(J)V
    .locals 0

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    .line 92
    return-void
.end method

.method public setTotalTxBytes(J)V
    .locals 0

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    .line 88
    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->c:I

    .line 80
    return-void
.end method

.method public setWifiRxBytes(J)V
    .locals 0

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    .line 100
    return-void
.end method

.method public setWifiTxBytes(J)V
    .locals 0

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    .line 96
    return-void
.end method

.method public subtraction(Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;)V
    .locals 4

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->b:J

    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getLoadSecondTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->b:J

    .line 170
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getTotalRxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    .line 171
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getTotalTxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    .line 173
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getWifiRxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    .line 174
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getWifiTxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    .line 176
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getGprsRxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    .line 177
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    invoke-virtual {p1}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getGprsTxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    .line 179
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " version="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " loadSecondTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " totalTxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " totalRxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " wifiTxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " wifiRxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " gprsTxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " gprsRxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToSP(Landroid/content/SharedPreferences;)V
    .locals 4

    .prologue
    .line 326
    if-eqz p1, :cond_0

    .line 327
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "loadSecondTime"

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 328
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "version"

    iget v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "totalTxBytes"

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->d:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 330
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "totalRxBytes"

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->e:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 331
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "wifiTxBytes"

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->f:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 332
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "wifiRxBytes"

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->g:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 333
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "gprsTxBytes"

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->h:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 334
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "gprsRxBytes"

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->i:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 335
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 337
    :cond_0
    return-void
.end method
