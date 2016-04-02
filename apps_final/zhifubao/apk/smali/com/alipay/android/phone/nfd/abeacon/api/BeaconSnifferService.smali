.class public abstract Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearAllBeaconInfos()V
.end method

.method public abstract clearServiceInfo(Ljava/lang/String;)V
.end method

.method public abstract isSupportBLE()Z
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract setWatchingIbeaconUuids(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startScanBeacons(Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;)V
.end method

.method public abstract stopScanBeacons()V
.end method
