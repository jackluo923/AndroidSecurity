.class final Lcom/inmobi/commons/thinICE/icedatacollector/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "IceDataCollector"

    const-string v3, "** sample runnable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_2

    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "IceDataCollector"

    const-string v1, "sampling when looper is null, exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_5

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_5

    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "IceDataCollector"

    const-string v1, "activity no longer has focus, terminating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b()V

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->flush()V

    invoke-static {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-static {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a(Landroid/app/Activity;)Landroid/app/Activity;

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->f()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->f()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;->onSamplingTerminated(Ljava/util/List;)V

    :cond_4
    invoke-static {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->i()Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->g()Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleInterval()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v2, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "IceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "next sample in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleInterval()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    invoke-direct {v2}, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;-><init>()V

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getWifiFlags()I

    move-result v3

    invoke-static {v3, v6}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v4

    if-nez v4, :cond_7

    move v1, v0

    :cond_7
    invoke-static {v3, v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v3

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getCellOpFlags()I

    move-result v4

    invoke-static {v4, v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v0

    invoke-static {v4, v6}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v4

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isSampleCellOperatorEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->getCellNetworkInfo(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;

    move-result-object v5

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    iput v0, v5, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->simMcc:I

    const/4 v0, -0x1

    iput v0, v5, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->simMnc:I

    :cond_8
    if-eqz v4, :cond_9

    const/4 v0, -0x1

    iput v0, v5, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->currentMcc:I

    const/4 v0, -0x1

    iput v0, v5, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->currentMnc:I

    :cond_9
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "IceDataCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "-- cell operator: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iput-object v5, v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->cellOperator:Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_b
    :goto_1
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isSampleCellEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->hasGetCurrentServingCellPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->getCurrentCellTower(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;

    move-result-object v0

    iput-object v0, v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->connectedCellTowerInfo:Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;

    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "IceDataCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "-- current serving cell: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->connectedCellTowerInfo:Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;

    iget-object v5, v5, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_c
    :goto_2
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->getConnectedWifiInfo(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->connectedWifiAp:Lcom/inmobi/commons/thinICE/wifi/WifiInfo;

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isSampleLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/location/LocationUtil;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/location/LocationUtil;->getLastKnownLocations(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "IceDataCollector"

    const-string v5, "-- locations:"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/thinICE/location/LocationInfo;

    const-string v6, "IceDataCollector"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "   + "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-boolean v4, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "IceDataCollector"

    const-string v5, "Error getting location data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_4
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isSampleVisibleWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    :try_start_3
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->hasWifiScanPermission(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Lcom/inmobi/commons/thinICE/icedatacollector/a$a;

    invoke-direct {v4, p0, v1, v3}, Lcom/inmobi/commons/thinICE/icedatacollector/a$a;-><init>(Lcom/inmobi/commons/thinICE/icedatacollector/a;ZZ)V

    invoke-static {v0, v4}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->requestScan(Landroid/content/Context;Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_e
    :goto_5
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->k()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    invoke-static {v2}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a(Lcom/inmobi/commons/thinICE/icedatacollector/Sample;)Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_6
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleHistorySize()I

    move-result v2

    if-le v0, v2, :cond_13

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    sget-boolean v4, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "IceDataCollector"

    const-string v5, "Error getting cell operator data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_f
    :try_start_5
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "IceDataCollector"

    const-string v4, "application does not have permission to access current serving cell"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    sget-boolean v4, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v4, :cond_c

    const-string v4, "IceDataCollector"

    const-string v5, "Error getting cell data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_10
    :try_start_6
    iput-object v4, v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->lastKnownLocations:Ljava/util/HashMap;

    goto :goto_4

    :cond_11
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "IceDataCollector"

    const-string v4, "application does not have permission to access location"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_4

    :cond_12
    :try_start_7
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "IceDataCollector"

    const-string v1, "application does not have permission to scan for wifi access points"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    sget-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v1, :cond_e

    const-string v1, "IceDataCollector"

    const-string v3, "Error scanning for wifi"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :cond_13
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method
