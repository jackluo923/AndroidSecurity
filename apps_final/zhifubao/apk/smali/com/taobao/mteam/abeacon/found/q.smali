.class final Lcom/taobao/mteam/abeacon/found/q;
.super Lcom/taobao/mteam/abeacon/found/DeviceOperation;


# instance fields
.field final synthetic a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

.field private final synthetic b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;


# direct methods
.method constructor <init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;ILjava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)V
    .locals 1

    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/q;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iput-object p5, p0, Lcom/taobao/mteam/abeacon/found/q;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    const/4 v0, 0x5

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;-><init>(IILjava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "COManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "readToken:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/q;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/q;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/q;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-static {v0, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;

    move-result-object v0

    const-string/jumbo v1, "FFF1FA10-C309-11E4-AB09-0002A5D5C51B"

    const-string/jumbo v2, "FFF1FA12-C309-11E4-AB09-0002A5D5C51B"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
