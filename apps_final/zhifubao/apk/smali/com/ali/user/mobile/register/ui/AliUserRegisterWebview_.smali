.class public final Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;
.super Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;
.source "AliUserRegisterWebview_.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;->a:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 42
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->relativeLayout_webview:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;->mAPRelativeLayout:Landroid/widget/RelativeLayout;

    .line 43
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;->initBackButton()V

    .line 44
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;->init()V

    .line 45
    return-void
.end method

.method static synthetic access$001(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->afterEmailRegister(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V

    return-void
.end method

.method static synthetic access$101(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->doEmailRegister(Ljava/lang/String;)V

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_$IntentBuilder_;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final afterEmailRegister(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_$1;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method

.method public final doEmailRegister(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_$2;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_$2;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_webview:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;->setContentView(I)V

    .line 35
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;->onBackPressed()V

    .line 70
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;->a()V

    .line 51
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->setContentView(Landroid/view/View;)V

    .line 62
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;->a()V

    .line 63
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;->a()V

    .line 57
    return-void
.end method
