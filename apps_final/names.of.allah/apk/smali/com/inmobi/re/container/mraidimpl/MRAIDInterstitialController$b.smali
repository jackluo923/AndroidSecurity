.class Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$b;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v2, "Back Button pressed while Interstitial ad is in active state "

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$b;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    invoke-virtual {v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->handleInterstitialClose()V

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$b;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    invoke-static {v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->b(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
