.class public Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;
.super Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;


# static fields
.field public static final mapKeys:[Ljava/lang/String;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "active"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "bssid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "cid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "omac"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "la"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "lac"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "lo"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "acc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ssid"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "strength"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "carrier"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "nettype"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "t"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->mapKeys:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;-><init>()V

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v9

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;

    move-result-object v10

    invoke-static {p1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getLocationInfo(Landroid/content/Context;)Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;

    move-result-object v8

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v2, "active"

    invoke-virtual {v8}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getIsWifiActive()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/deviceinfo/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "false"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getBssid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getCellId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getLac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getMcc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getMnc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getSsid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getWifiStrength()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, p1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, p1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getNetworkConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v12, "bssid"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/deviceinfo/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v12, "cid"

    invoke-static {v1}, Lcom/alipay/security/mobile/module/deviceinfo/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "omac"

    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v11, "la"

    invoke-static {v2}, Lcom/alipay/security/mobile/module/deviceinfo/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, ""

    :goto_2
    invoke-interface {v1, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v2, "lac"

    invoke-static {v3}, Lcom/alipay/security/mobile/module/deviceinfo/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, ""

    :goto_3
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v2, "lo"

    invoke-static {v4}, Lcom/alipay/security/mobile/module/deviceinfo/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, ""

    :goto_4
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v2, "mcc"

    invoke-static {v5}, Lcom/alipay/security/mobile/module/deviceinfo/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, ""

    :goto_5
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v2, "mnc"

    invoke-static {v6}, Lcom/alipay/security/mobile/module/deviceinfo/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, ""

    :goto_6
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "acc"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v2, "ssid"

    invoke-static {v7}, Lcom/alipay/security/mobile/module/deviceinfo/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, ""

    :goto_7
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v2, "strength"

    invoke-static {v8}, Lcom/alipay/security/mobile/module/deviceinfo/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, ""

    :goto_8
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v2, "carrier"

    invoke-static {v9}, Lcom/alipay/security/mobile/module/deviceinfo/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, ""

    :goto_9
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v2, "nettype"

    invoke-static {v10}, Lcom/alipay/security/mobile/module/deviceinfo/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, ""

    :goto_a
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string/jumbo v0, "true"

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    goto/16 :goto_1

    :cond_3
    move-object v0, v2

    goto/16 :goto_2

    :cond_4
    move-object v0, v3

    goto/16 :goto_3

    :cond_5
    move-object v0, v4

    goto/16 :goto_4

    :cond_6
    move-object v0, v5

    goto/16 :goto_5

    :cond_7
    move-object v0, v6

    goto :goto_6

    :cond_8
    move-object v0, v7

    goto :goto_7

    :cond_9
    move-object v0, v8

    goto :goto_8

    :cond_a
    move-object v0, v9

    goto :goto_9

    :cond_b
    move-object v0, v10

    goto :goto_a
.end method


# virtual methods
.method public bridge synthetic buildJsonNode()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->buildJsonNode()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public buildJsonNode()Lorg/json/JSONObject;
    .locals 7

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->mapKeys:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_0

    instance-of v6, v5, Lorg/json/JSONArray;

    if-eqz v6, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_2
    return-object v1
.end method
