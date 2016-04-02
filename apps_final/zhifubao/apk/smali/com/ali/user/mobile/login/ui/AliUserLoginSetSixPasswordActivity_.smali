.class public final Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;
.super Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;
.source "AliUserLoginSetSixPasswordActivity_.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->a:Landroid/os/Handler;

    .line 148
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->insurance:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    .line 49
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->sixNumberPasswordInput:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    .line 50
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->insurance_sure:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mInsuranceSureText:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->comfirmSetting:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mConfirmSettingBtn:Landroid/widget/Button;

    .line 52
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 53
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->passwordTip:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mPasswordTip:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->comfirmSetting:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mConfirmSettingBtn:Landroid/widget/Button;

    .line 55
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->checkboxDisplay:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mDisplayPasswordCheckBox:Landroid/widget/CheckBox;

    .line 56
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->passwordInput:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mPasswordInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    .line 57
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 58
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->set_layout:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->mSetPWView:Landroid/widget/LinearLayout;

    .line 59
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->afterViews()V

    .line 60
    return-void
.end method

.method static synthetic access$001(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/ali/user/mobile/password/PasswordActivity;->afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V

    return-void
.end method

.method static synthetic access$101(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/ali/user/mobile/password/PasswordActivity;->afterSupplyment(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V

    return-void
.end method

.method static synthetic access$201(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->doSupplement()V

    return-void
.end method

.method static synthetic access$301(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->doRsa()V

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$1;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method public final afterSupplyment(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$2;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    return-void
.end method

.method public final doRsa()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$4;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$4;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method public final doSupplement()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$3;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_$3;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_six_password:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->setContentView(I)V

    .line 42
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->onBackPressed()V

    .line 85
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->setContentView(I)V

    .line 65
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->a()V

    .line 66
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->setContentView(Landroid/view/View;)V

    .line 77
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->a()V

    .line 78
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;->a()V

    .line 72
    return-void
.end method
