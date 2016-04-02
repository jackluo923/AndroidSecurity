.class public Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/mteam/abeacon/found/DeviceOperation;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "BeaconOperationTimeoutHandle"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/taobao/mteam/abeacon/found/t;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/taobao/mteam/abeacon/found/t;-><init>(Landroid/os/Looper;Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;)V

    iput-object v1, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;
    .locals 1

    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "COManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "characteristic getValue is null:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :goto_1
    array-length v4, v2

    if-lt v0, v4, :cond_4

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "COManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCharacteristicRead:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    aget-byte v4, v2, v0

    const/4 v5, 0x4

    if-eq v0, v5, :cond_5

    const/4 v5, 0x6

    if-eq v0, v5, :cond_5

    const/16 v5, 0x8

    if-eq v0, v5, :cond_5

    const/16 v5, 0xa

    if-ne v0, v5, :cond_6

    :cond_5
    const-string/jumbo v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string/jumbo v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xf

    if-eq v0, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method private static a(Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;Ljava/lang/Exception;)V
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/taobao/mteam/abeacon/found/listeners/ReadDeviceInfoCallback;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/taobao/mteam/abeacon/found/listeners/ReadDeviceInfoCallback;

    invoke-interface {p0, p1}, Lcom/taobao/mteam/abeacon/found/listeners/ReadDeviceInfoCallback;->a(Ljava/lang/Exception;)Z

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "COManager"

    const-string/jumbo v1, " callOperationListenerFail onDeviceInfoFail callbackFlag:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0, p1}, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;->onFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;II)V
    .locals 4

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e:Landroid/os/Handler;

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;[B)V
    .locals 3

    instance-of v1, p2, Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;

    invoke-virtual {v0}, Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;->f()V

    sget-object v2, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->Connected:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    invoke-direct {p0, p1, v2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;)V

    invoke-virtual {v0}, Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;->g()Z

    move-result v0

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_4

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->c()Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "COManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " onOperationSuccess callbackFlag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p2}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->c()Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;->onSuccess([B)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->f(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->c(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z

    return-void
.end method

.method static synthetic a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;Ljava/lang/Exception;)V
    .locals 3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->c()Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "COManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " onOperationFailed callbackFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p2}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->c()Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;Ljava/lang/Exception;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->f(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)V

    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->c(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z

    return-void
.end method

.method private a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;)V
    .locals 3

    invoke-static {p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "COManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setBeaconConnectState beaconDevice.mac is :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->c:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "COManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "connectAndDiscoveryError,address:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",errorMSG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->DisConnect:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    invoke-direct {p0, p1, v0}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;)V

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "COManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "connectAndDiscoveryError,address:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",errorMSG:clear all operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/mteam/abeacon/found/DeviceOperation;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->c()Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->c()Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;)Z
    .locals 5

    invoke-static {p1}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->c()Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "COManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " onReadDeviceInfoSuccess callbackFlag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->c()Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/mteam/abeacon/found/listeners/ReadDeviceInfoCallback;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->c()Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/abeacon/found/listeners/ReadDeviceInfoCallback;

    :cond_1
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "COManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onReadSuccess:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Lcom/taobao/mteam/abeacon/found/listeners/ReadDeviceInfoCallback;->a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;)Z

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->f(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)V

    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->c(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z

    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z
    .locals 1

    invoke-static {p0}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;)Z
    .locals 3

    :try_start_0
    new-instance v0, Lcom/taobao/mteam/abeacon/found/r;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/mteam/abeacon/found/r;-><init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;)V

    invoke-virtual {p2, v0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a(Landroid/bluetooth/BluetoothGattCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Ljava/lang/String;)V

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "COManager"

    const-string/jumbo v2, "_connect,"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;)Z
    .locals 2

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->b(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-static {p0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/DeviceOperation;
    .locals 2

    invoke-static {p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/abeacon/found/DeviceOperation;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "COManager"

    const-string/jumbo v2, "onCharacteristicRead:%s,info:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z
    .locals 3

    sget-object v0, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->Connected:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "COManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "operationTemplate:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v0, Lcom/taobao/mteam/abeacon/found/s;

    invoke-direct {v0, p0, v1}, Lcom/taobao/mteam/abeacon/found/s;-><init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;B)V

    sget-object v3, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v2, [Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    aput-object p1, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/taobao/mteam/abeacon/found/s;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v2

    goto :goto_0
.end method

.method static synthetic c(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->c(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z

    move-result v0

    return v0
.end method

.method private c(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "COManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "executeNextOperation,address:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",state is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->WaitCallback:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->g(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->b(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/DeviceOperation;

    move-result-object v2

    if-eqz v2, :cond_6

    :try_start_0
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "COManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " doAction() callbackFlag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v2}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->a()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v3, "doAction result false"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-direct {p0, p1, v2, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_5
    :try_start_1
    sget-object v1, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->WaitCallback:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    invoke-direct {p0, p1, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "COManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "executeNextOperation,address:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", has no task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic d(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->g(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z

    move-result v0

    return v0
.end method

.method private static d(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "COManager"

    const-string/jumbo v2, "isBeaconDeviceUsable beaconDevice is Null:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "COManager"

    const-string/jumbo v2, "isBeaconDeviceUsable beaconDevice mac is Null:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "COManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isBeaconDeviceUsable\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;
    .locals 3

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static synthetic e(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/DeviceOperation;
    .locals 1

    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->b(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/DeviceOperation;

    move-result-object v0

    return-object v0
.end method

.method private f(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)V
    .locals 5

    sget-object v0, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->Connected:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    invoke-direct {p0, p1, v0}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;)V

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/mteam/abeacon/found/DeviceOperation;

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "COManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeFirstOperation,address:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->b(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/DeviceOperation;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    const-string/jumbo v0, "startAlert"

    invoke-virtual {v1}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->b()V

    sget-object v0, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->DisConnect:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    invoke-direct {p0, p1, v0}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;)V

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "COManager"

    const-string/jumbo v1, "has no other beaconDevice\uff0cdisconnect "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method static synthetic f(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z
    .locals 3

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "COManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "executeReadInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;

    move-result-object v0

    const-string/jumbo v1, "180a"

    const-string/jumbo v2, "2A25"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z
    .locals 4

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "COManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "executeAlert:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;

    move-result-object v0

    const-string/jumbo v1, "1802"

    const-string/jumbo v2, "2a06"

    sget-object v3, Lcom/taobao/mteam/abeacon/found/utils/FoundConstant;->a:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method private g(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z
    .locals 3

    sget-object v0, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->Connecting:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z
    .locals 4

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "COManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "executeStopAlert:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;

    move-result-object v0

    const-string/jumbo v1, "1802"

    const-string/jumbo v2, "2a06"

    sget-object v3, Lcom/taobao/mteam/abeacon/found/utils/FoundConstant;->c:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v2, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->b:Ljava/util/HashMap;

    :cond_1
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v2, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d:Ljava/util/HashMap;

    :cond_2
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    iput-object v2, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a:Landroid/content/Context;

    const/4 v0, 0x1

    return v0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->b()V

    goto :goto_0
.end method

.method public final a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z
    .locals 6

    new-instance v0, Lcom/taobao/mteam/abeacon/found/k;

    sget v2, Lcom/taobao/mteam/abeacon/found/utils/FoundConstant;->e:I

    const-string/jumbo v3, "startAlert"

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/taobao/mteam/abeacon/found/k;-><init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;ILjava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)V

    invoke-direct {p0, p1, v0}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/listeners/ReadDeviceInfoCallback;)Z
    .locals 6

    new-instance v0, Lcom/taobao/mteam/abeacon/found/j;

    sget v2, Lcom/taobao/mteam/abeacon/found/utils/FoundConstant;->d:I

    const-string/jumbo v3, "readDeviceInfo"

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/taobao/mteam/abeacon/found/j;-><init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;ILjava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)V

    invoke-direct {p0, p1, v0}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;[B[BLcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z
    .locals 9

    new-instance v6, Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;

    sget v0, Lcom/taobao/mteam/abeacon/found/utils/FoundConstant;->e:I

    const-string/jumbo v1, "writeDeviceAppDataGroup"

    invoke-direct {v6, v0, v1, p4}, Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;-><init>(ILjava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)V

    iget-object v7, p0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->f:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    new-instance v8, Lcom/taobao/mteam/abeacon/found/n;

    const-string/jumbo v0, "setCharacteristicNotification"

    invoke-direct {v8, p0, v0, p1}, Lcom/taobao/mteam/abeacon/found/n;-><init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Ljava/lang/String;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)V

    new-instance v0, Lcom/taobao/mteam/abeacon/found/o;

    const-string/jumbo v2, "writeDeviceAppData"

    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/taobao/mteam/abeacon/found/o;-><init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Ljava/lang/String;[B[BLcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)V

    new-instance v1, Lcom/taobao/mteam/abeacon/found/p;

    const-string/jumbo v2, "writeDeviceAppDataWaitNotify"

    invoke-direct {v1, p0, v2}, Lcom/taobao/mteam/abeacon/found/p;-><init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;->a(Lcom/taobao/mteam/abeacon/found/DeviceOperation;)Z

    invoke-virtual {v6, v0}, Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;->a(Lcom/taobao/mteam/abeacon/found/DeviceOperation;)Z

    invoke-virtual {v6, v1}, Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;->a(Lcom/taobao/mteam/abeacon/found/DeviceOperation;)Z

    invoke-direct {p0, p1, v6}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->b(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;)Z

    move-result v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public final b(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z
    .locals 6

    new-instance v0, Lcom/taobao/mteam/abeacon/found/l;

    sget v2, Lcom/taobao/mteam/abeacon/found/utils/FoundConstant;->e:I

    const-string/jumbo v3, "stopAlert"

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/taobao/mteam/abeacon/found/l;-><init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;ILjava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)V

    invoke-direct {p0, p1, v0}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;)Z

    move-result v0

    return v0
.end method

.method public final c(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z
    .locals 3

    new-instance v0, Lcom/taobao/mteam/abeacon/found/m;

    sget v1, Lcom/taobao/mteam/abeacon/found/utils/FoundConstant;->d:I

    const-string/jumbo v2, "readDeviceAppData"

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/taobao/mteam/abeacon/found/m;-><init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;ILjava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)V

    invoke-direct {p0, p1, v0}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;)Z

    move-result v0

    return v0
.end method

.method public final d(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z
    .locals 6

    new-instance v0, Lcom/taobao/mteam/abeacon/found/q;

    sget v2, Lcom/taobao/mteam/abeacon/found/utils/FoundConstant;->d:I

    const-string/jumbo v3, "readToken"

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/taobao/mteam/abeacon/found/q;-><init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;ILjava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)V

    invoke-direct {p0, p1, v0}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;)Z

    move-result v0

    return v0
.end method
