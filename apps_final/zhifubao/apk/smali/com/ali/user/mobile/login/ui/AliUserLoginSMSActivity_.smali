.class public final Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;
.super Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;
.source "AliUserLoginSMSActivity_.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->a:Landroid/os/Handler;

    .line 154
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->smssend_title:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 46
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->changePhone:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->mChangePhone:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->smsForMobile:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->mSmsMobileTip:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->checkCodeSend:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->mCheckCodeViewInput:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    .line 49
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->nextStep:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->mNextStep:Landroid/widget/Button;

    .line 50
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->checkCodeTextView:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->mCheckCodeTextView:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    .line 51
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->afterViews()V

    .line 52
    return-void
.end method

.method static synthetic access$001(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    return-void
.end method

.method static synthetic access$101(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->OnAutoReadSms(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$201(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->afterVerifySms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V

    return-void
.end method

.method static synthetic access$301(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->verifySms(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$401(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->sendSmsInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final OnAutoReadSms(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$2;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method public final afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$1;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method

.method public final afterVerifySms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$3;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$3;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_sms_login:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->setContentView(I)V

    .line 39
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->onBackPressed()V

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final sendSmsInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$5;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->a()V

    .line 58
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->setContentView(Landroid/view/View;)V

    .line 69
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->a()V

    .line 70
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->a()V

    .line 64
    return-void
.end method

.method public final verifySms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$4;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method
