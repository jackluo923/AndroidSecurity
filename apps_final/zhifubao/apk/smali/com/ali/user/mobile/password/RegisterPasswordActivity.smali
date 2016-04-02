.class public abstract Lcom/ali/user/mobile/password/RegisterPasswordActivity;
.super Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;
.source "RegisterPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# instance fields
.field protected encryptedKey:Ljava/lang/String;

.field protected optionStatus:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->optionStatus:Z

    .line 30
    return-void
.end method

.method static synthetic access$3(Lcom/ali/user/mobile/password/RegisterPasswordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->goLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/password/RegisterPasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->goRegister()V

    return-void
.end method

.method static synthetic access$5(Lcom/ali/user/mobile/password/RegisterPasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->goLogin()V

    return-void
.end method


# virtual methods
.method protected afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 62
    const-string/jumbo v0, "RegisterPasswordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u83b7\u53d6RSA:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->getOriginalKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;->rsaPK:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/rsa/Rsa;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->encryptedKey:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->doSupplement()V

    .line 65
    return-void
.end method

.method protected afterSupplement(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)V
    .locals 11
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->dismissProgress()V

    .line 87
    if-nez p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string/jumbo v0, "RegisterPasswordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8865\u5168\u5bc6\u7801\u7ed3\u679c:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->resultStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->memo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "YWUC-JTTYZH-C26"

    const-string/jumbo v1, "setPayPassword"

    const-string/jumbo v2, "SetPassword"

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->mToken:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->mobileNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->mMobileNo:Ljava/lang/String;

    .line 96
    iget v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->resultStatus:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 97
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->onSupplySuccess(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v4, Lcom/ali/user/mobile/password/RegisterPasswordActivity$1;

    invoke-direct {v4, p0, p1}, Lcom/ali/user/mobile/password/RegisterPasswordActivity$1;-><init>(Lcom/ali/user/mobile/password/RegisterPasswordActivity;Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)V

    .line 107
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->mobileNo:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->mobileNo:Ljava/lang/String;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->confirm_sixpay_register_account_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->mobileNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    const-string/jumbo v1, "\u6ce8\u518c\u6210\u529f"

    const-string/jumbo v3, "\u786e\u5b9a"

    move-object v0, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 111
    :cond_2
    const-string/jumbo v0, "\u4e0b\u6b21\u8bf7\u7528  %s \u767b\u5f55"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->mobileNo:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 113
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/ali/user/mobile/security/ui/R$color;->checkCodeStringColor:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 114
    const/4 v1, 0x5

    iget-object v3, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->mobileNo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    const/16 v6, 0x21

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 116
    const-string/jumbo v1, "\u6ce8\u518c\u6210\u529f"

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u786e\u5b9a"

    move-object v0, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 121
    :cond_3
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->onSupplyFail(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->resultStatus:I

    const/16 v1, 0xcf

    if-ne v0, v1, :cond_4

    .line 125
    const-string/jumbo v0, "RegisterPasswordActivity"

    const-string/jumbo v1, "token\u8d85\u65f6"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v6, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->memo:Ljava/lang/String;

    const-string/jumbo v7, "\u786e\u5b9a"

    new-instance v8, Lcom/ali/user/mobile/password/RegisterPasswordActivity$2;

    invoke-direct {v8, p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity$2;-><init>(Lcom/ali/user/mobile/password/RegisterPasswordActivity;)V

    move-object v4, p0

    move-object v9, v5

    move-object v10, v5

    invoke-virtual/range {v4 .. v10}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 132
    :cond_4
    iget v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->resultStatus:I

    const/16 v1, 0xbd8

    if-eq v0, v1, :cond_5

    .line 133
    iget v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->resultStatus:I

    const/16 v1, 0xbd7

    if-ne v0, v1, :cond_6

    .line 134
    :cond_5
    iget-object v6, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->memo:Ljava/lang/String;

    const-string/jumbo v7, "\u786e\u5b9a"

    new-instance v8, Lcom/ali/user/mobile/password/RegisterPasswordActivity$3;

    invoke-direct {v8, p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity$3;-><init>(Lcom/ali/user/mobile/password/RegisterPasswordActivity;)V

    move-object v4, p0

    move-object v9, v5

    move-object v10, v5

    invoke-virtual/range {v4 .. v10}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 142
    :cond_6
    const-string/jumbo v0, "RegisterPasswordActivity"

    const-string/jumbo v1, "\u5176\u4ed6\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;->memo:Ljava/lang/String;

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method protected closeKeyboard()V
    .locals 0
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 41
    return-void
.end method

.method protected doRsa()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->closeKeyboard()V

    .line 47
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->showProgress(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/rsa/Rsa;->getRSAKey(Landroid/content/Context;)Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    move-result-object v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->dismissProgress()V

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "get rsa from server failed!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->dismissProgress()V

    .line 56
    throw v0

    .line 53
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->afterRsa(Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method protected doSupplement()V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 69
    const-string/jumbo v0, "RegisterPasswordActivity"

    const-string/jumbo v1, "\u5f00\u59cb\u8865\u5168\u5bc6\u7801"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->encryptedKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    iget-object v1, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->mToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->encryptedKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->requestType()Ljava/lang/String;

    move-result-object v3

    .line 73
    const-string/jumbo v4, ""

    invoke-static {p0}, Lcom/ali/user/mobile/login/rds/RDSWraper;->getSafeData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->optionStatus:Z

    .line 72
    invoke-interface/range {v0 .. v6}, Lcom/ali/user/mobile/service/UserRegisterService;->supplementV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->afterSupplement(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)V

    .line 76
    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->system_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->dismissProgress()V

    .line 80
    throw v0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getOriginalKey()Ljava/lang/String;
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->comfirmSetting:I

    if-ne v0, v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->doRsa()V

    .line 165
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSupplyFail(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method protected onSupplySuccess(Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;)Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract requestType()Ljava/lang/String;
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
