.class public Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;
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

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "asdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "board"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "brand"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "device"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "displayid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "em"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "manufacturer"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "model"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "incremental"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "os"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "qemu"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "release"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "kerver"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "root"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "tags"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "processor"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "pf"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "pn"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "pm"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->mapKeys:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;-><init>()V

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;

    move-result-object v1

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v3, "asdk"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionSDK()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v3, "board"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductBoard()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v3, "brand"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductBrand()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v3, "device"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductDevice()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v3, "displayid"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildDisplayId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v4, "em"

    invoke-virtual {v1, p1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->isEmulator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v3, "manufacturer"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v3, "model"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductModel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v3, "name"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v3, "incremental"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionIncremental()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v3, "os"

    const-string/jumbo v4, "android"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v3, "qemu"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getKernelQemu()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v3, "release"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionRelease()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v3, "kerver"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getKernelVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v4, "root"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->isRooted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_1
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v3, "tags"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildTags()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "processor"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCpuName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "pf"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCpuFrequent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "pn"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCpuCount()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    const-string/jumbo v1, "pm"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCPUHardware()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string/jumbo v0, "false"

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic buildJsonNode()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->buildJsonNode()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public buildJsonNode()Lorg/json/JSONObject;
    .locals 7

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->mapKeys:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/alipay/rdssecuritysdk/v2/model/EnvNodeModel;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_0

    :try_start_0
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_1
    return-object v1
.end method
