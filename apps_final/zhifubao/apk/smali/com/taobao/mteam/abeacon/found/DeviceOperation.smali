.class public Lcom/taobao/mteam/abeacon/found/DeviceOperation;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->a:I

    iput p2, p0, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->b:I

    iput-object p3, p0, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->d:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->d:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->a:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->b:I

    return v0
.end method
