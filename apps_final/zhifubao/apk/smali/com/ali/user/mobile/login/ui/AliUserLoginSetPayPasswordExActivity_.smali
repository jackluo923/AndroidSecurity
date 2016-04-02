.class public final Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;
.super Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity;
.source "AliUserLoginSetPayPasswordExActivity_.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->a:Landroid/os/Handler;

    .line 141
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 47
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->passwordTip:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->mPasswordTip:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->passwordInput:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->mPasswordInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    .line 49
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->set_layout:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->mSetPWView:Landroid/widget/LinearLayout;

    .line 50
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->checkboxDisplay:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->mDisplayPasswordCheckBox:Landroid/widget/CheckBox;

    .line 51
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->comfirmSetting:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->mConfirmSettingBtn:Landroid/widget/Button;

    .line 52
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->afterViews()V

    .line 53
    return-void
.end method

.method static synthetic access$001(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->afterSupplyment(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V

    return-void
.end method

.method static synthetic access$101(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/ali/user/mobile/password/PasswordActivity;->afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V

    return-void
.end method

.method static synthetic access$201(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->doRsa()V

    return-void
.end method

.method static synthetic access$301(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->doSupplement()V

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_$2;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method public final afterSupplyment(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_$1;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method public final doRsa()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_$3;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_$3;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public final doSupplement()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_$4;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_$4;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_pay_password:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->setContentView(I)V

    .line 40
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->onBackPressed()V

    .line 78
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity;->setContentView(I)V

    .line 58
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->a()V

    .line 59
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity;->setContentView(Landroid/view/View;)V

    .line 70
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->a()V

    .line 71
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;->a()V

    .line 65
    return-void
.end method
