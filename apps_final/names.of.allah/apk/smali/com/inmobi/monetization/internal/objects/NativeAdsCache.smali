.class public Lcom/inmobi/monetization/internal/objects/NativeAdsCache;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/inmobi/monetization/internal/objects/NativeAdsCache;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/inmobi/monetization/internal/objects/NativeAdsCache;
    .locals 3

    sget-object v0, Lcom/inmobi/monetization/internal/objects/NativeAdsCache;->a:Lcom/inmobi/monetization/internal/objects/NativeAdsCache;

    if-nez v0, :cond_0

    const-class v1, Lcom/inmobi/monetization/internal/objects/NativeAdsCache;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/inmobi/monetization/internal/objects/NativeAdsCache;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/inmobi/monetization/internal/objects/NativeAdsCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inmobi/monetization/internal/objects/NativeAdsCache;->a:Lcom/inmobi/monetization/internal/objects/NativeAdsCache;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->getInstance()Lcom/inmobi/commons/ads/cache/AdDatabaseManager;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getNativeSdkConfigParams()Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;->getmMaxCacheSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->setDBLimit(I)V

    sget-object v0, Lcom/inmobi/monetization/internal/objects/NativeAdsCache;->a:Lcom/inmobi/monetization/internal/objects/NativeAdsCache;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCachedAd(Ljava/lang/String;)Lcom/inmobi/monetization/IMNative;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->getInstance()Lcom/inmobi/commons/ads/cache/AdDatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->getAd(Ljava/lang/String;)Lcom/inmobi/commons/ads/cache/AdData;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/inmobi/commons/ads/cache/AdData;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    const-string v2, "pubContent"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v0, "contextCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "namespace"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/inmobi/monetization/internal/objects/NativeAd;

    invoke-direct {v0, v2, v3, v1}, Lcom/inmobi/monetization/internal/objects/NativeAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Exception getting cached ad"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumCachedAds(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->getInstance()Lcom/inmobi/commons/ads/cache/AdDatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->getNoOfAds(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveNativeAds(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v2, Lcom/inmobi/commons/ads/cache/AdData;

    invoke-direct {v2}, Lcom/inmobi/commons/ads/cache/AdData;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/inmobi/commons/ads/cache/AdData;->setContent(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/commons/ads/cache/AdData;->setTimestamp(J)V

    invoke-virtual {v2, p1}, Lcom/inmobi/commons/ads/cache/AdData;->setAppId(Ljava/lang/String;)V

    const-string v0, "native"

    invoke-virtual {v2, v0}, Lcom/inmobi/commons/ads/cache/AdData;->setAdType(Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->getInstance()Lcom/inmobi/commons/ads/cache/AdDatabaseManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/ads/cache/AdDatabaseManager;->insertAd(Lcom/inmobi/commons/ads/cache/AdData;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
