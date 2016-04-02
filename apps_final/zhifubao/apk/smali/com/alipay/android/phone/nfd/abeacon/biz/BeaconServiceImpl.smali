.class public Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;
.super Lcom/alipay/android/phone/nfd/abeacon/api/BeaconService;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

.field b:Lcom/alipay/android/phone/nfd/abeacon/api/BluetoothListener;

.field c:Lcom/alipay/android/phone/nfd/abeacon/biz/f;

.field d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconService;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->d:Z

    return-void
.end method


# virtual methods
.method public enableBluetooth(Lcom/alipay/android/phone/nfd/abeacon/api/BluetoothListener;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->b:Lcom/alipay/android/phone/nfd/abeacon/api/BluetoothListener;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SecurityException in enableBluetooth"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SecurityException in isBluetoothEnabled"

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isSupportBLE()Z
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/Utils/BeaconUtil;->a(Landroid/content/ContextWrapper;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->isSupportBLE()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->d:Z

    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Landroid/content/Context;)Lcom/taobao/mteam/abeacon/found/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->a(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Z

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/nfd/abeacon/biz/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/nfd/abeacon/biz/f;-><init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;B)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->c:Lcom/alipay/android/phone/nfd/abeacon/biz/f;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->c:Lcom/alipay/android/phone/nfd/abeacon/biz/f;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "BeaconServiceImpl"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-virtual {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->c:Lcom/alipay/android/phone/nfd/abeacon/biz/f;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public readBeaconsInfo(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/alipay/android/phone/nfd/abeacon/api/DeviceInfoListener;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Landroid/content/Context;)Lcom/taobao/mteam/abeacon/found/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    :cond_1
    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readBeaconsInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    new-instance v1, Lcom/alipay/android/phone/nfd/abeacon/biz/e;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/nfd/abeacon/biz/e;-><init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;Lcom/alipay/android/phone/nfd/abeacon/api/DeviceInfoListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/taobao/mteam/abeacon/found/listeners/ReadDeviceInfoCallback;)Z

    move-result v0

    sget-object v1, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "readBeaconsInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readDeviceAppData(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;[BLcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;[BLcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readToken(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scanBeacons(Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "scanBeacons"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->d:Z

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Landroid/content/Context;)Lcom/taobao/mteam/abeacon/found/BeaconManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->a(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Z

    :cond_1
    sget-object v1, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startScan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    new-instance v2, Lcom/alipay/android/phone/nfd/abeacon/biz/b;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/phone/nfd/abeacon/biz/b;-><init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Ljava/util/List;Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public scanBeaconsByIDList(Ljava/util/List;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;)Ljava/lang/String;
    .locals 2
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

    const-string/jumbo v0, "BeaconServiceImpl"

    const-string/jumbo v1, "scanBeaconsByIDList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Landroid/content/Context;)Lcom/taobao/mteam/abeacon/found/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->a(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Z

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    new-instance v1, Lcom/alipay/android/phone/nfd/abeacon/biz/a;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/nfd/abeacon/biz/a;-><init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Ljava/util/List;Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public scanBeaconsForImmediateResult(Ljava/util/List;)Ljava/util/List;
    .locals 1
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

    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Landroid/content/Context;)Lcom/taobao/mteam/abeacon/found/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/ScanPeriodManager;->a(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Z

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-virtual {v0, p1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public startBeaconsBeep(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconBeepListener;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Landroid/content/Context;)Lcom/taobao/mteam/abeacon/found/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    new-instance v1, Lcom/alipay/android/phone/nfd/abeacon/biz/c;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/nfd/abeacon/biz/c;-><init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconBeepListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public stopBeaconService()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBeaconService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-virtual {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    :cond_0
    return-void
.end method

.method public stopBeaconsBeep(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconBeepListener;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Landroid/content/Context;)Lcom/taobao/mteam/abeacon/found/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    new-instance v1, Lcom/alipay/android/phone/nfd/abeacon/biz/d;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/nfd/abeacon/biz/d;-><init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconBeepListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public stopScanBeacons(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-virtual {v0, p1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public stopScanBeaconsFroImmediateResult()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-virtual {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeDeviceAppData(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;[B[BLcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;[B[BLcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
