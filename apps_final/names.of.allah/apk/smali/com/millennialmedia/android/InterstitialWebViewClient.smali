.class Lcom/millennialmedia/android/InterstitialWebViewClient;
.super Lcom/millennialmedia/android/MMWebViewClient;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMWebViewClient;-><init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    return-void
.end method


# virtual methods
.method setMraidState(Lcom/millennialmedia/android/MMWebView;)V
    .locals 0

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMWebView;->setMraidPlacementTypeInterstitial()V

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMWebView;->setMraidDefault()V

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMWebView;->setMraidReady()V

    return-void
.end method
