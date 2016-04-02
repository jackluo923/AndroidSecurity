.class Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;


# direct methods
.method private constructor <init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;-><init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;)V

    return-void
.end method


# virtual methods
.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    # getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/f;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$3(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/f;->onPresentScreen(Lcom/google/ads/mediation/e;)V

    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 0

    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    # getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/f;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$3(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/f;->onReceivedAd(Lcom/google/ads/mediation/e;)V

    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 3

    const/16 v0, 0xb

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    # getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/f;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$3(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    sget-object v2, Lcom/google/ads/b;->c:Lcom/google/ads/b;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/f;->onFailedToReceiveAd(Lcom/google/ads/mediation/e;Lcom/google/ads/b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    # getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/f;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$3(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    sget-object v2, Lcom/google/ads/b;->b:Lcom/google/ads/b;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/f;->onFailedToReceiveAd(Lcom/google/ads/mediation/e;Lcom/google/ads/b;)V

    goto :goto_0
.end method
