.class public Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I


# instance fields
.field private d:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;

.field private final e:Landroid/os/Handler;

.field private final f:Landroid/content/Context;

.field private g:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/k;

.field private final h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

.field private final i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

.field private final j:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

.field private final k:Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiSyncFacade;

.field private final l:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

.field private m:J

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:I

.field private q:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/j;

.field private final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final s:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final t:Ljava/util/concurrent/atomic/AtomicInteger;

.field private u:Ljava/lang/String;

.field private final v:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a:I

    const/4 v0, 0x1

    sput v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->b:I

    const/4 v0, -0x1

    sput v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v2, -0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;

    const/16 v1, 0x2710

    invoke-direct {v0, v4, v4, v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;-><init>(ZZI)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->d:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->e:Landroid/os/Handler;

    iput-wide v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->m:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    iput v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->o:I

    iput v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->p:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->u:Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/c;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->v:Landroid/os/Handler;

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->a()Lcom/alipay/mobile/framework/service/common/RpcService;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiSyncFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiSyncFacade;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->k:Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiSyncFacade;

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    const-string/jumbo v2, "wifi_update_key"

    invoke-static {v1, v2, v4}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/SharedPreferenceHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "lat"

    const-string/jumbo v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->a:Ljava/lang/String;

    const-string/jumbo v2, "lon"

    const-string/jumbo v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->b:Ljava/lang/String;

    const-string/jumbo v2, "lastTime"

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->d:J

    const-string/jumbo v2, "syncDistance"

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->c:J

    const-string/jumbo v2, "wifiCount"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->e:I

    const-string/jumbo v2, "mobileCount"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->f:I

    const-string/jumbo v2, "syncLevel"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->g:I

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ssid getLatestUpdateRecord "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    const-string/jumbo v2, "wifi_update_key"

    invoke-static {v1, v2, v4}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/SharedPreferenceHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "macSyncLat"

    const-string/jumbo v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->a:Ljava/lang/String;

    const-string/jumbo v2, "macSyncLon"

    const-string/jumbo v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->b:Ljava/lang/String;

    const-string/jumbo v2, "macLastTime"

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->c:J

    const-string/jumbo v2, "macWifiCount"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->d:I

    const-string/jumbo v2, "macMobileCount"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->f:I

    const-string/jumbo v2, "macSyncLevel"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->h:I

    const-string/jumbo v2, "macWifiTime"

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->e:J

    const-string/jumbo v2, "macMobileTime"

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->g:J

    const-string/jumbo v2, "lastDelMacTime"

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->i:J

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mac getLatestUpdateRecord "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDaoImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->l:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getInstance()Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->j:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    return-void
.end method

.method private a(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;Ljava/util/List;II)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;",
            ">;II)I"
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v1, "syncMacResultIntoDB Start"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->shops:Ljava/util/List;

    invoke-static {v0, p4, p5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "syncSsidResultIntoDB wifiSsidList="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;Ljava/util/List;)V

    invoke-interface {p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->deletOfflineSsid()V

    invoke-interface {p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->checkSsidTableSize()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->syncLevel:I

    iput v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->h:I

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget-wide v3, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->mtime:J

    iput-wide v3, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->g:J

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget-wide v3, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->wtime:J

    iput-wide v3, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->e:J

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->shops:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->shops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    invoke-interface {p2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->updateSsidTimeStamp(Ljava/util/List;)V

    iget-wide v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->expire:J

    invoke-static {v3, v0, v1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Ljava/util/List;JLcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    iget-wide v6, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->expire:J

    invoke-interface {p2, v5, v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->updateSsidMacExpireTime(Ljava/util/List;J)V

    invoke-interface {p2, v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->insertWifiMacList(Ljava/util/List;)V

    move v0, v1

    :goto_2
    iget-object v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->resultCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-wide v4, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->expire:J

    invoke-static {v3, v4, v5, p3, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Ljava/util/List;JLjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->insertWifiBlackMacList(Ljava/util/List;)V

    invoke-interface {p2, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->deletSsidMacByMacs(Ljava/util/List;)V

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget-wide v3, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->i:J

    :cond_3
    const/4 v1, 0x1

    invoke-interface {p2, v2, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->deletExpireOrOfflineMac(ZZ)V

    invoke-interface {p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->deletExpireBlackMac()V

    invoke-interface {p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->cleanWifiSynMacs()V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_4
    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "syncMacResultIntoDB End"

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/ShopVO;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/ShopVO;->ssids:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;

    iget-wide v7, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2
.end method

.method private a(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryRsp;Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)I
    .locals 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v3, "wifiQueryResultIntoDB Start"

    invoke-static {v1, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, p3, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    invoke-static {v3, v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/e/a;->a(D)I

    move-result v1

    iget-wide v3, p3, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    invoke-static {v3, v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/e/a;->b(D)I

    move-result v3

    iget-object v4, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryRsp;->shops:Ljava/util/List;

    invoke-static {v4, v1, v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "wifiQueryResultIntoDB save to WifiSsid size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;Ljava/util/List;)V

    move v1, v2

    move v3, v0

    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryRsp;->shops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "wifiQueryResultIntoDB save to WifiSsidMac totalList.size="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v3, v0

    invoke-interface {p2, v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->insertWifiMacList(Ljava/util/List;)V

    :goto_2
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->b()Ljava/util/Observable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Observable;->notifyObservers()V

    :cond_0
    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v1, "wifiQueryResultIntoDB End"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/ShopVO;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/ShopVO;->ssids:Ljava/util/List;

    iget-wide v6, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryRsp;->expire:J

    invoke-static {v0, v6, v7, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Ljava/util/List;JLcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v1, v0

    move v3, v0

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)I
    .locals 14

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_4

    const-string/jumbo v1, "0"

    const-string/jumbo v0, "0"

    :goto_0
    iget v6, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->o:I

    iget v7, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->p:I

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->l:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

    invoke-interface {v2, v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->queryWifiLocation(II)Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;

    move-result-object v4

    const-wide/16 v2, -0x1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->getTimeStamp()J

    move-result-wide v2

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v8, "WifiSsidUpdateServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "doSyncWifiSsidInfo loc="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";mGx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->o:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";mGy="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->p:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/CaptivePortalUtil;->isCaptivePortal()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    iget-object v2, v3, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;->shops:Ljava/util/List;

    if-eqz v2, :cond_b

    iget-object v2, v3, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;->shops:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    :goto_1
    :try_start_2
    const-string/jumbo v2, "WifiSsidUpdateServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "doSyncWifiSsidInfo end rsp size ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v2, v4

    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_6

    :try_start_3
    iget-boolean v3, v4, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;->success:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->l:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

    invoke-direct {p0, v4, v6, v7, v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;IILcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;)V

    const-string/jumbo v3, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v6, "doSyncWifiSsidInfo \u5b8c\u6210\u66f4\u65b0mac\u6570\u636e\uff01"

    invoke-static {v3, v6}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v4, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;->shops:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, v4, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;->shops:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->b()Ljava/util/Observable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Observable;->notifyObservers()V

    :cond_1
    iget-object v3, v4, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;->resultCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    const/4 v6, -0x1

    :try_start_4
    iget-object v3, v4, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;->resultCode:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    :goto_3
    :try_start_5
    iget-object v6, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :goto_4
    if-eqz v4, :cond_3

    const-string/jumbo v3, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v6, "doSyncWifiSsidInfo rsp=%s"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v4, v7, v5

    invoke-static {v3, v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/util/Logger;->dd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->getNetWorkType(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v12, :cond_a

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget v4, v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->e:I

    :goto_5
    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget-object v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v2

    :goto_6
    return v0

    :cond_4
    iget-wide v0, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    :try_start_6
    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v2, v5

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_7
    const-string/jumbo v7, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v8, "doSyncWifiSsidInfo rsp.resultCode exp"

    invoke-static {v7, v8, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v6

    goto :goto_3

    :cond_6
    const-string/jumbo v3, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v6, "doSyncWifiSsidInfo \u6570\u636e\u540c\u6b65\u5931\u8d25\uff01"

    invoke-static {v3, v6}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v3

    :goto_7
    :try_start_8
    iget-object v6, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v7, 0x3e9

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string/jumbo v6, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v7, "doSyncWifiSsidInfo \u66f4\u65b0\u6570\u636e\u5f02\u6b65\u7ebf\u7a0b\u51fa\u73b0\u5f02\u5e38\uff01"

    invoke-static {v6, v7, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v4, :cond_3

    const-string/jumbo v3, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v6, "doSyncWifiSsidInfo rsp=%s"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v4, v7, v5

    invoke-static {v3, v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/util/Logger;->dd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->getNetWorkType(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v12, :cond_7

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget v4, v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->e:I

    :goto_8
    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget-object v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_6

    :cond_7
    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget v4, v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->f:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->f:I

    goto :goto_8

    :catchall_0
    move-exception v2

    :goto_9
    if-eqz v4, :cond_8

    const-string/jumbo v3, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v6, "doSyncWifiSsidInfo rsp=%s"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v4, v7, v5

    invoke-static {v3, v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/util/Logger;->dd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->getNetWorkType(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v12, :cond_9

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget v4, v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->e:I

    :goto_a
    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget-object v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    throw v2

    :cond_9
    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget v4, v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->f:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->f:I

    goto :goto_a

    :cond_a
    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget v4, v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->f:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->f:I

    goto/16 :goto_5

    :catchall_1
    move-exception v2

    move-object v4, v3

    goto :goto_9

    :catch_2
    move-exception v2

    move-object v3, v2

    move v2, v5

    goto/16 :goto_7

    :catch_3
    move-exception v2

    move-object v4, v3

    move-object v3, v2

    move v2, v5

    goto/16 :goto_7

    :catch_4
    move-exception v2

    move-object v13, v2

    move v2, v4

    move-object v4, v3

    move-object v3, v13

    goto/16 :goto_7

    :cond_b
    move v4, v5

    goto/16 :goto_1
.end method

.method private a(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;Ljava/util/List;Z)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobilelbs/common/service/facade/vo/Location;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;",
            ">;Z)I"
        }
    .end annotation

    const-wide/32 v10, 0x5265c00

    const/4 v8, 0x0

    const/4 v9, 0x2

    const-string/jumbo v1, "0"

    const-string/jumbo v0, "0"

    const/4 v2, 0x0

    if-eqz p1, :cond_d

    iget-wide v0, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iget-wide v3, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v7, v1

    :goto_0
    :try_start_0
    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "doSyncWifiSsidMacInfo loc="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v7, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_1
    iget-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->shops:Ljava/util/List;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "doSyncWifiSsidMacInfo end rsp shops size ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->shops:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v1, :cond_7

    iget-boolean v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->success:Z

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->resultCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, -0x1

    :try_start_2
    iget-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->resultCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    :goto_2
    :try_start_3
    const-string/jumbo v2, "1002"

    iget-object v3, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "1003"

    iget-object v3, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget v3, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->syncLevel:I

    iput v3, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->h:I

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v10

    iput-wide v3, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->g:J

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v10

    iput-wide v3, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->e:J

    :cond_1
    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-direct {p0, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Ljava/util/List;)V

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "doSyncWifiSsidMacInfo \u6570\u636e\u540c\u6b65\u5931\u8d25\uff01rsp.resultCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->getNetWorkType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v9, :cond_5

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->d:I

    :goto_3
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v8

    :cond_3
    :goto_4
    return v0

    :cond_4
    :try_start_4
    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "doSyncWifiSsidMacInfo end rsp shops size =0"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move v0, v8

    :goto_5
    :try_start_5
    invoke-direct {p0, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Ljava/util/List;)V

    const-string/jumbo v3, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v4, "doSyncWifiSsidMacInfo \u66f4\u65b0\u6570\u636e\u5f02\u6b65\u7ebf\u7a0b\u51fa\u73b0\u5f02\u5e38\uff01"

    invoke-static {v3, v4, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->getNetWorkType(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v9, :cond_8

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->d:I

    :goto_6
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-virtual {v1, v2, v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v3, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v4, "doSyncWifiSsidMacInfo rsp.resultCode exp"

    invoke-static {v3, v4, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v0, v2

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->f:I

    goto :goto_3

    :cond_6
    :try_start_7
    iget v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->o:I

    iget v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->p:I

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->l:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;Ljava/util/List;II)I

    move-result v8

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "doSyncWifiSsidMacInfo \u5b8c\u6210\u66f4\u65b0mac\u6570\u636e\uff01"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;->shops:Ljava/util/List;

    if-eqz v0, :cond_c

    if-lez v8, :cond_c

    if-eqz p3, :cond_c

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->b()Ljava/util/Observable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Observable;->notifyObservers()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v0, v8

    :goto_7
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->getNetWorkType(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v9, :cond_b

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->d:I

    :goto_8
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-virtual {v1, v2, v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    :try_start_8
    invoke-direct {p0, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Ljava/util/List;)V

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "doSyncWifiSsidMacInfo \u6570\u636e\u540c\u6b65\u5931\u8d25\uff01"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move v0, v8

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->f:I

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_9
    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->getNetWorkType(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v9, :cond_a

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->d:I

    :goto_a
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-virtual {v1, v2, v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    throw v0

    :cond_a
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->f:I

    goto :goto_a

    :cond_b
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->f:I

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v1, v0

    move v0, v8

    goto/16 :goto_5

    :cond_c
    move v0, v8

    goto :goto_7

    :cond_d
    move-object v6, v0

    move-object v7, v1

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;",
            ">;)",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->l:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->queryNeedSynMacs()Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    :goto_3
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v1

    :goto_5
    :try_start_0
    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;

    invoke-direct {v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;-><init>()V

    iput-object p1, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->lat:Ljava/lang/String;

    iput-object p2, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->lon:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->getNetWorkType(Landroid/content/Context;)I

    move-result v3

    iput v3, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->network:I

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget v3, v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->d:I

    iput v3, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->wcount:I

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget v3, v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->f:I

    iput v3, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->mcount:I

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->sign:Ljava/lang/String;

    iput-object p3, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->ssids:Ljava/util/List;

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->cssids:Ljava/util/List;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->v:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->os:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->apdid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->utdid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->imei:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->imsi:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DeviceSyncReq:req.lat="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->lat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.lon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->lon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->network:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; req.wcount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->wcount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.mcount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->mcount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.sign="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->sign:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.ssids="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->ssids:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.cssids="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->cssids:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.os="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->os:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.appid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->apdid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.utdid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->utdid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.imei="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->imei:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.imsi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;->imsi:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->k:Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiSyncFacade;

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiSyncFacade;->syncDevices(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncRsp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_6
    return-object v0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->macs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->macs:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;

    invoke-direct {v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;->getSsidId()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->id:J

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;->getSsid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->ssid:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->macs:Ljava/util/List;

    iget-object v5, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->macs:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->timestamp:J

    iget-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0x47f

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto/16 :goto_6

    :cond_9
    move-object v0, v2

    goto/16 :goto_5

    :cond_a
    move-object v3, v2

    goto/16 :goto_3

    :cond_b
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->l:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

    sget v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->c:I

    sget v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->c:I

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->queryWifiLocation(II)Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;

    invoke-direct {v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;-><init>()V

    iput-object p1, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->lat:Ljava/lang/String;

    iput-object p2, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->lon:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->getTimeStamp()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->gts:J

    :goto_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->v:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->os:Ljava/lang/String;

    iput-wide p3, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->timestamp:J

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->getNetWorkType(Landroid/content/Context;)I

    move-result v1

    iput v1, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->network:I

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget v1, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->e:I

    iput v1, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->wcount:I

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget v1, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->f:I

    iput v1, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->mcount:I

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->sign:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SsidSyncReq:req.lat="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->lat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.lon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->lon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.gts="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->gts:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.os="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->os:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.timestamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->timestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->network:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.wcount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->wcount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.mcount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->mcount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";req.sign="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->sign:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->k:Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiSyncFacade;

    invoke-interface {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiSyncFacade;->syncSSids(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncReq;->gts:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string/jumbo v2, "WifiSsidUpdateServiceImpl"

    invoke-static {v2, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static a(IILcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;)Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;
    .locals 5

    const-wide/32 v3, 0x5265c00

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->setLocationX(I)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->setLocationY(I)V

    sget v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->c:I

    if-ne v1, p0, :cond_1

    sget v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->c:I

    if-ne v1, p1, :cond_1

    iget-wide v1, p2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;->gts:J

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->setTimeStamp(J)V

    :cond_0
    iget-wide v1, p2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;->wtime:J

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->setNextWifiTime(J)V

    iget-wide v1, p2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;->mtime:J

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->setNextMobileTime(J)V

    :goto_0
    return-object v0

    :cond_1
    iget-wide v1, p2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;->timestamp:J

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->setTimeStamp(J)V

    iget-object v1, p2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;->resultCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1002"

    iget-object v2, p2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "1003"

    iget-object v2, p2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->setNextWifiTime(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->setNextMobileTime(J)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/util/List;II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/ShopVO;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "buildWifiSsidList end size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/ShopVO;

    const-string/jumbo v3, "WifiSsidUpdateServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "buildWifiSsidList shop="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/e/b;->a(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/ShopVO;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private static a(Ljava/util/List;JLcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;",
            ">;J",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v11, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "buildWifiSsidMacList ssidVOList size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "buildWifiSsidMacList end size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;

    iget-object v0, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->devices:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->devices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string/jumbo v0, "ssidid"

    iget-wide v6, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->id:J

    invoke-interface {p3, v0, v4, v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->queryOfflineWifiByKey(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->devices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/DeviceVO;

    iget-object v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/DeviceVO;->mac:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v8, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;

    invoke-direct {v8}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;-><init>()V

    iget-wide v9, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->id:J

    invoke-virtual {v8, v9, v10}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;->setSsidId(J)V

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;->setSsid(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/DeviceVO;->authType:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;->setAuthType(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/DeviceVO;->mac:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;->setMac(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/DeviceVO;->pwd:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/StringEncryptUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/StringEncryptUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;->setPassword(Ljava/lang/String;)V

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getShopId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;->setShopId(Ljava/lang/String;)V

    invoke-virtual {v8, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;->setExpireTime(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/DeviceVO;->status:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidMac;->setStatus(Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static a(Ljava/util/List;JLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;",
            ">;J",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "buildWifiBlackMacList ssidVOList size="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "buildWifiBlackMacList end size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;

    iget-object v3, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->devices:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->devices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;->devices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/DeviceVO;

    iget-object v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/DeviceVO;->mac:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/DeviceVO;->mac:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/DeviceVO;->mac:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;

    iget-object v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->macs:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->macs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->macs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;

    invoke-direct {v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;-><init>()V

    invoke-virtual {v5, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;->setExpireTime(J)V

    invoke-virtual {v5, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiBlackMac;->setMac(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private a(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;IILcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;)V
    .locals 5

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v1, "syncSsidResultIntoDB Start"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;->syncLevel:I

    iput v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->g:I

    invoke-static {p2, p3, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(IILcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;)Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->c:I

    sget v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->c:I

    invoke-static {v1, v2, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(IILcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;)Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p4, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->insertWifiLocationList(Ljava/util/List;)V

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/SsidSyncRsp;->shops:Ljava/util/List;

    invoke-static {v0, p2, p3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "syncSsidResultIntoDB wifiSsidList="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;Ljava/util/List;)V

    :cond_0
    invoke-interface {p4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->queryOfflineWifiSsid()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p4, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->deletSsidMacBySsidId(Ljava/util/List;)V

    invoke-interface {p4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->deletOfflineSsid()V

    :cond_1
    invoke-interface {p4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->checkSsidTableSize()V

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v1, "syncSsidResultIntoDB End"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getSsidId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)V
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/d;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/d;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)V

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Ljava/util/List;Z)V

    return-void
.end method

.method private static a(Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "saveWifiSsidListToDB start"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->queryWifiSsidBySsidIdList(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveWifiSsidListToDB oldMap.size="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-interface {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->insertWifiSsidList(Ljava/util/List;)V

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v1, "saveWifiSsidListToDB end"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getSsidId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getSsidId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getSsidId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->setTimeStamp(J)V

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->l:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveNeedSyncMacs start ssids size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->l:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

    invoke-interface {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->queryNeedSynMacs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v1

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v3, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->l:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

    invoke-interface {v1, v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->insertNeedSynMacs(Ljava/util/List;)V

    :cond_4
    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "saveNeedSyncMacs end bNeedSave="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_5
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;

    move-object v2, v0

    iget-object v1, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->macs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    new-instance v3, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;

    invoke-direct {v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;-><init>()V

    invoke-virtual {v3, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;->setMac(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;->setSsid(Ljava/lang/String;)V

    iget-wide v8, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->id:J

    invoke-virtual {v3, v8, v9}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;->setSsidId(J)V

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;->setTimeStamp(J)V

    iget-object v8, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "WifiSsidUpdateServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "saveNeedSyncMacs key="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ";value="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSyncMac;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method private a(Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v2, "WifiSsidUpdateServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "syncUpdateSsidMacs start ssids=%s"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v3, "isNeedSyncSsidMac start"

    invoke-static {v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->isScreenOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->isActiveNetwork()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->g()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "isNeedSyncSsidMac return sceenoff or useless net"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->b(Z)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->e()V

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;Ljava/util/List;Z)I

    move-result v0

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/16 v4, 0x482

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    long-to-int v1, v1

    invoke-static {v3, v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/UCLogUtil;->UC_WIFI_C53(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f()V

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v1, "syncUpdateSsidMacs end"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget-wide v2, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->c:J

    invoke-static {v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->isInToday(J)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    const-string/jumbo v4, "wifi_update_key"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/SharedPreferenceHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x0

    iput v4, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->d:I

    const/4 v4, 0x0

    iput v4, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->f:I

    const/4 v4, 0x0

    iput v4, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->h:I

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "macWifiCount"

    iget v5, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->d:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "macMobileCount"

    iget v5, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->f:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "macSyncLevel"

    iget v2, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->h:I

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    const-string/jumbo v2, "WifiSsidUpdateServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isNeedSyncSsidMac macSyncLevel="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget v4, v4, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget v2, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->h:I

    if-eq v2, v8, :cond_3

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget v2, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->h:I

    if-ne v2, v0, :cond_7

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->isWifiActiveNetwork()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_7
    iget-object v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->getNetWorkType(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v0, :cond_9

    iget-wide v2, v4, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->g:J

    :cond_8
    :goto_3
    const-string/jumbo v4, "WifiSsidUpdateServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "isTimeout now="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ";netType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ";nextTime"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v2, v6, v2

    if-lez v2, :cond_a

    move v2, v0

    :goto_4
    if-eqz v2, :cond_3

    goto/16 :goto_1

    :cond_9
    if-ne v5, v8, :cond_8

    iget-wide v2, v4, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/h;->e:J

    goto :goto_3

    :cond_a
    move v2, v1

    goto :goto_4

    :cond_b
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "syncUpdateSsidMacInfos doSyncWifiSsidInfo Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f()V

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v1, "syncUpdateSsidMacs end"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f()V

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "syncUpdateSsidMacs end"

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v8, -0x1

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->l:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_2

    iget-wide v0, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    iget-wide v4, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/e/a;->a(D)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->o:I

    iget-wide v0, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/e/a;->b(D)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->p:I

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->l:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->o:I

    iget v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->p:I

    invoke-interface {v0, v1, v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;->queryWifiLocation(II)Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->getNextWifiTime()J

    move-result-wide v0

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->getNetWorkType(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v2, :cond_0

    invoke-virtual {v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiLocation;->getNextMobileTime()J

    move-result-wide v0

    :cond_0
    const-string/jumbo v4, "WifiSsidUpdateServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isNeedSyncSsidInner nextTime="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_4

    move v0, v2

    :goto_2
    return v0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    iput v8, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->o:I

    iput v8, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->p:I

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)I

    move-result v0

    return v0
.end method

.method private b(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryRsp;
    .locals 11

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    iget-wide v1, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->wifiInfos:Ljava/util/List;

    :goto_0
    if-eqz v4, :cond_4

    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryReq;

    invoke-direct {v5}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryReq;-><init>()V

    iput-object v1, v5, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryReq;->lat:Ljava/lang/String;

    iput-object v2, v5, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryReq;->lon:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryReq;->v:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryReq;->os:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryReq;->sign:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "convertWifiInfosToSsidInfos start size="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "convertWifiInfosToSsidInfos end size="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v5, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryReq;->ssids:Ljava/util/List;

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "doQueryByCoordinate req="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->k:Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiSyncFacade;

    invoke-interface {v1, v5}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiSyncFacade;->queryWifis(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryReq;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryRsp;

    move-result-object v3

    :goto_3
    return-object v3

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;

    iget-object v2, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;

    if-nez v2, :cond_2

    new-instance v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;

    invoke-direct {v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;-><init>()V

    iget-object v7, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->ssid:Ljava/lang/String;

    iput-object v7, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->ssid:Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->macs:Ljava/util/List;

    iget-object v7, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->macs:Ljava/util/List;

    iget-object v1, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->mac:Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v4, 0x41b

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string/jumbo v2, "WifiSsidUpdateServiceImpl"

    invoke-static {v2, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    :try_start_1
    iget-object v2, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;->macs:Ljava/util/List;

    iget-object v1, v1, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->mac:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "WifiSsidUpdateServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "convertWifiInfosToSsidInfos key="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, ";value="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0x41e

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "wifiQueryResultIntoDB wifiInfos is empty"

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :cond_5
    move-object v1, v3

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_0
.end method

.method private b(Z)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->a()Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->j:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-virtual {v1, p1, v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/f;->a(ZLcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;Landroid/content/Context;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v3, "\u83b7\u53d6\u7ecf\u7eac\u5ea6\u51fa\u9519\uff01"

    invoke-static {v2, v3, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f()V

    return-void
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a:I

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)Z
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v3, "isNeedSyncSsidOut start"

    invoke-static {v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->isScreenOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->isActiveNetwork()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->g()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "isNeedSyncSsidOut return offscreen or unactivenet"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    move v0, v1

    :cond_2
    return v0

    :cond_3
    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget-wide v2, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->d:J

    invoke-static {v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->isInToday(J)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    const-string/jumbo v4, "wifi_update_key"

    invoke-static {v3, v4, v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/SharedPreferenceHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput v1, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->e:I

    iput v1, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->f:I

    iput v1, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->g:I

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "wifiCount"

    iget v5, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->e:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "mobileCount"

    iget v5, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->f:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "syncLevel"

    iget v2, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->g:I

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->getNetWorkType(Landroid/content/Context;)I

    move-result v6

    const-string/jumbo v7, "wifi_update_key"

    invoke-static {v3, v7, v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/SharedPreferenceHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v7, "lastTime"

    const-wide/16 v8, 0x0

    invoke-interface {v3, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string/jumbo v3, "WifiSsidUpdateServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ssidSync isTimeout diffTime"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v10, v4, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";netType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-long v3, v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-object v2, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    iget-object v2, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->j:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    const-string/jumbo v5, "wifi_check_interval"

    const-wide/32 v6, 0x1b7740

    invoke-virtual {v2, v5, v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-lez v2, :cond_5

    move v2, v0

    :goto_1
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget v2, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->g:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "isNeedSyncSsidOut return level none"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v2, v1

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;

    iget v2, v2, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/i;->g:I

    if-ne v2, v0, :cond_2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->isWifiActiveNetwork()Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "isNeedSyncSsidOut return levelwifi useless"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private d()Lcom/alipay/android/phone/nfd/nfdservice/biz/d/j;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->q:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/j;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/j;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->q:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/j;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->q:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/j;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->b(Z)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->d()Lcom/alipay/android/phone/nfd/nfdservice/biz/d/j;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->b:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private f()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->d()Lcom/alipay/android/phone/nfd/nfdservice/biz/d/j;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method static synthetic f(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->e()V

    return-void
.end method

.method static synthetic g(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->d:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;

    return-object v0
.end method

.method private g()Z
    .locals 2

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->d()Lcom/alipay/android/phone/nfd/nfdservice/biz/d/j;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/StringEncryptUtil;->signature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized i()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->getInstance()Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->u:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getApdId mApdid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->u:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getUtdid utdid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "getUtdid Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getImei imei="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "getImei Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImsi()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getImsi imsi="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "getImsi Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getAppVersion ver="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized n()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Android"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Z)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryWifiDataSync start, forceQuery: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->m:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "queryWifiDataSync start queryWifiDataSync="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->j:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    const-string/jumbo v5, "wifi_near_update_interval"

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v0, v5, v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->isActiveNetwork()Z

    move-result v3

    if-eqz v0, :cond_0

    if-nez v3, :cond_2

    :cond_0
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryWifiDataSync localReturn activeNetwork="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;

    invoke-direct {v0, v3, v2, v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;-><init>(ZZI)V

    :goto_2
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->b(Z)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    if-nez v0, :cond_3

    const/16 v0, 0x41c

    invoke-static {v0, v1, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/UCLogUtil;->UC_WIFI_C36(III)V

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v3, "queryWifiDataSync location is null"

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;

    invoke-direct {v0, v1, v2, v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;-><init>(ZZI)V

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->b(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryRsp;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-boolean v6, v5, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryRsp;->success:Z

    if-nez v6, :cond_5

    :cond_4
    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "queryWifiDataSync rsp= null"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v3

    long-to-int v2, v2

    const/16 v0, 0x41b

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/UCLogUtil;->UC_WIFI_C36(III)V

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryWifiDataSync get rpc result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", success: false, localReturn: false, timeCost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;

    invoke-direct {v0, v1, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;-><init>(ZZI)V

    goto :goto_2

    :cond_5
    const-string/jumbo v6, "WifiSsidUpdateServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "queryWifiDataSync rsp= "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->m:J

    iget-object v6, v5, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryRsp;->resultCode:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v0, -0x1

    :try_start_1
    iget-object v2, v5, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryRsp;->resultCode:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v3

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/UCLogUtil;->UC_WIFI_C36(III)V

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryWifiDataSync get rpc rsp.resultCode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v5, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryRsp;->resultCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", success: false, localReturn: false, timeCost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;

    invoke-direct {v0, v1, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;-><init>(ZZI)V

    goto/16 :goto_2

    :catch_1
    move-exception v2

    const-string/jumbo v6, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v7, "queryWifiDataSync rsp.resultCode exp"

    invoke-static {v6, v7, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    iget-object v6, v5, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryRsp;->shops:Ljava/util/List;

    if-eqz v6, :cond_7

    iget-object v6, v5, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryRsp;->shops:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "queryWifiData rsp.shops is empty"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v3

    long-to-int v2, v2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/UCLogUtil;->UC_WIFI_C36(III)V

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryWifiDataSync get rpc rsp.shops is empty, success: false, localReturn: false, timeCost: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;

    invoke-direct {v0, v1, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;-><init>(ZZI)V

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v6, "WifiSsidUpdateServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "queryWifiDataSync rsp.shops.size ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryRsp;->shops:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->l:Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;

    invoke-direct {p0, v5, v6, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiQueryRsp;Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsidDao;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    long-to-int v3, v3

    iget-object v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4, v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/UCLogUtil;->UC_WIFI_C36(III)V

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryWifiDataSync end success: true, localReturn: false, timeCost: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;

    invoke-direct {v0, v2, v1, v3}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;-><init>(ZZI)V

    goto/16 :goto_2
.end method

.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->v:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->v:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->v:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->u:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/List;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;",
            ">;ZZ)V"
        }
    .end annotation

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "syncUpdateSsidMacInfos start bNotify="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";bNewThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/e;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;Ljava/util/List;Z)V

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor;->run(Ljava/lang/Runnable;)V

    :goto_0
    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v1, "syncUpdateSsidMacInfos end"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public final declared-synchronized a(ZLcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;ZLcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;)V

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/RpcBackgroundExecutor;->run(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/util/Observable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->g:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/k;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/k;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->g:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/k;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->g:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/k;

    return-object v0
.end method
