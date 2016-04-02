.class final Lcom/taobao/mteam/abeacon/found/r;
.super Landroid/bluetooth/BluetoothGattCallback;


# instance fields
.field final synthetic a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

.field private b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

.field private c:Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;)V
    .locals 1

    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/mteam/abeacon/found/r;->d:I

    iput-object p2, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    iput-object p3, p0, Lcom/taobao/mteam/abeacon/found/r;->c:Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;

    return-void
.end method


# virtual methods
.method public final onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    const-string/jumbo v0, "FFF1FA10-C309-11E4-AB09-0002A5D5C51B"

    const-string/jumbo v1, "FFF1FA13-C309-11E4-AB09-0002A5D5C51B"

    invoke-static {v0, v1, p2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-static {v0, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/DeviceOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;[B)V

    :cond_0
    return-void
.end method

.method public final onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    const-string/jumbo v2, "FFF1FA10-C309-11E4-AB09-0002A5D5C51B"

    const-string/jumbo v3, "FFF1FA12-C309-11E4-AB09-0002A5D5C51B"

    invoke-static {v2, v3, p2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2

    iget-object v3, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    const-string/jumbo v3, "180a"

    const-string/jumbo v4, "2A25"

    invoke-static {v3, v4, p2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3

    iget-object v4, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    const-string/jumbo v4, "180a"

    const-string/jumbo v5, "2A5E"

    invoke-static {v4, v5, p2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v4

    iget-object v5, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v6, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-static {v5, v6}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/DeviceOperation;

    move-result-object v5

    if-eqz v2, :cond_3

    if-nez p3, :cond_1

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "read error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/taobao/mteam/abeacon/found/utils/GattError;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v5, v2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;Ljava/lang/Exception;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-static {v0, v1, v5, v2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;[B)V

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    if-eqz v4, :cond_0

    :cond_4
    if-nez p3, :cond_5

    :goto_2
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "read error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/taobao/mteam/abeacon/found/utils/GattError;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v5, v2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-static {p2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-virtual {v1, v0}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-static {v0, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;

    move-result-object v0

    const-string/jumbo v1, "180a"

    const-string/jumbo v2, "2A25"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startReadDeviceSNFailed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/taobao/mteam/abeacon/found/utils/GattError;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-static {v1, v2, v5, v0}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;Ljava/lang/Exception;)V

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "COManager"

    const-string/jumbo v2, "executeReadInfo:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-static {p2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->b(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-virtual {v1, v0}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-static {v0, v1, v5}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;)Z

    goto/16 :goto_1
.end method

.method public final onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    const-string/jumbo v2, "1802"

    const-string/jumbo v3, "2a06"

    invoke-static {v2, v3, p2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2

    iget-object v3, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    const-string/jumbo v3, "FFF1FA10-C309-11E4-AB09-0002A5D5C51B"

    const-string/jumbo v4, "FFF1FA11-C309-11E4-AB09-0002A5D5C51B"

    invoke-static {v3, v4, p2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3

    iget-object v4, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v5, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-static {v4, v5}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/DeviceOperation;

    move-result-object v4

    if-eqz v2, :cond_3

    if-nez p3, :cond_1

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-static {p3}, Lcom/taobao/mteam/abeacon/found/utils/GattError;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v4, v2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;Ljava/lang/Exception;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-static {v0, v1, v4, v2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;[B)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_0

    if-nez p3, :cond_4

    :goto_2
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-static {p3}, Lcom/taobao/mteam/abeacon/found/utils/GattError;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v4, v2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;[B)V

    goto :goto_1
.end method

.method public final onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "BluetoothGatt"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onConnectionStateChange connected:"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p3, v5, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "status:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne p3, v5, :cond_4

    if-nez p2, :cond_3

    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->c:Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;

    invoke-virtual {v0}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "discover service error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/taobao/mteam/abeacon/found/utils/GattError;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "connect error ,newState:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/taobao/mteam/abeacon/found/utils/GattError;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    const-string/jumbo v0, "FFF1FA10-C309-11E4-AB09-0002A5D5C51B"

    const-string/jumbo v1, "FFF1FA13-C309-11E4-AB09-0002A5D5C51B"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v0

    const-string/jumbo v1, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v1}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-static {v0, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/DeviceOperation;

    move-result-object v1

    if-nez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;[B)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "enableCCCD error,"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/taobao/mteam/abeacon/found/utils/GattError;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1, v3}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public final onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "COManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onServicesDiscovered success:"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_3

    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    sget-object v2, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->Connected:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    invoke-static {v0, v1, v2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;)V

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-virtual {v1}, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-static {v0, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->c(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/r;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/r;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "discover characteristics error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/taobao/mteam/abeacon/found/utils/GattError;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Ljava/lang/String;)V

    goto :goto_2
.end method
