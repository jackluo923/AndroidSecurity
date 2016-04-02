.class public Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;
.super Ljava/lang/Object;
.source "O2oHomeBeaconManager.java"


# static fields
.field public static final START:I = 0x1

.field public static final STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "com.alipay.android.phone.discovery.o2ohome.O2oHomeBeaconManager"


# instance fields
.field private beaconConfigEnabled:Z

.field private beaconSnifferService:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;

.field private currentStatus:I

.field private final deviceScanListener:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

.field private isScanning:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->isScanning:Z

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->beaconConfigEnabled:Z

    .line 27
    iput v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->currentStatus:I

    .line 30
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->deviceScanListener:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

    .line 31
    const-string/jumbo v0, "com.alipay.android.phone.discovery.o2ohome.O2oHomeBeaconManager"

    const-string/jumbo v1, "BeaconManagerForHomeUi"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 33
    const-class v1, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;

    .line 32
    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->beaconSnifferService:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;

    .line 35
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->setWatchingIbeaconUuids()V

    .line 36
    return-void
.end method

.method private setWatchingIbeaconUuids()V
    .locals 6

    .prologue
    .line 66
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 67
    if-eqz v0, :cond_1

    .line 68
    const-string/jumbo v1, "MOBILECODEC_BEACON_IBEACON_TYPE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    if-eqz v0, :cond_0

    .line 71
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_2

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->beaconSnifferService:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;->setWatchingIbeaconUuids(Ljava/util/List;)V

    .line 79
    :cond_1
    return-void

    .line 71
    :cond_2
    aget-object v4, v2, v0

    .line 72
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 73
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private startScanBeacon()V
    .locals 2

    .prologue
    .line 122
    const-string/jumbo v0, "com.alipay.android.phone.discovery.o2ohome.O2oHomeBeaconManager"

    const-string/jumbo v1, "startScanBeacon"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->isScanning:Z

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->beaconSnifferService:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->deviceScanListener:Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;->startScanBeacons(Lcom/alipay/android/phone/nfd/abeacon/api/DeviceScanListener;)V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->isScanning:Z

    .line 127
    :cond_0
    return-void
.end method

.method private stopScanBeacon()V
    .locals 2

    .prologue
    .line 130
    const-string/jumbo v0, "com.alipay.android.phone.discovery.o2ohome.O2oHomeBeaconManager"

    const-string/jumbo v1, "stopScanBeacon"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->isScanning:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->beaconSnifferService:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;->stopScanBeacons()V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->isScanning:Z

    .line 135
    :cond_0
    return-void
.end method

.method private switchBeaconByCurrentStatus()V
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->currentStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->startScanBeacon()V

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->stopScanBeacon()V

    goto :goto_0
.end method


# virtual methods
.method public clearAllBeaconInfos()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->beaconSnifferService:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;->clearAllBeaconInfos()V

    .line 83
    return-void
.end method

.method public clearServiceInfo(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->beaconSnifferService:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;->clearServiceInfo(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public isBlueToothEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 54
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 57
    :catch_0
    move-exception v1

    const-string/jumbo v1, "com.alipay.android.phone.discovery.o2ohome.O2oHomeBeaconManager"

    const-string/jumbo v2, "SecurityException in isBlueToothEnabled"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isSupportBle()Z
    .locals 3

    .prologue
    .line 44
    const-string/jumbo v0, "com.alipay.android.phone.discovery.o2ohome.O2oHomeBeaconManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isSupportBle, beaconSnifferService =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->beaconSnifferService:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->beaconSnifferService:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->beaconSnifferService:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconSnifferService;->isSupportBLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string/jumbo v0, "com.alipay.android.phone.discovery.o2ohome.O2oHomeBeaconManager"

    const-string/jumbo v1, "isSupportBle true"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchListenStatus(I)V
    .locals 4

    .prologue
    .line 94
    iput p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->currentStatus:I

    .line 96
    const-string/jumbo v0, "com.alipay.android.phone.discovery.o2ohome.O2oHomeBeaconManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "switchListenStatus() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->isSupportBle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const-string/jumbo v0, "com.alipay.android.phone.discovery.o2ohome.O2oHomeBeaconManager"

    const-string/jumbo v1, "switchListenStatus BLE not supported"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->isBlueToothEnabled()Z

    move-result v0

    .line 103
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->beaconConfigEnabled:Z

    if-nez v1, :cond_2

    .line 104
    :cond_1
    const-string/jumbo v1, "com.alipay.android.phone.discovery.o2ohome.O2oHomeBeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "switchListenStatus beaconConfigEnabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->beaconConfigEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 105
    const-string/jumbo v3, "    isBlueToothEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "   stopScanBeacon!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->stopScanBeacon()V

    goto :goto_0

    .line 110
    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->switchBeaconByCurrentStatus()V

    goto :goto_0
.end method
