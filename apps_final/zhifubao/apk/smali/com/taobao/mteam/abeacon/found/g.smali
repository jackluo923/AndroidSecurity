.class final Lcom/taobao/mteam/abeacon/found/g;
.super Lcom/taobao/mteam/abeacon/found/SimpleDeviceBusinessTemplate;


# instance fields
.field final synthetic a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

.field private final synthetic b:Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;

.field private final synthetic c:[B

.field private final synthetic d:[B

.field private final synthetic e:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;


# direct methods
.method constructor <init>(Lcom/taobao/mteam/abeacon/found/BeaconManager;Ljava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;[B[BLcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/g;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    iput-object p3, p0, Lcom/taobao/mteam/abeacon/found/g;->b:Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;

    iput-object p4, p0, Lcom/taobao/mteam/abeacon/found/g;->c:[B

    iput-object p5, p0, Lcom/taobao/mteam/abeacon/found/g;->d:[B

    iput-object p6, p0, Lcom/taobao/mteam/abeacon/found/g;->e:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;

    invoke-direct {p0, p2}, Lcom/taobao/mteam/abeacon/found/SimpleDeviceBusinessTemplate;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/g;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->j(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/g;->b:Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;

    invoke-static {v1}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;)Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/g;->c:[B

    iget-object v3, p0, Lcom/taobao/mteam/abeacon/found/g;->d:[B

    iget-object v4, p0, Lcom/taobao/mteam/abeacon/found/g;->e:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;[B[BLcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z

    move-result v0

    return v0
.end method
