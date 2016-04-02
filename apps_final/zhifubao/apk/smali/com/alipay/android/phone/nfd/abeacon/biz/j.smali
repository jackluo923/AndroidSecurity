.class final Lcom/alipay/android/phone/nfd/abeacon/biz/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/aspect/Advice;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/j;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/j;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->d(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Lcom/taobao/mteam/abeacon/found/BeaconManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/j;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->c(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/j;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->d(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Lcom/taobao/mteam/abeacon/found/BeaconManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/j;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->e(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/j;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->f(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/j;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->d(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Lcom/taobao/mteam/abeacon/found/BeaconManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/j;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->g(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
