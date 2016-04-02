.class public Lcom/alipay/apmobilesecuritysdk/model/EnvironmentInfoModel;
.super Ljava/lang/Object;


# static fields
.field public static final AE10_MODEL:Ljava/lang/String; = "AE10"

.field public static final AE11_NAME:Ljava/lang/String; = "AE11"

.field public static final AE12_VERSION:Ljava/lang/String; = "AE12"

.field public static final AE13_SDK:Ljava/lang/String; = "AE13"

.field public static final AE14_TAGS:Ljava/lang/String; = "AE14"

.field public static final AE15_QEMU:Ljava/lang/String; = "AE15"

.field public static final AE16_IP:Ljava/lang/String; = "AE16"

.field public static final AE17_USERAGENT:Ljava/lang/String; = "AE17"

.field public static final AE1_OS:Ljava/lang/String; = "AE1"

.field public static final AE2_ROOT:Ljava/lang/String; = "AE2"

.field public static final AE3_EMULATOR:Ljava/lang/String; = "AE3"

.field public static final AE4_BOARD:Ljava/lang/String; = "AE4"

.field public static final AE5_BRAND:Ljava/lang/String; = "AE5"

.field public static final AE6_DEVICE:Ljava/lang/String; = "AE6"

.field public static final AE7_DISPLAYID:Ljava/lang/String; = "AE7"

.field public static final AE8_VERSION_INCREMENTAL:Ljava/lang/String; = "AE8"

.field public static final AE9_MANUFACTURER:Ljava/lang/String; = "AE9"

.field public static final FIELD:Ljava/lang/String; = "AE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getEnvironmentInfo(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/alipay/apmobilesecuritysdk/model/EnvironmentInfoModel;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "AE1"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getOSName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "AE2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->isRooted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "AE3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->isEmulator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AE4"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductBoard()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AE5"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductBrand()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AE6"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductDevice()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AE7"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildDisplayId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AE8"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionIncremental()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AE9"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AE10"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductModel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AE11"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AE12"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionRelease()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AE13"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildVersionSDK()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AE14"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getBuildTags()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AE15"

    invoke-virtual {v2}, Lcom/alipay/security/mobile/module/deviceinfo/EnvironmentInfo;->getKernelQemu()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v3

    :cond_0
    :try_start_1
    const-string/jumbo v0, "0"

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
