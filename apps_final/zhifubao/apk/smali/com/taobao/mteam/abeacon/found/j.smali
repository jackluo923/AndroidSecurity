.class final Lcom/taobao/mteam/abeacon/found/j;
.super Lcom/taobao/mteam/abeacon/found/DeviceOperation;


# instance fields
.field final synthetic a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

.field private final synthetic b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;


# direct methods
.method constructor <init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;ILjava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)V
    .locals 1

    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/j;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iput-object p5, p0, Lcom/taobao/mteam/abeacon/found/j;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;-><init>(IILjava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/j;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/j;->b:Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    invoke-static {v0, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->f(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Z

    move-result v0

    return v0
.end method
