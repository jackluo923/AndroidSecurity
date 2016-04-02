.class public Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;
.super Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;


# static fields
.field public static final mapKeys:[Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

.field private b:Ljava/util/Map;
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

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "apdid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "h"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "imsi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "mac"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "px"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "sensor"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "umid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "utdid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "tid"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "idfa"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "gss"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "gss2"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "usb"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "wi"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->mapKeys:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;-><init>()V

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "apdid"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "umid"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "utdid"

    invoke-interface {v2, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "tid"

    invoke-interface {v2, v3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "imei"

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "imsi"

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "mac"

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "px"

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "w"

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenWidth(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "h"

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenHeight(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v2, "idfa"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v2, "gss"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getGsmSimState()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v2, "gss2"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getGsmSimState2()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v2, "usb"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getUsbState()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v3, "wi"

    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getWifiInterface()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/rdssecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getWifiInterface()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic buildJsonNode()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->buildJsonNode()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public buildJsonNode()Lorg/json/JSONObject;
    .locals 7

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sget-object v3, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->mapKeys:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_1

    :try_start_0
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_0

    instance-of v6, v0, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    if-eqz v6, :cond_0

    :try_start_1
    check-cast v0, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;->buildJsonNode()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public injectNodes(Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;)V
    .locals 3

    iput-object p1, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->a:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v1, "sensor"

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v2/model/DevNodeModel;->a:Lcom/alipay/rdssecuritysdk/v2/model/BaseNodeModel;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
