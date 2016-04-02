.class final Lcom/taobao/mteam/ibeacon/service/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field final synthetic a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;


# direct methods
.method constructor <init>(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/service/d;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IBeaconService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "got record"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/d;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-static {v0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)Lcom/taobao/mteam/ibeacon/service/BleHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/d;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-static {v0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)Lcom/taobao/mteam/ibeacon/service/BleHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    :cond_1
    new-instance v0, Lcom/taobao/mteam/ibeacon/service/j;

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/d;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-direct {v0, v1, v4}, Lcom/taobao/mteam/ibeacon/service/j;-><init>(Lcom/taobao/mteam/ibeacon/service/IBeaconService;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/taobao/mteam/ibeacon/service/i;

    new-instance v2, Lcom/taobao/mteam/ibeacon/service/i;

    iget-object v3, p0, Lcom/taobao/mteam/ibeacon/service/d;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/taobao/mteam/ibeacon/service/i;-><init>(Lcom/taobao/mteam/ibeacon/service/IBeaconService;Landroid/bluetooth/BluetoothDevice;I[B)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/taobao/mteam/ibeacon/service/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
