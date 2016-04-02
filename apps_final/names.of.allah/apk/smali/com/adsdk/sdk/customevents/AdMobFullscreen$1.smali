.class Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;
.super Lcom/google/android/gms/ads/AdListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/customevents/AdMobFullscreen;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenClosed()V

    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenFailed()V

    :cond_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLeftApplication()V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    iget-object v1, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenLoaded(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->reportImpression()V

    iget-object v0, p0, Lcom/adsdk/sdk/customevents/AdMobFullscreen$1;->this$0:Lcom/adsdk/sdk/customevents/AdMobFullscreen;

    iget-object v0, v0, Lcom/adsdk/sdk/customevents/AdMobFullscreen;->listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;->onFullscreenOpened()V

    :cond_0
    return-void
.end method
