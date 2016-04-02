.class Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;
.super Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/AdViewOverlayView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;-><init>(Lcom/millennialmedia/android/MMLayout;Landroid/content/Context;)V

    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$1;-><init>(Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;Lcom/millennialmedia/android/AdViewOverlayView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    return-void
.end method


# virtual methods
.method getMMWebViewClient()Lcom/millennialmedia/android/MMWebViewClient;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Returning a client for user: OverlayWebViewClient, adimpl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v1, v1, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v0, v0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->hasExpandUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/millennialmedia/android/BannerExpandedWebViewClient;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    new-instance v2, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$OverlayRedirectionListenerImpl;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$OverlayRedirectionListenerImpl;-><init>(Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/BannerExpandedWebViewClient;-><init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->mmWebViewClient:Lcom/millennialmedia/android/MMWebViewClient;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/millennialmedia/android/InterstitialWebViewClient;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    new-instance v2, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$OverlayRedirectionListenerImpl;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl$OverlayRedirectionListenerImpl;-><init>(Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/InterstitialWebViewClient;-><init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->mmWebViewClient:Lcom/millennialmedia/android/MMWebViewClient;

    goto :goto_0
.end method
