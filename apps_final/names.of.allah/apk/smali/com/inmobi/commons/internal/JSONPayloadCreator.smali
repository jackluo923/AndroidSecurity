.class public Lcom/inmobi/commons/internal/JSONPayloadCreator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/commons/internal/PayloadCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;)Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "t"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ts"

    invoke-virtual {p1}, Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "a"

    invoke-virtual {p1}, Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;->getActivity()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    iget-object v2, p1, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p1, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;->signalStrength:I

    if-eqz v1, :cond_0

    const-string v1, "ss"

    iget v2, p1, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;->signalStrength:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/inmobi/commons/thinICE/icedatacollector/Sample;Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;)Lorg/json/JSONObject;
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "t"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->isConnectedWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "c-ap"

    iget-object v3, p1, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->connectedWifiAp:Lcom/inmobi/commons/thinICE/wifi/WifiInfo;

    invoke-direct {p0, v3}, Lcom/inmobi/commons/internal/JSONPayloadCreator;->a(Lcom/inmobi/commons/thinICE/wifi/WifiInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p2}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->isCellEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "c-sc"

    iget-object v3, p1, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->connectedCellTowerInfo:Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;

    invoke-direct {p0, v3}, Lcom/inmobi/commons/internal/JSONPayloadCreator;->a(Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p2}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->isVisibleWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->visibleWifiAp:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->visibleWifiAp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/inmobi/commons/internal/JSONPayloadCreator;->a(Lcom/inmobi/commons/thinICE/wifi/WifiInfo;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "v-ap"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-le v0, v5, :cond_5

    const-string v0, "ts"

    iget-wide v3, p1, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->utc:J

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method

.method private a(Lcom/inmobi/commons/thinICE/wifi/WifiInfo;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "bssid"

    iget-wide v2, p1, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;->bssid:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "essid"

    iget-object v2, p1, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static currentLocationStr()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->isValidGeoInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->getLat()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->getLon()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/inmobi/commons/data/LocationInfo;->getLocAccuracy()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public toPayloadString(Ljava/util/List;Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/thinICE/icedatacollector/Sample;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v7, -0x1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getThinIceConfig()Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v4}, Lcom/inmobi/commons/internal/JSONPayloadCreator;->a(Lcom/inmobi/commons/thinICE/icedatacollector/Sample;Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/inmobi/commons/internal/JSONPayloadCreator;->a(Lcom/inmobi/commons/internal/ActivityRecognitionSampler$ActivitySample;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "payload"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-static {p3}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->getCellNetworkInfo(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;

    move-result-object v0

    invoke-virtual {v4}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->isOperatorEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v4}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->getCellOpsFlag()I

    move-result v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, v0, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->simMcc:I

    if-ne v3, v7, :cond_5

    iget v3, v0, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->simMnc:I

    if-eq v3, v7, :cond_6

    :cond_5
    const-string v3, "s-ho"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->simMcc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->simMnc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    invoke-virtual {v4}, Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;->getCellOpsFlag()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v3

    if-nez v3, :cond_8

    iget v3, v0, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->currentMcc:I

    if-ne v3, v7, :cond_7

    iget v3, v0, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->currentMnc:I

    if-eq v3, v7, :cond_8

    :cond_7
    const-string v3, "s-co"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->currentMcc:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->currentMnc:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v3, "tz"

    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "ts"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "pr-SAND-"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "4.4.1"

    invoke-static {v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getInMobiInternalVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-20140613"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mk-version"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/inmobi/commons/internal/JSONPayloadCreator;->currentLocationStr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "u-latlong-accu"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/inmobi/commons/uid/UIDUtil;->getMap(Landroid/content/Context;Lcom/inmobi/commons/uid/UID;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "ua"

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "s-ver"

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/inmobi/commons/uid/UIDUtil;->bindToEncodedJSON(Ljava/util/Map;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-4.4.1"

    const-string v2, "Unable to create payload for sending ThinICE params"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2
.end method
