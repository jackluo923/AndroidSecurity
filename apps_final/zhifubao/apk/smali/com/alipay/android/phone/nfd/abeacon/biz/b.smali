.class final Lcom/alipay/android/phone/nfd/abeacon/biz/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;

.field private final synthetic b:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/b;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/b;->b:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)Z
    .locals 3

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "foundBeaconsFail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/b;->b:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;->foundBeaconsFail(Ljava/lang/Exception;)Z

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

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "didFoundBeacons:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/b;->b:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;->didFoundBeacons(Ljava/util/List;)Z

    const/4 v0, 0x0

    return v0
.end method
