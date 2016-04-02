.class final Lcom/taobao/mteam/abeacon/found/o;
.super Lcom/taobao/mteam/abeacon/found/DeviceOperation;


# instance fields
.field final synthetic a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

.field private final synthetic b:[B

.field private final synthetic c:[B

.field private final synthetic d:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;


# direct methods
.method constructor <init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Ljava/lang/String;[B[BLcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/o;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iput-object p3, p0, Lcom/taobao/mteam/abeacon/found/o;->b:[B

    iput-object p4, p0, Lcom/taobao/mteam/abeacon/found/o;->c:[B

    iput-object p5, p0, Lcom/taobao/mteam/abeacon/found/o;->d:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-direct {p0, p2}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/o;->b:[B

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/o;->b:[B

    array-length v0, v0

    :cond_0
    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/o;->c:[B

    array-length v1, v1

    add-int/2addr v1, v0

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    aput-byte v1, v2, v3

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/o;->c:[B

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/taobao/mteam/abeacon/found/o;->c:[B

    array-length v5, v5

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/o;->b:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/taobao/mteam/abeacon/found/o;->c:[B

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/o;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/o;->d:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-static {v0, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;

    move-result-object v0

    const-string/jumbo v1, "FFF1FA10-C309-11E4-AB09-0002A5D5C51B"

    const-string/jumbo v3, "FFF1FA11-C309-11E4-AB09-0002A5D5C51B"

    invoke-virtual {v0, v1, v3, v2}, Lcom/taobao/mteam/abeacon/found/BluetoothGattHelper;->b(Ljava/lang/String;Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    throw v0
.end method
