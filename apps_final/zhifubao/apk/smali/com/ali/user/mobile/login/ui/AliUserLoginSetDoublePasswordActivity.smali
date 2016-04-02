.class public Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;
.super Lcom/ali/user/mobile/password/PasswordActivity;
.source "AliUserLoginSetDoublePasswordActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_double_password"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field protected mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

.field protected mLoginPasswordInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "loginPasswordInput"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ali/user/mobile/password/PasswordActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 3

    .prologue
    .line 90
    const-string/jumbo v0, "AliUserLoginSetDoublePasswordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u83b7\u53d6RSA:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;->rsaPK:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/rsa/Rsa;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->a:Ljava/lang/String;

    .line 92
    invoke-super {p0, p1}, Lcom/ali/user/mobile/password/PasswordActivity;->afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V

    .line 93
    return-void
.end method

.method protected afterSupplyment(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V
    .locals 5

    .prologue
    .line 120
    const-string/jumbo v0, "YWUC-JTTYZH-C58"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "LoginSetDoublePassword"

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1}, Lcom/ali/user/mobile/password/PasswordActivity;->afterSupplyment(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V

    .line 122
    return-void
.end method

.method protected afterViews()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 43
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mLoginPasswordInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    .line 45
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setFocusable(Z)V

    .line 46
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setFocusableInTouchMode(Z)V

    .line 47
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->requestFocus()Z

    .line 48
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->setting_password:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->title_back:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonText(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity$1;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-super {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->afterViews()V

    .line 60
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->for_alipay_payment:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 62
    const-string/jumbo v0, "YWUC-JTTYZH-C47"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "loginSetTwoPasswordView"

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected doSupplement()V
    .locals 2

    .prologue
    .line 109
    const-string/jumbo v0, "AliUserLoginSetDoublePasswordActivity"

    const-string/jumbo v1, "\u5f00\u59cb\u8865\u5168\u53cc\u5bc6"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->encryptedKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 111
    invoke-super {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->doSupplement()V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->dismissProgress()V

    .line 114
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->system_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected getInputName()I
    .locals 1

    .prologue
    .line 171
    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->payPasswordFlag:I

    return v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected getTip()I
    .locals 1

    .prologue
    .line 176
    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->pay_password_tip:I

    return v0
.end method

.method protected initKeyboard()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 81
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setGreatWall(Z)V

    .line 82
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setGreatWall(Z)V

    .line 83
    return-void
.end method

.method protected initViewChains()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mConfirmSettingBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    .line 73
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedCheckPasswordView(Landroid/widget/EditText;)V

    .line 74
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedCheckPasswordView(Landroid/widget/EditText;)V

    .line 75
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 77
    return-void
.end method

.method protected onLoginFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z
    .locals 2

    .prologue
    .line 136
    const-string/jumbo v0, "6203"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-string/jumbo v0, "6202"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const-string/jumbo v0, "6207"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    const-string/jumbo v0, "AliUserLoginSetDoublePasswordActivity"

    const-string/jumbo v1, "\u8fd8\u9700\u8981\u77ed\u4fe1\u6821\u9a8c"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    const-string/jumbo v1, "login_response"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 142
    const/16 v1, 0x7ce

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->setResult(ILandroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->finish()V

    .line 144
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSupplyFail(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 126
    const-string/jumbo v0, "6252"

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string/jumbo v0, "AliUserLoginSetDoublePasswordActivity"

    const-string/jumbo v2, "\u4e24\u4e2a\u5bc6\u7801\u683c\u5f0f\u90fd\u9519\u8bef"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareSupplyRequest()Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;

    invoke-direct {v0}, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->token:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->queryPassword:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->encryptedKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->paymentPassword:Ljava/lang/String;

    .line 101
    return-object v0
.end method

.method protected requestType()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 166
    const-string/jumbo v0, "20000008"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mAppId:Ljava/lang/String;

    .line 167
    return-void
.end method

.method protected setDisplayPassword(Z)V
    .locals 5

    .prologue
    const/16 v4, 0x91

    const/16 v3, 0x81

    .line 151
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSelectionStart()I

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSelectionStart()I

    move-result v1

    .line 153
    if-eqz p1, :cond_0

    .line 154
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setInputType(I)V

    .line 155
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setInputType(I)V

    .line 160
    :goto_0
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSelection(I)V

    .line 161
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSelection(I)V

    .line 162
    return-void

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setInputType(I)V

    .line 158
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetDoublePasswordActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setInputType(I)V

    goto :goto_0
.end method

.method protected showInputMethodPannel(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/password/PasswordActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/password/PasswordActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
