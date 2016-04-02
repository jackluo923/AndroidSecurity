.class final Lcom/alipay/android/phone/nfd/abeacon/biz/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/mteam/abeacon/found/listeners/AllBeaconScanCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/h;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "didFoundBeacons, beaconInfos = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/h;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;->b(Ljava/util/List;)V

    const/4 v0, 0x1

    return v0
.end method
