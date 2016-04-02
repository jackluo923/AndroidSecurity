.class public Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;
.super Ljava/lang/Object;
.source "LBSLocationWrap.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;


# instance fields
.field private final EXPIRE_TIME_HALF_MINUTE_MILLIS:J

.field private final EXPIRE_TIME_TWO_MINUTES_MILLIS:J

.field private final LOCATION_TIMEOUT_MILLIS:J

.field private handler:Landroid/os/Handler;

.field private isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lbsListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/util/LBSWrapListener;",
            ">;"
        }
    .end annotation
.end field

.field private locationListener:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

.field private logger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

.field private timeOutCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "LBSLocationWrap"

    sput-object v0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->handler:Landroid/os/Handler;

    .line 34
    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->timeOutCallback:Ljava/lang/Runnable;

    .line 38
    const-wide/16 v0, 0x1f40

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->LOCATION_TIMEOUT_MILLIS:J

    .line 40
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->EXPIRE_TIME_HALF_MINUTE_MILLIS:J

    .line 42
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->EXPIRE_TIME_TWO_MINUTES_MILLIS:J

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->lbsListenerList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->locationListener:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    .line 146
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    .line 147
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->logger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 148
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->logger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;)Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;ZLcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->onLocationCallback(ZLcom/alipay/mobile/common/lbs/LBSLocation;)V

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->monitorLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->checkLocationTimeOut()V

    return-void
.end method

.method private checkLocationTimeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->timeOutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->logger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "location timeout"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    .line 198
    invoke-direct {p0, v3, v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->onLocationCallback(ZLcom/alipay/mobile/common/lbs/LBSLocation;)V

    .line 199
    const-string/jumbo v0, "timeout"

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->monitorLog(Ljava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method

.method private getCacheByExpires(J)Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    .line 151
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_1

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLocalTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 154
    cmp-long v3, v1, p1

    if-gtz v3, :cond_0

    .line 155
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->logger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    sget-object v4, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "timespan ok: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long/2addr v1, v7

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " expires seconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v5, p1, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    return-object v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->logger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    sget-object v3, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "timespan failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long/2addr v1, v7

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " expires seconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v4, p1, v7

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->logger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "proxy.getLastKnownLocation is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getConfigTimeMills(Ljava/lang/String;J)J
    .locals 4

    .prologue
    .line 215
    .line 216
    invoke-static {p1}, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 223
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 228
    :cond_0
    :goto_1
    return-wide p2

    :catch_0
    move-exception v0

    move-wide v0, p2

    goto :goto_0

    :cond_1
    move-wide p2, v0

    goto :goto_1
.end method

.method private getExpireTimeMills()J
    .locals 3

    .prologue
    .line 210
    const-string/jumbo v0, "O2OHOME_LBS_CACHE_EXPIRE_SECONDS"

    const-wide/32 v1, 0x1d4c0

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->getConfigTimeMills(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;
    .locals 2

    .prologue
    .line 78
    const-class v1, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->instance:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->instance:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    .line 82
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->instance:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTimeoutMillis()J
    .locals 3

    .prologue
    .line 205
    const-string/jumbo v0, "O2OHOME_LBS_TIMEOUT_SECONDS"

    const-wide/16 v1, 0x1f40

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->getConfigTimeMills(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private monitorLog(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 236
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;-><init>()V

    .line 237
    const-string/jumbo v1, "O2O_LBS"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->setSubType(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    move-result-object v0

    .line 238
    const-string/jumbo v1, "O2O"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->setParam1(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    move-result-object v0

    .line 239
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->setParam2(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    move-result-object v0

    .line 240
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->getTimeoutMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->setParam3(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    move-result-object v0

    .line 241
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;)V

    .line 242
    return-void
.end method

.method private declared-synchronized onLocationCallback(ZLcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 2

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->lbsListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->lbsListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 168
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSWrapListener;

    .line 169
    invoke-interface {v0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSWrapListener;->onLocationResult(ZLcom/alipay/mobile/common/lbs/LBSLocation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setTimeOutCallback()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->handler:Landroid/os/Handler;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->timeOutCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->timeOutCallback:Ljava/lang/Runnable;

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->timeOutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->timeOutCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->getTimeoutMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    return-void
.end method


# virtual methods
.method public getExpiresHalfMinute()Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 2

    .prologue
    .line 116
    const-wide/16 v0, 0x7530

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->getCacheByExpires(J)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    return-object v0
.end method

.method public getExpiresTwoMinutes()Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->getExpireTimeMills()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->getCacheByExpires(J)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    return-object v0
.end method

.method public getLastLocation()Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->logger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "get last location"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    return-object v0
.end method

.method public getLastLocation(I)Lcom/alipay/mobile/common/lbs/LBSLocation;
    .locals 2

    .prologue
    .line 133
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->getCacheByExpires(J)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized startLocationTask(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSWrapListener;)V
    .locals 3

    .prologue
    .line 90
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->lbsListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->logger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "start location task"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->setTimeOutCallback()V

    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    .line 96
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->locationListener:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopLocationTask(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSWrapListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    return-void
.end method
