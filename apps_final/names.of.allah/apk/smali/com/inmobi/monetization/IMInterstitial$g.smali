.class Lcom/inmobi/monetization/IMInterstitial$g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/IMErrorCode;

.field final synthetic b:Lcom/inmobi/monetization/IMInterstitial;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial$g;->b:Lcom/inmobi/monetization/IMInterstitial;

    iput-object p2, p0, Lcom/inmobi/monetization/IMInterstitial$g;->a:Lcom/inmobi/monetization/IMErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$g;->b:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$g;->b:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$g;->b:Lcom/inmobi/monetization/IMInterstitial;

    iget-object v2, p0, Lcom/inmobi/monetization/IMInterstitial$g;->a:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/IMInterstitialListener;->onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V

    :cond_0
    return-void
.end method
