.class Lcom/inmobi/androidsdk/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/re/container/IMWebView$IMWebViewListener;


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/InterstitialView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/InterstitialView;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/e;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissAdScreen()V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/androidsdk/e;->a:Lcom/inmobi/androidsdk/InterstitialView;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    return-void
.end method

.method public onError()V
    .locals 2

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Error loading the interstitial ad "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/e;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->b(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/androidsdk/InterstitialView$c;

    move-result-object v0

    const/16 v1, 0x136

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView$c;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onExpand()V
    .locals 0

    return-void
.end method

.method public onExpandClose()V
    .locals 0

    return-void
.end method

.method public onIncentCompleted(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inmobi/androidsdk/e;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/androidsdk/InterstitialViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/e;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/androidsdk/InterstitialViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/e;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-interface {v0, v1, p1}, Lcom/inmobi/androidsdk/InterstitialViewListener;->onIncentCompleted(Lcom/inmobi/androidsdk/InterstitialView;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onLeaveApplication()V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/androidsdk/e;->a:Lcom/inmobi/androidsdk/InterstitialView;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    return-void
.end method

.method public onResize(Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;)V
    .locals 0

    return-void
.end method

.method public onResizeClose()V
    .locals 0

    return-void
.end method

.method public onShowAdScreen()V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/androidsdk/e;->a:Lcom/inmobi/androidsdk/InterstitialView;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    return-void
.end method

.method public onUserInteraction(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inmobi/androidsdk/e;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/androidsdk/InterstitialViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/e;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/InterstitialView;->a(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/androidsdk/InterstitialViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/e;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-interface {v0, v1, p1}, Lcom/inmobi/androidsdk/InterstitialViewListener;->onInterstitialInteraction(Lcom/inmobi/androidsdk/InterstitialView;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
