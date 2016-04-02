.class public Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;
.super Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;


# static fields
.field public static final BEACON_LONGLINK_TYPE:Ljava/lang/String; = "com.alipay.longlink.TRANSFER_APBeacon"

.field private static final c:Ljava/lang/String;

.field private static i:Landroid/os/Handler;

.field private static j:Landroid/os/HandlerThread;


# instance fields
.field a:Landroid/support/v4/content/LocalBroadcastManager;

.field final b:Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;

.field private d:Lcom/taobao/mteam/abeacon/found/BeaconManager;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

.field private final h:Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;

.field private final k:Landroid/content/BroadcastReceiver;

.field private final l:Ljava/lang/Runnable;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->g:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

    new-instance v0, Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->h:Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;

    new-instance v0, Lcom/alipay/android/phone/nfd/abeacon/biz/g;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/g;-><init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->k:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/alipay/android/phone/nfd/abeacon/biz/h;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/h;-><init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->b:Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;

    new-instance v0, Lcom/alipay/android/phone/nfd/abeacon/biz/i;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/i;-><init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->l:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->m:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->n:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->h:Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;Ljava/util/List;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "in matchBeaconServiceFromRpc infos:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/nfd/abeacon/biz/k;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/nfd/abeacon/biz/k;-><init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowProgressDialog(Z)V

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->setShowNetworkErrorView(Z)V

    sget-object v1, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->c:Ljava/lang/String;

    const-string/jumbo v2, "in matchBeaconServiceFromRpc before start"

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->start([Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->h:Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getBeaconID()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v2, v0, v3}, Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->c:Ljava/lang/String;

    const-string/jumbo v1, "tryUpdateMatchedService"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->h:Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->n:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;->c(Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tryUpdateMatchedService isSameList size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    move v0, v2

    :goto_2
    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;

    iget-object v6, v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->displayPanel:Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;

    iget-object v6, v6, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->gotoUrl:Ljava/lang/String;

    iget-object v1, v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo;->displayPanel:Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;

    iget-object v1, v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconServiceInfo$DisplayPanel;->gotoUrl:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v3

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->g:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;->onDevicesFound(Ljava/util/List;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Lcom/taobao/mteam/abeacon/found/BeaconManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->d:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->f:Z

    return-void
.end method

.method static synthetic g(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->d:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    return-void
.end method

.method static synthetic h(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->g:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

    return-object v0
.end method


# virtual methods
.method public attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 3

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->c:Ljava/lang/String;

    const-string/jumbo v1, "attachContext"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.exit()"

    new-instance v2, Lcom/alipay/android/phone/nfd/abeacon/biz/j;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/j;-><init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    return-void
.end method

.method public clearAllBeaconInfos()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->h:Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;->a()V

    return-void
.end method

.method public clearServiceInfo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->h:Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public isSupportBLE()Z
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/Utils/BeaconUtil;->a(Landroid/content/ContextWrapper;)Z

    move-result v0

    return v0
.end method

.method public setWatchingIbeaconUuids(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->h:Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;->a(Ljava/util/List;)V

    return-void
.end method

.method public startScanBeacons(Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;)V
    .locals 3

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->c:Ljava/lang/String;

    const-string/jumbo v1, "startScanBeacons"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->c:Ljava/lang/String;

    const-string/jumbo v1, "first post runnableCheckCache"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->g:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->d:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Landroid/content/Context;)Lcom/taobao/mteam/abeacon/found/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->d:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->d:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->a(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->c:Ljava/lang/String;

    const-string/jumbo v1, "registerLongLinkService"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a:Landroid/support/v4/content/LocalBroadcastManager;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a:Landroid/support/v4/content/LocalBroadcastManager;

    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.alipay.longlink.TRANSFER_APBeacon"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->c:Ljava/lang/String;

    const-string/jumbo v1, "startScanBeacons"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->d:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->b:Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Ljava/util/List;Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->f:Z

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->j:Landroid/os/HandlerThread;

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "beacon_checker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->i:Landroid/os/Handler;

    :cond_4
    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startScanBeacons, taskId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public stopScanBeacons()V
    .locals 3

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopScanBeacons, taskId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a:Landroid/support/v4/content/LocalBroadcastManager;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->d:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopScanBeacons, beaconManager != null, taskId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->d:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Ljava/lang/String;)Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->f:Z

    return-void
.end method
