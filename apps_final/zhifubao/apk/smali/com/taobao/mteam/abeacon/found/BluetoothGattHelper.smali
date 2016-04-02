.class public Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/bluetooth/BluetoothManager;

.field private b:Landroid/bluetooth/BluetoothAdapter;

.field private c:Ljava/lang/String;

.field private d:Landroid/bluetooth/BluetoothGatt;

.field private e:Landroid/content/Context;

.field private f:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->e:Landroid/content/Context;

    const-string/jumbo v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a:Landroid/bluetooth/BluetoothManager;

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GattHelper"

    const-string/jumbo v1, "Unable to initialize BluetoothManager."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GattHelper"

    const-string/jumbo v1, "Unable to obtain a BluetoothAdapter."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/UUID;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "0000%s-0000-1000-8000-00805f9b34fb"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 2

    invoke-direct {p0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-static {p1}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "GattHelper"

    const-string/jumbo v1, "bluetoothGattService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "connected,not found service"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p2}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "GattHelper"

    const-string/jumbo v1, "bluetoothGattCharacteristic is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "connected,not found characteristic"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()Z
    .locals 3

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GattHelper"

    const-string/jumbo v2, "BluetoothAdapter not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GattHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "writeGattCharacteristic,serviceID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "characteristicID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",values:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->e()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "GattHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "writeCharacteristic:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d()I
    .locals 4

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a:Landroid/bluetooth/BluetoothManager;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a:Landroid/bluetooth/BluetoothManager;

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->f:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "GattHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isConnected():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "(mBluetoothGatt != null)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    if-eqz v5, :cond_2

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 4

    invoke-direct {p0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GattHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "discoverServices start."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Landroid/bluetooth/BluetoothGattCallback;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "GattHelper"

    const-string/jumbo v1, "BluetoothAdapter not initialized or unspecified address."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-direct {p0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "GattHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isConnecting():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v0, :cond_1

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "GattHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getDevice for:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->f:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->f:Landroid/bluetooth/BluetoothDevice;

    :cond_5
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->f:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "GattHelper"

    const-string/jumbo v3, "Device not found.  Unable to connect."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v0, 0x0

    move-object v4, v0

    :goto_2
    if-nez v4, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "connect error,not found device"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->f:Landroid/bluetooth/BluetoothDevice;

    move-object v4, v0

    goto :goto_2

    :cond_9
    iget-object v5, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->e:Landroid/content/Context;

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "GattHelper"

    const-string/jumbo v3, "executeConnect Trying to create a new connection."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    :cond_b
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_e

    move v0, v1

    :goto_3
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo v6, "GattHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "isDisconnecting():"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "(mBluetoothGatt != null)="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    if-eqz v3, :cond_f

    move v3, v1

    :goto_4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    :cond_d
    invoke-virtual {v4, v5, v2, p1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    move v2, v1

    goto/16 :goto_0

    :cond_e
    move v0, v2

    goto :goto_3

    :cond_f
    move v3, v2

    goto :goto_4
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GattHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "readCharacteristic,serviceID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",characteristicID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->c()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "GattHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "readCharacteristic:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->c(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GattHelper"

    const-string/jumbo v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_1
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "GattHelper"

    const-string/jumbo v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    :cond_3
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GattHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setCharacteristicNotification"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    :cond_2
    const-string/jumbo v2, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v2}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->c(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method
