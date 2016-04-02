.class public Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->a:Ljava/util/Map;

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v1, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->a:Ljava/util/Map;

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->b:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/alipay/apmobilesecuritysdk/model/CustomInfoModel;->getAppInfo(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->b:Ljava/util/Map;

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/model/EnvironmentInfoModel;->getEnvironmentInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->b:Ljava/util/Map;

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/model/DeviceInfoModel;->getStaticDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->a:Ljava/util/Map;

    sget-object v2, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->a:Ljava/util/Map;

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/model/ApplicationInfoModel;->getAppInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getStaticInfo(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->a(Landroid/content/Context;Ljava/util/Map;)V

    :cond_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->a:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getStaticInfoHash(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v1, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->getStaticInfo(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->getOrderedContent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/crypto/DigestUtil;->sha1ByString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getStaticInfoWithoutAppInfo(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->a(Landroid/content/Context;Ljava/util/Map;)V

    :cond_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->b:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized reset()V
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->a:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/model/StaticInfoModel;->b:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
