.class final Lcom/alipay/android/phone/nfd/abeacon/biz/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;

.field private final synthetic b:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/a;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/a;->b:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/a;->b:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;->foundBeaconsFail(Ljava/lang/Exception;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/a;->b:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;->didFoundBeacons(Ljava/util/List;)Z

    const/4 v0, 0x0

    return v0
.end method
