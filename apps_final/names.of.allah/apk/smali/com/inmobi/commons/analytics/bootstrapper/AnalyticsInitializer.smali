.class public Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;
.super Ljava/lang/Object;


# static fields
.field public static final PRODUCT_ANALYTICS:Ljava/lang/String; = "ltvp"

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

.field private static c:Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

.field private static d:Lcom/inmobi/commons/cache/CacheController$Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->b:Ljava/util/Map;

    new-instance v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->c:Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    new-instance v0, Lcom/inmobi/commons/analytics/bootstrapper/a;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/bootstrapper/a;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 4

    if-eqz p0, :cond_2

    sget-object v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    sget-object v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getUidMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->b:Ljava/util/Map;

    :try_start_0
    const-string v0, "ltvp"

    sget-object v1, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->b:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/cache/ProductConfig;->getRawData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/commons/cache/ProductConfig;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->b(Ljava/util/Map;)Z
    :try_end_0
    .catch Lcom/inmobi/commons/internal/CommonsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Analytics]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while retreiving configs due to commons Exception with code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inmobi/commons/internal/CommonsException;->getCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "[InMobi]-[Analytics]-4.4.1"

    const-string v2, "Exception while retreiving configs."

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    sget-object v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/Map;)Z
    .locals 1

    invoke-static {p0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->b(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getUidMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->b:Ljava/util/Map;

    :try_start_0
    const-string v0, "ltvp"

    sget-object v1, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->b:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

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
    .locals 3
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

    new-instance v1, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    invoke-direct {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;-><init>()V

    :try_start_0
    const-string v0, "common"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->setFromMap(Ljava/util/Map;)V

    sput-object v1, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->c:Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getThinIceConfig()Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/ThinICE;->setConfig(Lcom/inmobi/commons/analytics/bootstrapper/ThinICEConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Analytics]-4.4.1"

    const-string v2, "Exception while saving configs."

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;
    .locals 1

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->b(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->c:Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    return-object v0
.end method

.method public static getRawConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->c:Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    return-object v0
.end method

.method public static getUidMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
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

    sget-object v0, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->a:Landroid/content/Context;

    sget-object v1, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->c:Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getUID()Lcom/inmobi/commons/uid/UID;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/uid/UIDUtil;->getMap(Landroid/content/Context;Lcom/inmobi/commons/uid/UID;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
