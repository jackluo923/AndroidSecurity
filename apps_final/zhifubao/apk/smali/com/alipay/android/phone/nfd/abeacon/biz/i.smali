.class final Lcom/alipay/android/phone/nfd/abeacon/biz/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/i;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "runnableCheckCache"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/i;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;->c()Z

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/i;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->b(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/i;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;->e()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/i;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;->d()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "matchBeaconServiceFromRpc from runnableCheckCache, needFetches:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/abeacon/utils/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/i;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/i;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->c(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/i;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->a(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;)Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/abeacon/biz/LocalDeviceServiceManager;->b()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconSnifferServiceImpl;->b()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
