.class public Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;
.super Lcom/ali/user/mobile/password/RegisterPasswordActivity;
.source "AliuserRegisterSetSixPasswordActivity.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_six_password_register"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;-><init>()V

    return-void
.end method

.method static synthetic access$3(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->optionStatus:Z

    return-void
.end method


# virtual methods
.method protected afterViews()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mConfirmSettingBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mConfirmSettingBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->setPwdInputListener(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;)V

    .line 74
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getSafeEditText()Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setAutoShowSafeKeyboard(Z)V

    .line 75
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getSafeEditText()Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->requestFocus()Z

    .line 76
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->insuranceInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->setVisibility(I)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getSafeEditText()Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->showInputMethodPannel(Landroid/view/View;)V

    .line 99
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getLinkTextView()Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getLinkTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, -0x767677

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getLinkTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->insuranceInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->optionStatus:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 84
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mInsuranceText:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity$1;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->agreementURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mInsuranceSureText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mInsuranceSureText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->agreementURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->initSure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected closeKeyboard()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->hideInputMethod()V

    .line 123
    return-void
.end method

.method protected doSupplement()V
    .locals 5

    .prologue
    .line 127
    const-string/jumbo v0, "UC-ZC-150512-14"

    const-string/jumbo v1, "zcpwdok"

    const-string/jumbo v2, "RegisterSetSixPassword"

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mMobileNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-super {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->doSupplement()V

    .line 129
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected getOriginalKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->getInputValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected initSure(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x21

    .line 102
    const-string/jumbo v0, "\u540c\u610f\u300a\u4fdd\u9669\u6761\u6b3e\u300b"

    .line 103
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 107
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 108
    sget v4, Lcom/alipay/mobile/ui/R$color;->colorBlack:I

    .line 107
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 108
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 106
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 111
    new-instance v2, Lcom/ali/user/mobile/register/TaoUrlSpan;

    invoke-direct {v2, p1}, Lcom/ali/user/mobile/register/TaoUrlSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/ali/user/mobile/register/TaoUrlSpan;->setContext(Landroid/content/Context;)Lcom/ali/user/mobile/register/TaoUrlSpan;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 114
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/ui/R$color;->linkcolor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 115
    invoke-virtual {v1, v2, v6, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 116
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mInsuranceSureText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mInsuranceSureText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 118
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    const-string/jumbo v1, "showOptionalInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->insuranceInfo:Ljava/lang/String;

    .line 62
    const-string/jumbo v1, "agreementURL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->agreementURL:Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "optionStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->optionStatus:Z

    .line 66
    :cond_0
    return-void
.end method

.method protected onSupplyFail(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mSixNumberInput:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->clearInput()V

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method protected onSupplySuccess(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)Z
    .locals 4

    .prologue
    .line 133
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSuccessActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->extInfos:Ljava/util/Map;

    .line 135
    if-eqz v0, :cond_0

    const-string/jumbo v2, "enterText"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 136
    const-string/jumbo v2, "enterText"

    const-string/jumbo v3, "enterText"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    :cond_0
    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public pwdInputed(ILandroid/text/Editable;)V
    .locals 3

    .prologue
    .line 150
    const-string/jumbo v1, "AliuserRegisterSetSixPasswordActivity"

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

    .line 151
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mConfirmSettingBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    :goto_1
    return-void

    .line 150
    :cond_0
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity;->mConfirmSettingBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected requestType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-string/jumbo v0, "1"

    return-object v0
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
