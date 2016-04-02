.class final Lcom/taobao/mteam/abeacon/found/s;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;


# direct methods
.method private constructor <init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/s;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/s;-><init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    check-cast p1, [Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/s;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-static {v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/s;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/s;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/s;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-static {v0, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/s;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-static {v2, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->b(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/s;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-static {v0, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->c(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z

    move-result v0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/s;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-static {v2, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/DeviceOperation;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/s;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-virtual {v2}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->d()I

    move-result v3

    invoke-virtual {v2}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->e()I

    move-result v2

    invoke-static {v0, v1, v3, v2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;II)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/s;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-static {v2, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->d(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/s;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    sget-object v3, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->Connecting:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    invoke-static {v2, v1, v3}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;)V

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/s;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-static {v2, v1, v0}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/s;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    sget-object v3, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->DisConnect:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    invoke-static {v2, v1, v3}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method
