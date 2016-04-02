.class final Lcom/taobao/mteam/abeacon/found/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/mteam/ibeacon/RangeNotifier;


# instance fields
.field final synthetic a:Lcom/taobao/mteam/abeacon/found/BeaconManager;


# direct methods
.method constructor <init>(Lcom/taobao/mteam/abeacon/found/BeaconManager;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/a;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;Lcom/taobao/mteam/ibeacon/Region;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/taobao/mteam/ibeacon/IBeacon;",
            ">;",
            "Lcom/taobao/mteam/ibeacon/Region;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/a;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "tag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "------------>didRangeBeaconsInRegion size"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "iBeacon process------> "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_3

    invoke-interface {v7, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "------------>+++++++"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "iBeacon process------> "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/a;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;

    instance-of v1, v0, Lcom/taobao/mteam/abeacon/found/listeners/AllBeaconScanCallback;

    instance-of v9, v0, Lcom/taobao/mteam/abeacon/found/listeners/IBeaconScanCallback;

    if-nez v1, :cond_a

    if-nez v9, :cond_a

    move v3, v4

    :goto_2
    move v5, v2

    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lt v5, v1, :cond_b

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "tag"

    const-string/jumbo v3, "ibeacon process------> end \n"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "tag"

    const-string/jumbo v3, "-------->----------"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/a;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/taobao/mteam/abeacon/found/a;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v3}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/a;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v1, p2, v8}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/taobao/mteam/abeacon/found/BeaconManager;Lcom/taobao/mteam/ibeacon/Region;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "didFoundedBeacons callback is null "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_12

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "tag"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "didRangeBeaconsInRegion didFoundedBeacons "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "tag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " didFoundedBeacons "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "tag"

    const-string/jumbo v3, "-----------------------------didRangeBeaconsInRegion didFoundedBeacons "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-interface {v0, v1}, Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;->a(Ljava/util/List;)Z

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto/16 :goto_1

    :cond_a
    move v3, v2

    goto/16 :goto_2

    :cond_b
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/mteam/ibeacon/IBeacon;

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v6

    if-eqz v6, :cond_c

    const-string/jumbo v6, "tag"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "------>iBeacon found:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/IBeacon;->j()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/IBeacon;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/IBeacon;->k()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/IBeacon;->j()Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_d

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/IBeacon;->h()Z

    move-result v10

    if-nez v10, :cond_10

    :cond_d
    if-eqz v9, :cond_e

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/IBeacon;->i()Z

    move-result v10

    if-nez v10, :cond_10

    :cond_e
    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/IBeacon;->i()Z

    move-result v10

    if-eqz v10, :cond_11

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "ABBAECBB"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v6, v4

    :goto_5
    if-nez v6, :cond_f

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/IBeacon;->h()Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_f
    invoke-static {v1}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a(Lcom/taobao/mteam/ibeacon/IBeacon;)Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_3

    :cond_11
    move v6, v2

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_12
    move v4, v2

    goto/16 :goto_4
.end method
