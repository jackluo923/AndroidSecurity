.class public Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;
.super Lcom/ali/user/mobile/password/PasswordActivity;
.source "AliUserLoginSetSixPasswordActivity.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_six_password"
.end annotation


# instance fields
.field protected agreementURL:Ljava/lang/String;

.field protected insuranceInfo:Ljava/lang/String;

.field protected mConfirmSettingBtn:Landroid/widget/Button;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "comfirmSetting"
    .end annotation
.end field

.field protected mInsuranceSureText:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "insurance_sure"
    .end annotation
.end field

.field protected mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "insurance"
    .end annotation
.end field

.field protected mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "sixNumberPasswordInput"
    .end annotation
.end field

.field protected mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field protected optionStatus:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/ali/user/mobile/password/PasswordActivity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->optionStatus:Z

    .line 38
    return-void
.end method


# virtual methods
.method protected afterViews()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mConfirmSettingBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mConfirmSettingBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->setPwdInputListener(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;)V

    .line 72
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getSafeEditText()Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setAutoShowSafeKeyboard(Z)V

    .line 73
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getSafeEditText()Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->requestFocus()Z

    .line 74
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->insuranceInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->setVisibility(I)V

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getSafeEditText()Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->showInputMethodPannel(Landroid/view/View;)V

    .line 97
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getLinkTextView()Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 79
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getLinkTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, -0x767677

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getLinkTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->insuranceInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->optionStatus:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity$1;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->agreementURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mInsuranceSureText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mInsuranceSureText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->agreementURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->initSure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected closeKeyboard()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->hideInputMethod()V

    .line 128
    return-void
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
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method protected getOriginalKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getInputValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method protected initSure(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x21

    .line 100
    const-string/jumbo v0, "\u540c\u610f\u300a\u4fdd\u9669\u6761\u6b3e\u300b"

    .line 101
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 104
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/ui/R$color;->colorBlack:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 105
    new-instance v2, Lcom/ali/user/mobile/register/TaoUrlSpan;

    invoke-direct {v2, p1}, Lcom/ali/user/mobile/register/TaoUrlSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/ali/user/mobile/register/TaoUrlSpan;->setContext(Landroid/content/Context;)Lcom/ali/user/mobile/register/TaoUrlSpan;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 106
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/ui/R$color;->linkcolor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v2, v6, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 108
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mInsuranceSureText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mInsuranceSureText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 110
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/ali/user/mobile/password/PasswordActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "showOptionalInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->insuranceInfo:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "agreementURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->agreementURL:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "optionStatus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->optionStatus:Z

    .line 64
    return-void
.end method

.method protected onLoginFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z
    .locals 2

    .prologue
    .line 153
    const-string/jumbo v0, "6203"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const-string/jumbo v0, "6202"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const-string/jumbo v0, "6207"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 157
    const-string/jumbo v1, "login_response"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 158
    const/16 v1, 0x7ce

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->setResult(ILandroid/content/Intent;)V

    .line 159
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->finish()V

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->onResume()V

    .line 116
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity$2;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity$2;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method protected onSupplyFail(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->clearInput()V

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareSupplyRequest()Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;

    invoke-direct {v0}, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->token:Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->encryptedKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->paymentPassword:Ljava/lang/String;

    .line 140
    const-string/jumbo v1, "1"

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->simplePassword:Ljava/lang/String;

    .line 141
    iget-boolean v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->optionStatus:Z

    iput-boolean v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->optionStatus:Z

    .line 142
    return-object v0
.end method

.method public pwdInputed(ILandroid/text/Editable;)V
    .locals 3

    .prologue
    .line 167
    const-string/jumbo v1, "AliUserLoginSetSixPasswordActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "pwdInputed, len:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mConfirmSettingBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    :goto_1
    return-void

    .line 167
    :cond_0
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mConfirmSettingBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected requestType()I
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 177
    const-string/jumbo v0, "20000008"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->mAppId:Ljava/lang/String;

    .line 178
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
