.class public final Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage_;
.super Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage;
.source "NoNetworkTipPage_.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage;-><init>()V

    .line 70
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->A:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage_;->a:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 37
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage_;->a()V

    .line 38
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v0, Lcom/alipay/mobile/socialwidget/R$layout;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage_;->setContentView(I)V

    .line 30
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage_;->onBackPressed()V

    .line 63
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage_;->b()V

    .line 44
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage_;->b()V

    .line 56
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage_;->b()V

    .line 50
    return-void
.end method
