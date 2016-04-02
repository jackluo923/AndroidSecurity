.class public Lcom/alipay/rdssecuritysdk/impl/InfoNodeBuilder;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildDeviceInfoNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "apdid"

    invoke-static {p3}, Lcom/alipay/rdssecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo p3, ""

    :cond_0
    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "imei"

    invoke-virtual {v0, p4}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "imsi"

    invoke-virtual {v0, p4}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "mac"

    invoke-virtual {v0, p4}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "px"

    invoke-virtual {v0, p4}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v0, p4}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSensorDigest(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "tid"

    invoke-static {p0}, Lcom/alipay/rdssecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo p0, ""

    :cond_1
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "umid"

    invoke-static {p2}, Lcom/alipay/rdssecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo p2, ""

    :cond_2
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "utdid"

    invoke-static {p1}, Lcom/alipay/rdssecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo p1, ""

    :cond_3
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "w"

    invoke-virtual {v0, p4}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenWidth(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "h"

    invoke-virtual {v0, p4}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenHeight(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method static buildEnvInfoNode(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;

    move-result-object v2

    const-string/jumbo v0, "asdk"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "borad"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductBoard()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "brand"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "device"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "displayid"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildDisplayId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "em"

    invoke-virtual {v2, p0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->isEmulator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "manufacturer"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "model"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "name"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "incremental"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionIncremental()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "os"

    const-string/jumbo v3, "android"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "qemu"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getKernelQemu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "release"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionRelease()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "rip"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "root"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->isRooted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    :goto_1
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "tag"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "ua"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_1
.end method

.method static buildLocInfoNode(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getLocationInfo(Landroid/content/Context;)Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;

    move-result-object v1

    const-string/jumbo v2, "active"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getIsWifiActive()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "bssid"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getBssid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "ssid"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "cid"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getCellId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "la"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "lo"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "lac"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getLac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "mcc"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getMcc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "mnc"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->getMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    return-object v0
.end method
