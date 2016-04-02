.class public Lcom/adsdk/sdk/customevents/AdMobFullscreen;
.super Lcom/adsdk/sdk/customevents/CustomEventFullscreen;


# instance fields
.field private adListener:Lcom/google/android/gms/ads/AdListener;

.field private interstitial:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen;-><init>()V

    return-void
.end method

.method private createAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    new-instance v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;-><init>(Lcom/adsdk/sdk/customevents/AdMobFullscreen;)V

    return-object v0
.end method


# virtual methods
.method public loadFullscreen(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p2, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    iput-object p4, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->trackingPixel:Ljava/lang/String;

    :try_start_0
    const-string v0, "com.google.android.gms.ads.AdListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.google.android.gms.ads.AdRequest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.google.android.gms.ads.InterstitialAd"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->createAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->adListener:Lcom/google/android/gms/ads/AdListener;

    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->adListener:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    goto :goto_0
.end method

.method public showFullscreen()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    :cond_0
    return-void
.end method
