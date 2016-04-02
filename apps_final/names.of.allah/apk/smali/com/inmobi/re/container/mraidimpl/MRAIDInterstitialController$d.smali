.class Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:Landroid/widget/FrameLayout;

.field final synthetic c:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$d;->c:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-object p2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$d;->a:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$d;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$d;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$d;->c:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    invoke-static {v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$d;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$d;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
