.class public Lcom/inmobi/monetization/internal/NativeAdsController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/monetization/internal/abstraction/INativeAdController;


# static fields
.field private static d:Lcom/inmobi/monetization/internal/NativeAdsController;


# instance fields
.field private a:Lcom/inmobi/monetization/internal/ServiceProvider;

.field private b:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/monetization/internal/NativeAdsController;->d:Lcom/inmobi/monetization/internal/NativeAdsController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->c:Z

    invoke-static {}, Lcom/inmobi/monetization/internal/ServiceProvider;->getInstance()Lcom/inmobi/monetization/internal/ServiceProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->a:Lcom/inmobi/monetization/internal/ServiceProvider;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/inmobi/monetization/internal/NativeAdRequest;)V
    .locals 2

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Fetching Native Ads"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->a:Lcom/inmobi/monetization/internal/ServiceProvider;

    invoke-virtual {v0, p2, p0}, Lcom/inmobi/monetization/internal/ServiceProvider;->getNativeAd(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/internal/abstraction/INativeAdController;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->NETWORK_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    invoke-virtual {p0, p2, v0}, Lcom/inmobi/monetization/internal/NativeAdsController;->onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/inmobi/monetization/internal/NativeAdsController;
    .locals 1

    sget-object v0, Lcom/inmobi/monetization/internal/NativeAdsController;->d:Lcom/inmobi/monetization/internal/NativeAdsController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inmobi/monetization/internal/NativeAdsController;

    invoke-direct {v0}, Lcom/inmobi/monetization/internal/NativeAdsController;-><init>()V

    sput-object v0, Lcom/inmobi/monetization/internal/NativeAdsController;->d:Lcom/inmobi/monetization/internal/NativeAdsController;

    :cond_0
    sget-object v0, Lcom/inmobi/monetization/internal/NativeAdsController;->d:Lcom/inmobi/monetization/internal/NativeAdsController;

    return-object v0
.end method


# virtual methods
.method public getAd(Ljava/lang/String;Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->c:Z

    iput-object p3, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    invoke-static {}, Lcom/inmobi/monetization/internal/objects/NativeAdsCache;->getInstance()Lcom/inmobi/monetization/internal/objects/NativeAdsCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inmobi/monetization/internal/objects/NativeAdsCache;->getCachedAd(Ljava/lang/String;)Lcom/inmobi/monetization/IMNative;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/monetization/internal/objects/NativeAdsCache;->getInstance()Lcom/inmobi/monetization/internal/objects/NativeAdsCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/inmobi/monetization/internal/objects/NativeAdsCache;->getNumCachedAds(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getNativeSdkConfigParams()Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;->getmMinLimit()I

    move-result v2

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/inmobi/monetization/internal/NativeAdsController;->a(Ljava/lang/String;Lcom/inmobi/monetization/internal/NativeAdRequest;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ge v1, v2, :cond_2

    iput-boolean v3, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->c:Z

    invoke-direct {p0, p1, p2}, Lcom/inmobi/monetization/internal/NativeAdsController;->a(Ljava/lang/String;Lcom/inmobi/monetization/internal/NativeAdRequest;)V

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    invoke-interface {v1, v0}, Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;->onNativeRequestSucceeded(Lcom/inmobi/monetization/IMNative;)V

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->c:Z

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    invoke-interface {v1, v0}, Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;->onNativeRequestSucceeded(Lcom/inmobi/monetization/IMNative;)V

    goto :goto_0
.end method

.method public onAdRequestFailed(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 2

    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Native ad failed: "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->c:Z

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    invoke-interface {v0, p2}, Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;->onNativeRequestFailed(Lcom/inmobi/monetization/IMErrorCode;)V

    :cond_0
    return-void
.end method

.method public onAdRequestSucceded(Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/internal/NativeAdResponse;)V
    .locals 3

    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Native ad received: "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/monetization/internal/objects/NativeAdsCache;->getInstance()Lcom/inmobi/monetization/internal/objects/NativeAdsCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/inmobi/monetization/internal/NativeAdRequest;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/inmobi/monetization/internal/NativeAdResponse;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/monetization/internal/objects/NativeAdsCache;->saveNativeAds(Ljava/lang/String;Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->c:Z

    invoke-static {}, Lcom/inmobi/monetization/internal/objects/NativeAdsCache;->getInstance()Lcom/inmobi/monetization/internal/objects/NativeAdsCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/inmobi/monetization/internal/NativeAdRequest;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/objects/NativeAdsCache;->getCachedAd(Ljava/lang/String;)Lcom/inmobi/monetization/IMNative;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    invoke-interface {v1, v0}, Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;->onNativeRequestSucceeded(Lcom/inmobi/monetization/IMNative;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdsController;->b:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    sget-object v1, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;->onNativeRequestFailed(Lcom/inmobi/monetization/IMErrorCode;)V

    goto :goto_0
.end method
