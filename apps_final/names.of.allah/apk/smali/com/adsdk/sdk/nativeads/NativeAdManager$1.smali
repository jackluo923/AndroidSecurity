.class Lcom/adsdk/sdk/nativeads/NativeAdManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/nativeads/NativeAdManager;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ADSDK"

    const-string v1, "starting request thread"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/adsdk/sdk/nativeads/RequestNativeAd;

    invoke-direct {v0}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    # invokes: Lcom/adsdk/sdk/nativeads/NativeAdManager;->getRequest()Lcom/adsdk/sdk/nativeads/NativeAdRequest;
    invoke-static {v2}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->access$0(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Lcom/adsdk/sdk/nativeads/NativeAdRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/nativeads/RequestNativeAd;->sendRequest(Lcom/adsdk/sdk/nativeads/NativeAdRequest;)Lcom/adsdk/sdk/nativeads/NativeAd;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->access$1(Lcom/adsdk/sdk/nativeads/NativeAdManager;Lcom/adsdk/sdk/nativeads/NativeAd;)V

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    # getter for: Lcom/adsdk/sdk/nativeads/NativeAdManager;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;
    invoke-static {v0}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->access$2(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Lcom/adsdk/sdk/nativeads/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    iget-object v1, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    # getter for: Lcom/adsdk/sdk/nativeads/NativeAdManager;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;
    invoke-static {v1}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->access$2(Lcom/adsdk/sdk/nativeads/NativeAdManager;)Lcom/adsdk/sdk/nativeads/NativeAd;

    move-result-object v1

    # invokes: Lcom/adsdk/sdk/nativeads/NativeAdManager;->notifyAdLoaded(Lcom/adsdk/sdk/nativeads/NativeAd;)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->access$3(Lcom/adsdk/sdk/nativeads/NativeAdManager;Lcom/adsdk/sdk/nativeads/NativeAd;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "ADSDK"

    const-string v1, "finishing request thread"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    # invokes: Lcom/adsdk/sdk/nativeads/NativeAdManager;->notifyAdFailed()V
    invoke-static {v0}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->access$4(Lcom/adsdk/sdk/nativeads/NativeAdManager;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdManager$1;->this$0:Lcom/adsdk/sdk/nativeads/NativeAdManager;

    # invokes: Lcom/adsdk/sdk/nativeads/NativeAdManager;->notifyAdFailed()V
    invoke-static {v0}, Lcom/adsdk/sdk/nativeads/NativeAdManager;->access$4(Lcom/adsdk/sdk/nativeads/NativeAdManager;)V

    goto :goto_0
.end method
