.class public Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;
.super Lcom/ali/user/mobile/sms/ui/SmsActivity;
.source "AliUserLoginSMSActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_sms_login"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field protected mChangePhone:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "changePhone"
    .end annotation
.end field

.field protected mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "smssend_title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->isNeedAutoInputSms:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mIsSmsAutoRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method protected afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/16 v3, 0xbb8

    .line 150
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->dismissProgress()V

    .line 152
    if-nez p1, :cond_0

    .line 153
    invoke-interface {p2}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onFail()V

    .line 154
    const-string/jumbo v0, "\u53d1\u9001\u5931\u8d25"

    invoke-virtual {p0, v0, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->toast(Ljava/lang/String;I)V

    .line 173
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string/jumbo v0, "AliUserLoginSMSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u53d1\u9001\u77ed\u4fe1\u6821\u9a8c\u7801\u7ed3\u679c\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-boolean v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->success:Z

    if-eqz v0, :cond_1

    .line 158
    const-string/jumbo v0, "AliUserLoginSMSActivity"

    const-string/jumbo v1, "\u53d1\u9001\u77ed\u4fe1\u6821\u9a8c\u7801\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-interface {p2}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onSuccess()V

    .line 160
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->startAutoReadSms()V

    goto :goto_0

    .line 162
    :cond_1
    const-string/jumbo v0, "AliUserLoginSMSActivity"

    const-string/jumbo v1, "\u53d1\u9001\u77ed\u4fe1\u6821\u9a8c\u7801\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v0, "6213"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    const-string/jumbo v0, "AliUserLoginSMSActivity"

    const-string/jumbo v1, "session\u8d85\u65f6"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->msg:Ljava/lang/String;

    const/16 v1, 0x7cf

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->alertResult(Ljava/lang/String;I)V

    goto :goto_0

    .line 167
    :cond_2
    const-string/jumbo v0, "AliUserLoginSMSActivity"

    const-string/jumbo v1, "\u5176\u4ed6\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-interface {p2}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onFail()V

    .line 169
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->msg:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected afterVerifySms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 3

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->dismissProgress()V

    .line 210
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string/jumbo v0, "AliUserLoginSMSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6821\u9a8c\u77ed\u4fe1\u6821\u9a8c\u7801\u7ed3\u679c\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-boolean v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->success:Z

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->doBackgroundLogin()V

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->dismissProgress()V

    .line 201
    const-string/jumbo v0, "6213"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    const-string/jumbo v0, "AliUserLoginSMSActivity"

    const-string/jumbo v1, "session\u8d85\u65f6"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->msg:Ljava/lang/String;

    const/16 v1, 0x7cf

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->alertResult(Ljava/lang/String;I)V

    goto :goto_0

    .line 205
    :cond_2
    const-string/jumbo v0, "AliUserLoginSMSActivity"

    const-string/jumbo v1, "\u5176\u4ed6\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->msg:Ljava/lang/String;

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected afterViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->checkMobileNo()V

    .line 58
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mSmsMobileTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->smsForMobileTip:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mobileNo:Ljava/lang/String;

    invoke-static {v4}, Lcom/ali/user/mobile/utils/StringUtil;->hideAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mCheckCodeTextView:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->getSendResultCallback()Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onSuccess()V

    .line 61
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mCheckCodeViewInput:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    .line 62
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mCheckCodeViewInput:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->initFocusChangeBackground(Landroid/view/View;Landroid/widget/EditText;)V

    .line 63
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 64
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity$1;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity$2;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity$2;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v1, "mLoginParam == null when login sms verify"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "\u7cfb\u7edf\u5f02\u5e38"

    invoke-virtual {p0, v0, v5}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->toast(Ljava/lang/String;I)V

    .line 97
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->finish()V

    .line 111
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mIsSmsAutoRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 103
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mChangePhone:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mChangePhone:Landroid/widget/TextView;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity$3;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity$3;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->initViewChains()V

    .line 105
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->initViewListeners()V

    .line 106
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->showInputMethodPannel(Landroid/view/View;)V

    .line 108
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->startAutoReadSms()V

    .line 110
    const-string/jumbo v0, "YWUC-JTTYZH-C45"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "loginCodeInputView"

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mobileNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "aliuser_h5url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->a:Ljava/lang/String;

    .line 53
    return-void
.end method

.method protected onLoginFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z
    .locals 2

    .prologue
    .line 214
    const-string/jumbo v0, "6201"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    const-string/jumbo v0, "6205"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    const-string/jumbo v0, "6207"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    const-string/jumbo v0, "5136"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const-string/jumbo v0, "6271"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    const-string/jumbo v0, "6272"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const-string/jumbo v0, "6273"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 222
    const-string/jumbo v1, "login_response"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 223
    const/16 v1, 0x7ce

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->setResult(ILandroid/content/Intent;)V

    .line 224
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->finish()V

    .line 225
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendSmsInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 5

    .prologue
    .line 129
    const-string/jumbo v0, "AliUserLoginSMSActivity"

    const-string/jumbo v1, "\u53d1\u9001\u77ed\u4fe1\u6821\u9a8c\u7801"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string/jumbo v0, "YWUC-JTTYZH-C18"

    const-string/jumbo v1, "regain"

    const-string/jumbo v2, "loginCodeInputView"

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mobileNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->showProgress(Ljava/lang/String;)V

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mUserLoginService:Lcom/ali/user/mobile/service/UserLoginService;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mobileNo:Ljava/lang/String;

    const-string/jumbo v3, "login"

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/mobile/service/UserLoginService;->applyLoginSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    move-result-object v0

    .line 135
    invoke-virtual {p0, v0, p3}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->dismissProgress()V

    .line 138
    invoke-interface {p3}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onFail()V

    .line 139
    throw v0
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 239
    const-string/jumbo v0, "20000008"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mAppId:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public toSetNewLoginPassword(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 3

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    const-string/jumbo v1, "login_param"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 233
    const-string/jumbo v1, "token"

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const v1, 0x8000

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 235
    return-void
.end method

.method protected verifySms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 177
    const-string/jumbo v0, "AliUserLoginSMSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6821\u9a8c\u77ed\u4fe1\u6821\u9a8c\u7801\uff0c\u662f\u5426\u81ea\u52a8\u8bfb\u53d6:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mIsSmsAutoRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v0, "YWUC-JTTYZH-C17"

    const-string/jumbo v1, "next"

    const-string/jumbo v2, "loginCodeInputView"

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mobileNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->showProgress(Ljava/lang/String;)V

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mUserLoginService:Lcom/ali/user/mobile/service/UserLoginService;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mobileNo:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->mIsSmsAutoRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "down_auto"

    .line 182
    :goto_0
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/ali/user/mobile/service/UserLoginService;->verifyLoginSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    move-result-object v0

    .line 184
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->afterVerifySms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V

    return-void

    .line 183
    :cond_0
    const-string/jumbo v0, "down_input"
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->dismissProgress()V

    .line 187
    throw v0
.end method
