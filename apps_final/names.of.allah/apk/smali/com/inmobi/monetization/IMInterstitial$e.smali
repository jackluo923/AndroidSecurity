.class Lcom/inmobi/monetization/IMInterstitial$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/androidsdk/InterstitialViewListener;


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/IMInterstitial;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdRequestFailed(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    iget-object v0, v0, Lcom/inmobi/monetization/IMInterstitial;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    sget-object v1, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ACTIONS_TO_MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->DO_MONETIZE:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/IMInterstitialListener;->onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->b(Lcom/inmobi/monetization/IMInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMInterstitial$State;)Lcom/inmobi/monetization/IMInterstitial$State;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {p2}, Lcom/inmobi/monetization/internal/MonetizationUtils;->getErrorCode(Lcom/inmobi/androidsdk/AdRequest$ErrorCode;)Lcom/inmobi/monetization/IMErrorCode;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/IMInterstitialListener;->onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V

    goto :goto_0
.end method

.method public onAdRequestLoaded(Lcom/inmobi/androidsdk/InterstitialView;)V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMInterstitial$State;)Lcom/inmobi/monetization/IMInterstitial$State;

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->b(Lcom/inmobi/monetization/IMInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMInterstitialListener;->onInterstitialLoaded(Lcom/inmobi/monetization/IMInterstitial;)V

    :cond_0
    return-void
.end method

.method public onDismissAdScreen(Lcom/inmobi/androidsdk/InterstitialView;)V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMInterstitial$State;)Lcom/inmobi/monetization/IMInterstitial$State;

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMInterstitialListener;->onDismissInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V

    :cond_0
    return-void
.end method

.method public onIncentCompleted(Lcom/inmobi/androidsdk/InterstitialView;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/androidsdk/InterstitialView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->c(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMIncentivisedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->c(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMIncentivisedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-interface {v0, v1, p2}, Lcom/inmobi/monetization/IMIncentivisedListener;->onIncentCompleted(Lcom/inmobi/monetization/IMInterstitial;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onInterstitialInteraction(Lcom/inmobi/androidsdk/InterstitialView;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/androidsdk/InterstitialView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-interface {v0, v1, p2}, Lcom/inmobi/monetization/IMInterstitialListener;->onInterstitialInteraction(Lcom/inmobi/monetization/IMInterstitial;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/androidsdk/InterstitialView;)V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMInterstitialListener;->onLeaveApplication(Lcom/inmobi/monetization/IMInterstitial;)V

    :cond_0
    return-void
.end method

.method public onShowAdScreen(Lcom/inmobi/androidsdk/InterstitialView;)V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->ACTIVE:Lcom/inmobi/monetization/IMInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMInterstitial$State;)Lcom/inmobi/monetization/IMInterstitial$State;

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$e;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMInterstitialListener;->onShowInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V

    :cond_0
    return-void
.end method
