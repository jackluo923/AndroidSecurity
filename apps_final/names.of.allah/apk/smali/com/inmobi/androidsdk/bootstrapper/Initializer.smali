.class public Lcom/inmobi/androidsdk/bootstrapper/Initializer;
.super Ljava/lang/Object;


# static fields
.field public static final PRODUCT_ADNETWORK:Ljava/lang/String; = "adNetwork"

.field private static a:Landroid/content/Context;

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

.field private static c:Lcom/inmobi/commons/metric/Logger;

.field private static d:Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

.field private static e:Lcom/inmobi/commons/cache/CacheController$Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->b:Ljava/util/Map;

    new-instance v0, Lcom/inmobi/commons/metric/Logger;

    const/4 v1, 0x1

    const-string v2, "network"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/metric/Logger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->c:Lcom/inmobi/commons/metric/Logger;

    new-instance v0, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->d:Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    new-instance v0, Lcom/inmobi/androidsdk/bootstrapper/a;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/bootstrapper/a;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->e:Lcom/inmobi/commons/cache/CacheController$Validator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_2

    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getUidMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->b:Ljava/util/Map;

    :try_start_0
    const-string v0, "adNetwork"

    sget-object v1, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->b:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->e:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/cache/ProductConfig;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->b(Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static synthetic a(Ljava/util/Map;)Z
    .locals 1

    invoke-static {p0}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->b(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->a(Landroid/content/Context;)V

    :try_start_0
    const-string v0, "adNetwork"

    sget-object v1, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->b:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->e:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getUidMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->b:Ljava/util/Map;

    :try_start_0
    const-string v0, "AND"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "common"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populateToNewMap(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    invoke-direct {v1}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;-><init>()V

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->setFromMap(Ljava/util/Map;)V

    sput-object v1, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->d:Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->c:Lcom/inmobi/commons/metric/Logger;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getMetric()Lcom/inmobi/commons/metric/MetricConfigParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->setMetricConfigParams(Lcom/inmobi/commons/metric/MetricConfigParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Config couldn\'t be parsed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;
    .locals 1

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->b(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->d:Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    return-object v0
.end method

.method public static getLogger()Lcom/inmobi/commons/metric/Logger;
    .locals 1

    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->c:Lcom/inmobi/commons/metric/Logger;

    return-object v0
.end method

.method public static getUidMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
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

    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->d:Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getUID()Lcom/inmobi/commons/uid/UID;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/inmobi/commons/uid/UIDUtil;->getMap(Landroid/content/Context;Lcom/inmobi/commons/uid/UID;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
