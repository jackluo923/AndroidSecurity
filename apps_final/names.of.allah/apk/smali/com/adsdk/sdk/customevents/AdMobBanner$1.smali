.class Lcom/adsdk/sdk/customevents/AdMobBanner$1;
.super Lcom/google/android/gms/ads/AdListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/AdMobBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerClosed()V

    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/AdMobBanner;->reportImpression()V

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    # getter for: Lcom/adsdk/sdk/customevents/AdMobBanner;->adView:Lcom/google/android/gms/ads/AdView;
    invoke-static {v1}, Lcom/adsdk/sdk/customevents/AdMobBanner;->access$0(Lcom/adsdk/sdk/customevents/AdMobBanner;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobBanner$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobBanner;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobBanner;->listener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerExpanded()V

    :cond_0
    return-void
.end method
