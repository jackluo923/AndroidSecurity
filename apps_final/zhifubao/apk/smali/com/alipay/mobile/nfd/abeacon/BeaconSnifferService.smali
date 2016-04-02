.class public abstract Lcom/alipay/mobile/nfd/abeacon/BeaconSnifferService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "BeaconSnifferService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isSupportBLE()Z
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public abstract startScanBeacons(Lcom/alipay/mobile/nfd/abeacon/DeviceScanListener;)V
.end method

.method public abstract stopScanBeacons()V
.end method
