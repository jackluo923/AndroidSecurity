.class final Lcom/alipay/android/phone/nfd/abeacon/biz/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/mteam/abeacon/found/listeners/ReadDeviceInfoCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;

.field private final synthetic b:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceInfoListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;Lcom/alipay/android/phone/nfd/abeacon/api/DeviceInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/e;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/e;->b:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceInfoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;)Z
    .locals 3

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDeviceInfoReaded:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/e;->b:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceInfoListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/nfd/abeacon/api/DeviceInfoListener;->onDeviceInfoReaded(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/Exception;)Z
    .locals 2

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDeviceInfoFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/e;->b:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceInfoListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/nfd/abeacon/api/DeviceInfoListener;->onDeviceInfoFail(Ljava/lang/Exception;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final onCanceled()V
    .locals 0

    return-void
.end method

.method public final onFailed(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public final onSuccess([B)V
    .locals 0

    return-void
.end method
