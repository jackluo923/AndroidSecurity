.class Lcom/inmobi/androidsdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/re/container/IMWebView$IMWebViewListener;


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/BannerView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/b;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissAdScreen()V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/androidsdk/b;->a:Lcom/inmobi/androidsdk/BannerView;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    return-void
.end method

.method public onError()V
    .locals 2

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Error loading ad "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/b;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->p(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/BannerView$d;

    move-result-object v0

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onExpand()V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/androidsdk/b;->a:Lcom/inmobi/androidsdk/BannerView;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    return-void
.end method

.method public onExpandClose()V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/androidsdk/b;->a:Lcom/inmobi/androidsdk/BannerView;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    return-void
.end method

.method public onIncentCompleted(Ljava/util/Map;)V
    .locals 0
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

    return-void
.end method

.method public onLeaveApplication()V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/androidsdk/b;->a:Lcom/inmobi/androidsdk/BannerView;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    return-void
.end method

.method public onResize(Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/androidsdk/b;->a:Lcom/inmobi/androidsdk/BannerView;

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    return-void
.end method

.method public onResizeClose()V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/androidsdk/b;->a:Lcom/inmobi/androidsdk/BannerView;

    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    return-void
.end method

.method public onShowAdScreen()V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/androidsdk/b;->a:Lcom/inmobi/androidsdk/BannerView;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

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

    iget-object v0, p0, Lcom/inmobi/androidsdk/b;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/BannerViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/b;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-interface {v0, v1, p1}, Lcom/inmobi/androidsdk/BannerViewListener;->onBannerInteraction(Lcom/inmobi/androidsdk/BannerView;Ljava/util/Map;)V

    return-void
.end method
