.class public abstract Lcom/alipay/android/phone/nfd/abeacon/api/BeaconService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract enableBluetooth(Lcom/alipay/android/phone/nfd/abeacon/api/BluetoothListener;)Z
.end method

.method public abstract isBluetoothEnabled()Z
.end method

.method public abstract isSupportBLE()Z
.end method

.method public abstract readBeaconsInfo(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/alipay/android/phone/nfd/abeacon/api/DeviceInfoListener;)Z
.end method

.method public abstract readDeviceAppData(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;[BLcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z
.end method

.method public abstract readToken(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z
.end method

.method public abstract scanBeacons(Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;)Ljava/lang/String;
.end method

.method public abstract scanBeaconsByIDList(Ljava/util/List;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;",
            ">;",
            "Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract scanBeaconsForImmediateResult(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract startBeaconsBeep(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconBeepListener;)Z
.end method

.method public abstract stopBeaconService()V
.end method

.method public abstract stopBeaconsBeep(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconBeepListener;)Z
.end method

.method public abstract stopScanBeacons(Ljava/lang/String;)Z
.end method

.method public abstract stopScanBeaconsFroImmediateResult()Z
.end method

.method public abstract writeDeviceAppData(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;[B[BLcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z
.end method
