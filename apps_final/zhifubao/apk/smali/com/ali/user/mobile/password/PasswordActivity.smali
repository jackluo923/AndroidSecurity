.class public abstract Lcom/ali/user/mobile/password/PasswordActivity;
.super Lcom/ali/user/mobile/login/ui/BaseLoginActivity;
.source "PasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# static fields
.field protected static final REQUEST_RPC_SIMPLE_SUPPLY:I = 0x1

.field protected static final REQUEST_RPC_SUPPLY:I


# instance fields
.field protected encryptedKey:Ljava/lang/String;

.field protected mConfirmSettingBtn:Landroid/widget/Button;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "comfirmSetting"
    .end annotation
.end field

.field protected mDisplayPasswordCheckBox:Landroid/widget/CheckBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "checkboxDisplay"
    .end annotation
.end field

.field protected mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

.field protected mPasswordInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "passwordInput"
    .end annotation
.end field

.field protected mPasswordTip:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "passwordTip"
    .end annotation
.end field

.field protected mSetPWView:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "set_layout"
    .end annotation
.end field

.field protected mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 117
    const-string/jumbo v0, "BasePasswordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u83b7\u53d6RSA:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->getOriginalKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;->rsaPK:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/rsa/Rsa;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/password/PasswordActivity;->encryptedKey:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->doSupplement()V

    .line 120
    return-void
.end method

.method protected afterSupplyment(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 149
    const-string/jumbo v0, "BasePasswordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8865\u5168\u5bc6\u7801\u7ed3\u679c,code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-boolean v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->success:Z

    if-eqz v0, :cond_1

    .line 152
    const-string/jumbo v0, "BasePasswordActivity"

    const-string/jumbo v1, "\u8865\u5168\u5bc6\u7801\u6210\u529f\uff0c\u540e\u53f0\u767b\u5f55withtoken"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->doBackgroundLogin()V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string/jumbo v0, "BasePasswordActivity"

    const-string/jumbo v1, "\u8bbe\u7f6e\u65b0\u767b\u5f55\u5bc6\u7801\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->dismissProgress()V

    .line 157
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/password/PasswordActivity;->onSupplyFail(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    const-string/jumbo v0, "6213"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    const-string/jumbo v0, "BasePasswordActivity"

    const-string/jumbo v1, "session\u8d85\u65f6"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->msg:Ljava/lang/String;

    const/16 v1, 0x7cf

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/password/PasswordActivity;->alertResult(Ljava/lang/String;I)V

    goto :goto_0

    .line 162
    :cond_2
    const-string/jumbo v0, "BasePasswordActivity"

    const-string/jumbo v1, "\u5176\u4ed6\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->msg:Ljava/lang/String;

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/password/PasswordActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected afterViews()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mPasswordInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->getInputName()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/password/PasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputName(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mPasswordInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iput-object v0, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    .line 69
    iget-object v0, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mPasswordTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->getTip()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    iget-object v0, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mDisplayPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    iget-object v0, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mConfirmSettingBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/password/PasswordActivity;->showInputMethodPannel(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mDisplayPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/password/PasswordActivity;->setDisplayPassword(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->initViewChains()V

    .line 77
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->initKeyboard()V

    .line 78
    return-void
.end method

.method protected closeKeyboard()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->closeSafeKeyboard()V

    .line 93
    return-void
.end method

.method protected doRsa()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 98
    :try_start_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/password/PasswordActivity;->showProgress(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/rsa/Rsa;->getRSAKey(Landroid/content/Context;)Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    move-result-object v0

    .line 100
    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->dismissProgress()V

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "get rsa from server failed!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->dismissProgress()V

    .line 107
    throw v0

    .line 104
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/password/PasswordActivity;->afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method protected doSupplement()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 126
    const-string/jumbo v0, "BasePasswordActivity"

    const-string/jumbo v1, "\u5f00\u59cb\u8865\u5168\u5bc6\u7801"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/password/PasswordActivity;->encryptedKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->prepareSupplyRequest()Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->requestType()I

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mUserLoginService:Lcom/ali/user/mobile/service/UserLoginService;

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/service/UserLoginService;->supplyPassword(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;

    move-result-object v0

    .line 136
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/password/PasswordActivity;->afterSupplyment(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V

    .line 139
    :goto_1
    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mUserLoginService:Lcom/ali/user/mobile/service/UserLoginService;

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/service/UserLoginService;->supplySimplePassword(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;)Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->dismissProgress()V

    .line 139
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->system_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/password/PasswordActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->dismissProgress()V

    .line 143
    throw v0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getInputName()I
.end method

.method protected getOriginalKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTip()I
.end method

.method protected initKeyboard()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setGreatWall(Z)V

    .line 89
    return-void
.end method

.method protected initViewChains()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mConfirmSettingBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    .line 83
    iget-object v1, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedCheckPasswordView(Landroid/widget/EditText;)V

    .line 84
    iget-object v1, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mDisplayPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 190
    invoke-virtual {p0, p2}, Lcom/ali/user/mobile/password/PasswordActivity;->setDisplayPassword(Z)V

    .line 192
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->comfirmSetting:I

    if-ne v0, v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->closeKeyboard()V

    .line 183
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->doRsa()V

    .line 185
    :cond_0
    return-void
.end method

.method protected onSupplyFail(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract prepareSupplyRequest()Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;
.end method

.method protected abstract requestType()I
.end method

.method protected setDisplayPassword(Z)V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSelectionStart()I

    move-result v0

    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setInputType(I)V

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSelection(I)V

    .line 202
    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/password/PasswordActivity;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setInputType(I)V

    goto :goto_0
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
