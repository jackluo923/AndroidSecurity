.class public Lcom/alipay/apmobilesecuritysdk/apdid/ApdidModel;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStaticUploadData(Landroid/content/Context;Ljava/util/Map;Z)Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;"
        }
    .end annotation

    new-instance v4, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;

    invoke-direct {v4}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;-><init>()V

    const-string/jumbo v5, "3"

    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    const-string/jumbo v3, ""

    const-string/jumbo v0, ""

    const-string/jumbo v6, "umid"

    const-string/jumbo v7, ""

    invoke-static {p1, v6, v7}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->getValueFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorage;->getPrivateApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getApdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorage;->getPublicApdid(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getApdid()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/v2/ApdidStorageV2;->getPrivateApdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/v2/ApdidStorageV2;->getPublicApdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    const-string/jumbo v7, "android"

    iput-object v7, v4, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->os:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->priApdid:Ljava/lang/String;

    iput-object v3, v4, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->pubApdid:Ljava/lang/String;

    iput-object v2, v4, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->token:Ljava/lang/String;

    iput-object v6, v4, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->umidToken:Ljava/lang/String;

    iput-object v0, v4, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->lastTime:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->version:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1}, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->getStaticInfo(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iput-object v0, v4, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->dataMap:Ljava/util/Map;

    iget-object v0, v4, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->dataMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, v4, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->dataMap:Ljava/util/Map;

    const-string/jumbo v1, "AL3"

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getWifiBssid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v4, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->dataMap:Ljava/util/Map;

    const-string/jumbo v2, "AA5"

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/SettingsStorage;->getAppListVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/SettingsStorage;->getAppList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    const-string/jumbo v0, ""

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v4

    :cond_5
    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getAllAppName(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5, v3, v0}, Lcom/alipay/apmobilesecuritysdk/util/AppListUtils;->getAppListByListAndVersion(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
