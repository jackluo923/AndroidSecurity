.class final Lcom/alipay/android/phone/nfd/abeacon/biz/k;
.super Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/rpc/ext/RpcExcutor",
        "<",
        "Lcom/alipay/android/phone/nfd/abeacon/api/rpc/model/BeaconRes;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/k;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/k;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;-><init>()V

    return-void
.end method

.method private varargs a()Lcom/alipay/android/phone/nfd/abeacon/api/rpc/model/BeaconRes;
    .locals 6

    const/4 v2, 0x0

    const-class v0, Lcom/alipay/android/phone/nfd/abeacon/api/rpc/BeaconServiceFacade;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/k;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/abeacon/api/rpc/BeaconServiceFacade;

    new-instance v3, Lcom/alipay/android/phone/nfd/abeacon/api/rpc/model/BeaconDeviceSyncRequest;

    invoke-direct {v3}, Lcom/alipay/android/phone/nfd/abeacon/api/rpc/model/BeaconDeviceSyncRequest;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/k;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v4, v3, Lcom/alipay/android/phone/nfd/abeacon/api/rpc/model/BeaconDeviceSyncRequest;->beacons:Ljava/util/List;

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "start RPC:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/alipay/android/phone/nfd/abeacon/api/rpc/BeaconServiceFacade;->notifyBeaconDevice(Lcom/alipay/android/phone/nfd/abeacon/api/rpc/model/BeaconDeviceSyncRequest;)Lcom/alipay/android/phone/nfd/abeacon/api/rpc/model/BeaconRes;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getBeaconID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RPC Exception e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/k;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->h(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/k;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->h(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

    move-result-object v1

    const-string/jumbo v3, "error"

    invoke-interface {v1, v3, v2}, Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;->onRpcStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final varargs synthetic excute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/k;->a()Lcom/alipay/android/phone/nfd/abeacon/api/rpc/model/BeaconRes;

    move-result-object v0

    return-object v0
.end method

.method public final varargs synthetic onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/alipay/android/phone/nfd/abeacon/api/rpc/model/BeaconRes;

    invoke-static {}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RPC\u8fd4\u56de\u5185\u5bb9  deviceServiceQueryResult = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/k;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->c(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/k;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->h(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/k;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->h(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

    move-result-object v0

    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;->onRpcStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p1, Lcom/alipay/android/phone/nfd/abeacon/api/rpc/model/BeaconRes;->success:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/abeacon/api/rpc/model/BeaconRes;->resultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/abeacon/api/rpc/model/DeviceRes;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/k;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v2}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/android/phone/nfd/abeacon/api/rpc/model/DeviceRes;->UUID:Ljava/lang/String;

    iget v0, v0, Lcom/alipay/android/phone/nfd/abeacon/api/rpc/model/DeviceRes;->refreshTime:I

    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
