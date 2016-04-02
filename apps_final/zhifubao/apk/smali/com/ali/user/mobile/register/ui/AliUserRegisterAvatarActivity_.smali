.class public final Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;
.super Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;
.source "AliUserRegisterAvatarActivity_.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->a:Landroid/os/Handler;

    .line 177
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->loginPasswordInput:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    .line 48
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->tvCountry:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mTvCountry:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->register_scrollview:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APScrollView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mScrollView:Lcom/alipay/mobile/commonui/widget/APScrollView;

    .line 50
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->alipayNickInputBox:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    .line 51
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->aliuser_register:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mRegisterView:Landroid/view/View;

    .line 52
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->register_title:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 53
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->registerPasswordError:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mRegisterPasswordError:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->register_scrollview:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mRegisterScrollView:Landroid/view/View;

    .line 55
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->userAvatar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mAvatarView:Landroid/widget/ImageView;

    .line 56
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->bindConfirm:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mBindConfirm:Landroid/widget/Button;

    .line 57
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->regionLayout:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mRegionLayout:Landroid/view/View;

    .line 58
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->taobao_protocol:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mProtocol:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->phoneInputBox:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    .line 60
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->init()V

    .line 61
    return-void
.end method

.method static synthetic access$001(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V

    return-void
.end method

.method static synthetic access$101(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->afterCountryCode(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;)V

    return-void
.end method

.method static synthetic access$201(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->afterMobileRegPreVerify(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;)V

    return-void
.end method

.method static synthetic access$301(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->doMobileRegPreVerify(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$401(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getCountryCode()V

    return-void
.end method

.method static synthetic access$501(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->doSendSms(Ljava/lang/String;)V

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final afterCountryCode(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$2;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method public final afterMobileRegPreVerify(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$3;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$3;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method public final afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$1;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method public final doMobileRegPreVerify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$4;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public final doSendSms(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$6;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$6;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method public final getCountryCode()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$5;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$5;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_register:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->setContentView(I)V

    .line 41
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->onBackPressed()V

    .line 86
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->setContentView(I)V

    .line 66
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->a()V

    .line 67
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->setContentView(Landroid/view/View;)V

    .line 78
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->a()V

    .line 79
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->a()V

    .line 73
    return-void
.end method
