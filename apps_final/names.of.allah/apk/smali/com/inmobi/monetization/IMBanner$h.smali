.class Lcom/inmobi/monetization/IMBanner$h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/androidsdk/BannerViewListener;


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/IMBanner;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/IMBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdRequestCompleted(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->d(Lcom/inmobi/monetization/IMBanner;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->b(Lcom/inmobi/monetization/IMBanner;)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMBannerListener;->onBannerRequestSucceeded(Lcom/inmobi/monetization/IMBanner;)V

    :cond_0
    return-void
.end method

.method public onAdRequestFailed(Lcom/inmobi/androidsdk/BannerView;Lcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    iget-object v0, v0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    sget-object v1, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ACTIONS_TO_MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->DO_MONETIZE:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/IMBannerListener;->onBannerRequestFailed(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->d(Lcom/inmobi/monetization/IMBanner;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->b(Lcom/inmobi/monetization/IMBanner;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {p2}, Lcom/inmobi/monetization/internal/MonetizationUtils;->getErrorCode(Lcom/inmobi/androidsdk/AdRequest$ErrorCode;)Lcom/inmobi/monetization/IMErrorCode;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/IMBannerListener;->onBannerRequestFailed(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V

    goto :goto_0
.end method

.method public onBannerInteraction(Lcom/inmobi/androidsdk/BannerView;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/androidsdk/BannerView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-interface {v0, v1, p2}, Lcom/inmobi/monetization/IMBannerListener;->onBannerInteraction(Lcom/inmobi/monetization/IMBanner;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onDismissAdScreen(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->c(Lcom/inmobi/monetization/IMBanner;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->b(Lcom/inmobi/monetization/IMBanner;)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMBannerListener;->onDismissBannerScreen(Lcom/inmobi/monetization/IMBanner;)V

    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMBannerListener;->onLeaveApplication(Lcom/inmobi/monetization/IMBanner;)V

    :cond_0
    return-void
.end method

.method public onShowAdScreen(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->c(Lcom/inmobi/monetization/IMBanner;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMBannerListener;->onShowBannerScreen(Lcom/inmobi/monetization/IMBanner;)V

    :cond_0
    return-void
.end method
