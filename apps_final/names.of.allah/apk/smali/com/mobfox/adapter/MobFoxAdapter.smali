.class public final Lcom/mobfox/adapter/MobFoxAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/c;
.implements Lcom/google/ads/mediation/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/c",
        "<",
        "Lcom/mobfox/adapter/MobFoxExtras;",
        "Lcom/mobfox/adapter/MobFoxServerParameters;",
        ">;",
        "Lcom/google/ads/mediation/e",
        "<",
        "Lcom/mobfox/adapter/MobFoxExtras;",
        "Lcom/mobfox/adapter/MobFoxServerParameters;",
        ">;"
    }
.end annotation


# static fields
.field private static final REQUEST_URL:Ljava/lang/String; = "http://my.mobfox.com/request.php"


# instance fields
.field private adView:Lcom/adsdk/sdk/banner/AdView;

.field private bannerListener:Lcom/google/ads/mediation/d;

.field private interstitialListener:Lcom/google/ads/mediation/f;

.field private mAdManager:Lcom/adsdk/sdk/AdManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/mobfox/adapter/MobFoxAdapter;)Lcom/google/ads/mediation/d;
    .locals 1

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->bannerListener:Lcom/google/ads/mediation/d;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mobfox/adapter/MobFoxAdapter;)Lcom/google/ads/mediation/f;
    .locals 1

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->interstitialListener:Lcom/google/ads/mediation/f;

    return-object v0
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->adView:Lcom/adsdk/sdk/banner/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->adView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/AdView;->release()V

    :cond_0
    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->mAdManager:Lcom/adsdk/sdk/AdManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->mAdManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdManager;->release()V

    :cond_1
    iput-object v1, p0, Lcom/mobfox/adapter/MobFoxAdapter;->bannerListener:Lcom/google/ads/mediation/d;

    iput-object v1, p0, Lcom/mobfox/adapter/MobFoxAdapter;->interstitialListener:Lcom/google/ads/mediation/f;

    return-void
.end method

.method public final getAdditionalParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mobfox/adapter/MobFoxExtras;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mobfox/adapter/MobFoxExtras;

    return-object v0
.end method

.method public final getBannerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->adView:Lcom/adsdk/sdk/banner/AdView;

    return-object v0
.end method

.method public final getServerParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mobfox/adapter/MobFoxServerParameters;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mobfox/adapter/MobFoxServerParameters;

    return-object v0
.end method

.method public final bridge synthetic requestBannerAd(Lcom/google/ads/mediation/d;Landroid/app/Activity;Lcom/google/ads/mediation/g;Lcom/google/ads/d;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/j;)V
    .locals 7

    move-object v3, p3

    check-cast v3, Lcom/mobfox/adapter/MobFoxServerParameters;

    move-object v6, p6

    check-cast v6, Lcom/mobfox/adapter/MobFoxExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mobfox/adapter/MobFoxAdapter;->requestBannerAd(Lcom/google/ads/mediation/d;Landroid/app/Activity;Lcom/mobfox/adapter/MobFoxServerParameters;Lcom/google/ads/d;Lcom/google/ads/mediation/a;Lcom/mobfox/adapter/MobFoxExtras;)V

    return-void
.end method

.method public final requestBannerAd(Lcom/google/ads/mediation/d;Landroid/app/Activity;Lcom/mobfox/adapter/MobFoxServerParameters;Lcom/google/ads/d;Lcom/google/ads/mediation/a;Lcom/mobfox/adapter/MobFoxExtras;)V
    .locals 6

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/mobfox/adapter/MobFoxAdapter;->bannerListener:Lcom/google/ads/mediation/d;

    if-eqz p6, :cond_0

    new-instance v0, Lcom/adsdk/sdk/banner/AdView;

    const-string v2, "http://my.mobfox.com/request.php"

    iget-object v3, p3, Lcom/mobfox/adapter/MobFoxServerParameters;->pubIdNumber:Ljava/lang/String;

    invoke-virtual {p6}, Lcom/mobfox/adapter/MobFoxExtras;->getLocation()Z

    move-result v4

    invoke-virtual {p6}, Lcom/mobfox/adapter/MobFoxExtras;->getAnimation()Z

    move-result v5

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->adView:Lcom/adsdk/sdk/banner/AdView;

    :goto_0
    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->adView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {p4}, Lcom/google/ads/d;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/banner/AdView;->setAdspaceHeight(I)V

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->adView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {p4}, Lcom/google/ads/d;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/banner/AdView;->setAdspaceWidth(I)V

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->adView:Lcom/adsdk/sdk/banner/AdView;

    new-instance v1, Lcom/mobfox/adapter/MobFoxAdapter$1;

    invoke-direct {v1, p0}, Lcom/mobfox/adapter/MobFoxAdapter$1;-><init>(Lcom/mobfox/adapter/MobFoxAdapter;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/banner/AdView;->setAdListener(Lcom/adsdk/sdk/AdListener;)V

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->adView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/AdView;->loadNextAd()V

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->adView:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/AdView;->pause()V

    return-void

    :cond_0
    new-instance v0, Lcom/adsdk/sdk/banner/AdView;

    const-string v2, "http://my.mobfox.com/request.php"

    iget-object v3, p3, Lcom/mobfox/adapter/MobFoxServerParameters;->pubIdNumber:Ljava/lang/String;

    move-object v1, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->adView:Lcom/adsdk/sdk/banner/AdView;

    goto :goto_0
.end method

.method public final bridge synthetic requestInterstitialAd(Lcom/google/ads/mediation/f;Landroid/app/Activity;Lcom/google/ads/mediation/g;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/j;)V
    .locals 6

    move-object v3, p3

    check-cast v3, Lcom/mobfox/adapter/MobFoxServerParameters;

    move-object v5, p5

    check-cast v5, Lcom/mobfox/adapter/MobFoxExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mobfox/adapter/MobFoxAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/f;Landroid/app/Activity;Lcom/mobfox/adapter/MobFoxServerParameters;Lcom/google/ads/mediation/a;Lcom/mobfox/adapter/MobFoxExtras;)V

    return-void
.end method

.method public final requestInterstitialAd(Lcom/google/ads/mediation/f;Landroid/app/Activity;Lcom/mobfox/adapter/MobFoxServerParameters;Lcom/google/ads/mediation/a;Lcom/mobfox/adapter/MobFoxExtras;)V
    .locals 5

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/mobfox/adapter/MobFoxAdapter;->interstitialListener:Lcom/google/ads/mediation/f;

    if-eqz p5, :cond_0

    new-instance v0, Lcom/adsdk/sdk/AdManager;

    const-string v1, "http://my.mobfox.com/request.php"

    iget-object v2, p3, Lcom/mobfox/adapter/MobFoxServerParameters;->pubIdNumber:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/mobfox/adapter/MobFoxExtras;->getLocation()Z

    move-result v3

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/adsdk/sdk/AdManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->mAdManager:Lcom/adsdk/sdk/AdManager;

    :goto_0
    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->mAdManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0, v4}, Lcom/adsdk/sdk/AdManager;->setVideoAdsEnabled(Z)V

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->mAdManager:Lcom/adsdk/sdk/AdManager;

    new-instance v1, Lcom/mobfox/adapter/MobFoxAdapter$2;

    invoke-direct {v1, p0}, Lcom/mobfox/adapter/MobFoxAdapter$2;-><init>(Lcom/mobfox/adapter/MobFoxAdapter;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdManager;->setListener(Lcom/adsdk/sdk/AdListener;)V

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->mAdManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdManager;->requestAd()V

    return-void

    :cond_0
    new-instance v0, Lcom/adsdk/sdk/AdManager;

    const-string v1, "http://my.mobfox.com/request.php"

    iget-object v2, p3, Lcom/mobfox/adapter/MobFoxServerParameters;->pubIdNumber:Ljava/lang/String;

    invoke-direct {v0, p2, v1, v2, v4}, Lcom/adsdk/sdk/AdManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->mAdManager:Lcom/adsdk/sdk/AdManager;

    goto :goto_0
.end method

.method public final showInterstitial()V
    .locals 1

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->mAdManager:Lcom/adsdk/sdk/AdManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/adapter/MobFoxAdapter;->mAdManager:Lcom/adsdk/sdk/AdManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdManager;->showAd()V

    :cond_0
    return-void
.end method
