.class final Lcom/taobao/mteam/abeacon/found/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

.field private final synthetic b:Lcom/taobao/mteam/ibeacon/Region;


# direct methods
.method constructor <init>(Lcom/taobao/mteam/abeacon/found/BeaconManager;Lcom/taobao/mteam/ibeacon/Region;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/e;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    iput-object p2, p0, Lcom/taobao/mteam/abeacon/found/e;->b:Lcom/taobao/mteam/ibeacon/Region;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/e;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->i(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/e;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->i(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/e;->b:Lcom/taobao/mteam/ibeacon/Region;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/e;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/e;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/e;->b:Lcom/taobao/mteam/ibeacon/Region;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/e;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/e;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/e;->b:Lcom/taobao/mteam/ibeacon/Region;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/e;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->g(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/e;->b:Lcom/taobao/mteam/ibeacon/Region;

    invoke-virtual {v0, v1}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->b(Lcom/taobao/mteam/ibeacon/Region;)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BeaconManager"

    const-string/jumbo v2, "startRangingBeaconsInRegion"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
.end method
