.class public Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;
.super Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;
.source "O2oHomeServiceImpl.java"


# static fields
.field private static final RT_INTERVAL_KEY:Ljava/lang/String; = "NEARBY_SCAN_INTERVAL"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private deviceScanListener:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

.field private locationListener:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSWrapListener;

.field private mBeaconManager:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;

.field private mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

.field private mHandler:Landroid/os/Handler;

.field private mIsBeaconReturn:Z

.field private mIsLocationReturn:Z

.field private mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

.field private mLastUpdateTime:J

.field private mSystemIntervalTime:J

.field private final mainRequestReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "com.alipay.android.phone.discovery.o2ohome.O2oHomeService"

    sput-object v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;-><init>()V

    .line 57
    iput-wide v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateTime:J

    .line 58
    iput-wide v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mSystemIntervalTime:J

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    .line 62
    iput-boolean v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsLocationReturn:Z

    .line 63
    iput-boolean v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsBeaconReturn:Z

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mainRequestReceiver:Landroid/content/BroadcastReceiver;

    .line 218
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->locationListener:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSWrapListener;

    .line 259
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$3;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->deviceScanListener:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)Z
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->needUpdate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    return-void
.end method

.method static synthetic access$10()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->getUserIdForCache()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsBeaconReturn:Z

    return v0
.end method

.method static synthetic access$12(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;)V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->update(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsLocationReturn:Z

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsBeaconReturn:Z

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->startLocation()V

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->startBeaconScan()V

    return-void
.end method

.method static synthetic access$6(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->sendError(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V

    return-void
.end method

.method static synthetic access$7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->executeRpc(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V

    return-void
.end method

.method static synthetic access$9(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mBeaconManager:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;

    return-object v0
.end method

.method private executeRpc(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    .locals 1

    .prologue
    .line 328
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$6;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method private getCacheTime(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->getUserIdForCache()Ljava/lang/String;

    move-result-object v1

    .line 179
    const-string/jumbo v2, "Config@O2oHome_NEARBY_SCAN_INTERVAL"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 181
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1e

    .line 196
    :goto_0
    return-wide v0

    .line 181
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 184
    :cond_2
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$4;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$4;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 195
    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static getUserIdForCache()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 207
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 208
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 212
    :cond_0
    const-string/jumbo v0, "GLOBAL_CACHE"

    return-object v0
.end method

.method private needUpdate()Z
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    iget-wide v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateTime:J

    cmp-long v0, v11, v3

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateTime:J

    move v0, v1

    .line 165
    :goto_0
    return v0

    .line 138
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 140
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateTime:J

    sub-long v5, v3, v5

    .line 142
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v7, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 144
    :try_start_0
    const-string/jumbo v7, "NEARBY_SCAN_INTERVAL"

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    sget-object v8, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "interval(s): "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->getCacheTime(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mSystemIntervalTime:J

    .line 148
    iget-wide v7, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mSystemIntervalTime:J

    cmp-long v0, v11, v7

    if-ltz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;->onRemoteInfo(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V

    .line 150
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mBeaconManager:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mBeaconManager:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->switchListenStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v2

    .line 153
    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    const-wide/16 v7, 0x1e

    iput-wide v7, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mSystemIntervalTime:J

    .line 158
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v7, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "systemIntervalTime(ms): "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v9, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mSystemIntervalTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v7, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "currentInterval(ms): "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateTime:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v7, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-wide v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mSystemIntervalTime:J

    const-wide/16 v7, 0x3e8

    mul-long/2addr v3, v7

    cmp-long v0, v5, v3

    if-lez v0, :cond_3

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateTime:J

    .line 162
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "update last time(ms): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 163
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 165
    goto/16 :goto_0
.end method

.method private declared-synchronized sendError(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    .locals 3

    .prologue
    .line 372
    monitor-enter p0

    if-nez p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    if-nez v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 374
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "send update with null data"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;->onRemoteInfo(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 379
    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsBeaconReturn:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsLocationReturn:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    if-nez v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    if-eqz v0, :cond_0

    .line 381
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "send update with null data"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;->onRemoteInfo(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V

    goto :goto_0

    .line 386
    :cond_3
    if-eqz p1, :cond_0

    .line 388
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsBeaconReturn:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;->latitude:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    if-nez v0, :cond_4

    .line 389
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    if-eqz v0, :cond_0

    .line 390
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "send update with null data because ibeacon and lbs error"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;->onRemoteInfo(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V

    goto :goto_0

    .line 395
    :cond_4
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsLocationReturn:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;->latitude:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    if-eqz v0, :cond_0

    .line 397
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "send update with null data because"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;->onRemoteInfo(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private startBeaconScan()V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mBeaconManager:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->deviceScanListener:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;-><init>(Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mBeaconManager:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mBeaconManager:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->switchListenStatus(I)V

    .line 311
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$5;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$5;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V

    .line 321
    const-wide/16 v2, 0x1388

    .line 311
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    return-void
.end method

.method private startLocation()V
    .locals 6

    .prologue
    .line 243
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->getInstance()Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->getExpiresHalfMinute()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u4e0a\u6b21\u5b9a\u4f4d\u65f6\u95f4(\u6beb\u79d2):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u4f7f\u7528\u4e0a\u6b21\u5b9a\u4f4d:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance v1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;

    invoke-direct {v1}, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;-><init>()V

    .line 248
    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;->latitude:Ljava/lang/String;

    .line 249
    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;->longitude:Ljava/lang/String;

    .line 250
    invoke-direct {p0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->executeRpc(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->getInstance()Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->locationListener:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSWrapListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->startLocationTask(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSWrapListener;)V

    goto :goto_0
.end method

.method private declared-synchronized update(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;)V
    .locals 4

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    iget-object v0, v0, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;->weight:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;->weight:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 417
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "don\'t need update because of weight is little! old weight : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    iget-object v3, v3, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;->weight:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " new weight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;->weight:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 417
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 421
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    .line 422
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "data is update need notify! "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;-><init>()V

    .line 424
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    iget-object v1, v1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;->redirectUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->jumpUrl:Ljava/lang/String;

    .line 425
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    iget-object v1, v1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;->logoUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->iconUrl:Ljava/lang/String;

    .line 426
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mLastUpdateResult:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    iget-object v1, v1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;->reason:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;->text:Ljava/lang/String;

    .line 427
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    if-eqz v1, :cond_0

    .line 428
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "send update start"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;->onRemoteInfo(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeService;->onCreate(Landroid/os/Bundle;)V

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    const-string/jumbo v1, "com.alipay.mobile.RETURN_TO_HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mainRequestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 104
    return-void
.end method

.method public refreshRedPointData()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public setO2ORemoteHandler(Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mCallbackHandler:Lcom/alipay/android/phone/discovery/o2ohome/O2ORemoteHandler;

    .line 109
    return-void
.end method

.method public startShare(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 117
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 118
    new-instance v1, Landroid/content/Intent;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/alipay/android/phone/discovery/o2ohome/share/ShareActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 120
    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 121
    return-void
.end method
