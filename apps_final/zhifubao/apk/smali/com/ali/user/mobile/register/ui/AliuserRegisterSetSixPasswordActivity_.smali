.class public final Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;
.super Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;
.source "AliuserRegisterSetSixPasswordActivity_.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->a:Landroid/os/Handler;

    .line 153
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->comfirmSetting:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->mConfirmSettingBtn:Landroid/widget/Button;

    .line 46
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->insurance_sure:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->mInsuranceSureText:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->sixNumberPasswordInput:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    .line 48
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->insurance:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    .line 49
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 50
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->afterViews()V

    .line 51
    return-void
.end method

.method static synthetic access$001(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->afterSupplement(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)V

    return-void
.end method

.method static synthetic access$101(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->closeKeyboard()V

    return-void
.end method

.method static synthetic access$201(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V

    return-void
.end method

.method static synthetic access$301(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->doRsa()V

    return-void
.end method

.method static synthetic access$401(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->doSupplement()V

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$3;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$3;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method public final afterSupplement(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$1;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method

.method public final closeKeyboard()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$2;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$2;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method public final doRsa()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$4;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$4;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public final doSupplement()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$5;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_$5;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_six_password_register:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->setContentView(I)V

    .line 39
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->onBackPressed()V

    .line 76
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->setContentView(I)V

    .line 56
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->a()V

    .line 57
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->setContentView(Landroid/view/View;)V

    .line 68
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->a()V

    .line 69
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;->a()V

    .line 63
    return-void
.end method
