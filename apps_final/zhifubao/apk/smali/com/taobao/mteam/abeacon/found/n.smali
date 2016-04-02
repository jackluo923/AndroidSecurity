.class final Lcom/taobao/mteam/abeacon/found/n;
.super Lcom/taobao/mteam/abeacon/found/DeviceOperation;


# instance fields
.field final synthetic a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

.field private final synthetic b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;


# direct methods
.method constructor <init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Ljava/lang/String;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/n;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iput-object p3, p0, Lcom/taobao/mteam/abeacon/found/n;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-direct {p0, p2}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/n;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/n;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-static {v0, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;

    move-result-object v0

    const-string/jumbo v1, "FFF1FA10-C309-11E4-AB09-0002A5D5C51B"

    const-string/jumbo v2, "FFF1FA13-C309-11E4-AB09-0002A5D5C51B"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "setCharacteristicNotificationFailed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "COManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setCharacteristicNotification:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/n;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
