.class final Lcom/taobao/mteam/ibeacon/service/i;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/bluetooth/BluetoothDevice;

.field public b:I

.field public c:[B

.field final synthetic d:Lcom/taobao/mteam/ibeacon/service/IBeaconService;


# direct methods
.method public constructor <init>(Lcom/taobao/mteam/ibeacon/service/IBeaconService;Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/service/i;->d:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/taobao/mteam/ibeacon/service/i;->a:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lcom/taobao/mteam/ibeacon/service/i;->b:I

    iput-object p4, p0, Lcom/taobao/mteam/ibeacon/service/i;->c:[B

    return-void
.end method
