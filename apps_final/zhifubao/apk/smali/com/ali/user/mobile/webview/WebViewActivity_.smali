.class public final Lcom/ali/user/mobile/webview/WebViewActivity_;
.super Lcom/ali/user/mobile/webview/WebViewActivity;
.source "WebViewActivity_.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ali/user/mobile/webview/WebViewActivity;-><init>()V

    .line 72
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/webview/WebViewActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity_;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 38
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->relativeLayout_webview:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/webview/WebViewActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/webview/WebViewActivity_;->mAPRelativeLayout:Landroid/widget/RelativeLayout;

    .line 39
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/WebViewActivity_;->init()V

    .line 40
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/ali/user/mobile/webview/WebViewActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/ali/user/mobile/webview/WebViewActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/webview/WebViewActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/ali/user/mobile/webview/WebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_webview:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/webview/WebViewActivity_;->setContentView(I)V

    .line 31
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/ali/user/mobile/webview/WebViewActivity_;->onBackPressed()V

    .line 65
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/webview/WebViewActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/ali/user/mobile/webview/WebViewActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/ali/user/mobile/webview/WebViewActivity_;->a()V

    .line 46
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/ali/user/mobile/webview/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 57
    invoke-direct {p0}, Lcom/ali/user/mobile/webview/WebViewActivity_;->a()V

    .line 58
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/webview/WebViewActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-direct {p0}, Lcom/ali/user/mobile/webview/WebViewActivity_;->a()V

    .line 52
    return-void
.end method
