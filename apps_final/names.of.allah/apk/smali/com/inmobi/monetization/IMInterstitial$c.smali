.class Lcom/inmobi/monetization/IMInterstitial$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/IMInterstitial;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial$c;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$c;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->b(Lcom/inmobi/monetization/IMInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$c;->a:Lcom/inmobi/monetization/IMInterstitial;

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMInterstitial$State;)Lcom/inmobi/monetization/IMInterstitial$State;

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$c;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$c;->a:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$c;->a:Lcom/inmobi/monetization/IMInterstitial;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->DO_NOTHING:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/IMInterstitialListener;->onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V

    :cond_0
    return-void
.end method
