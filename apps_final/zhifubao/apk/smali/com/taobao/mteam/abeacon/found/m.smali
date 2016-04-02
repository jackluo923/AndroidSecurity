.class final Lcom/taobao/mteam/abeacon/found/m;
.super Lcom/taobao/mteam/abeacon/found/DeviceOperation;


# instance fields
.field final synthetic a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;


# direct methods
.method constructor <init>(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;ILjava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)V
    .locals 1

    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/m;->a:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;-><init>(IILjava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
