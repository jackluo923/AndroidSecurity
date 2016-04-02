.class final Lcom/taobao/mteam/abeacon/found/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;


# instance fields
.field final synthetic a:Lcom/taobao/mteam/abeacon/found/BeaconManager;


# direct methods
.method constructor <init>(Lcom/taobao/mteam/abeacon/found/BeaconManager;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/c;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
