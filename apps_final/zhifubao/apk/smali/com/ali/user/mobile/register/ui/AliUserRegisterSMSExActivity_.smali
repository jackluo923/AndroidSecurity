.class public final Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;
.super Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;
.source "AliUserRegisterSMSExActivity_.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->a:Landroid/os/Handler;

    .line 185
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->smssend_title:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 48
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->mobileNo:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->mobileNoTv:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->smsend_ex_view:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->smsendView:Landroid/widget/LinearLayout;

    .line 50
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->checkCodeTextView:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->mCheckCodeTextView:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    .line 51
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->nextStep:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->mNextStep:Landroid/widget/Button;

    .line 52
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->smsForMobile:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->mSmsMobileTip:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->checkCodeSend:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->mCheckCodeViewInput:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    .line 54
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->afterViews()V

    .line 55
    return-void
.end method

.method static synthetic access$001(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    return-void
.end method

.method static synthetic access$101(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->afterVerifySms(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;)V

    return-void
.end method

.method static synthetic access$201(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->OnAutoReadSms(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$301(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->afterVerifySms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V

    return-void
.end method

.method static synthetic access$401(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->doVerifySms(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$501(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->sendSmsInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    return-void
.end method

.method static synthetic access$601(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->verifySms(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final OnAutoReadSms(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$3;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$3;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method public final afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$1;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method public final afterVerifySms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$4;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$4;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method

.method public final afterVerifySms(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$2;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method

.method public final doVerifySms(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$5;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$5;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_sms_register:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->setContentView(I)V

    .line 41
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->onBackPressed()V

    .line 80
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final sendSmsInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$6;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->a()V

    .line 61
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->setContentView(Landroid/view/View;)V

    .line 72
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->a()V

    .line 73
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->a()V

    .line 67
    return-void
.end method

.method public final verifySms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$7;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method
