.class final Lcom/taobao/mteam/abeacon/found/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

.field private final synthetic b:Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;

.field private final synthetic c:Lcom/taobao/mteam/ibeacon/Region;


# direct methods
.method constructor <init>(Lcom/taobao/mteam/abeacon/found/BeaconManager;Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;Lcom/taobao/mteam/ibeacon/Region;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/d;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    iput-object p2, p0, Lcom/taobao/mteam/abeacon/found/d;->b:Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;

    iput-object p3, p0, Lcom/taobao/mteam/abeacon/found/d;->c:Lcom/taobao/mteam/ibeacon/Region;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/d;->b:Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/d;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/d;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/d;->c:Lcom/taobao/mteam/ibeacon/Region;

    iget-object v3, p0, Lcom/taobao/mteam/abeacon/found/d;->b:Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/d;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->g(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    move-result-object v0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "+++getIBeaconManager :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/d;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/d;->c:Lcom/taobao/mteam/ibeacon/Region;

    invoke-static {v1, v2}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/taobao/mteam/abeacon/found/BeaconManager;Lcom/taobao/mteam/ibeacon/Region;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/d;->c:Lcom/taobao/mteam/ibeacon/Region;

    invoke-virtual {v0, v1}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Lcom/taobao/mteam/ibeacon/Region;)V

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BeaconManager"

    const-string/jumbo v1, "+++startRangingBeaconsInRegion:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/d;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->h(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/d;->c:Lcom/taobao/mteam/ibeacon/Region;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/d;->b:Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/d;->b:Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;

    invoke-interface {v1, v0}, Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;->a(Ljava/lang/Exception;)Z

    :cond_3
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BeaconManager"

    const-string/jumbo v2, "startRangingBeaconsInRegion"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
