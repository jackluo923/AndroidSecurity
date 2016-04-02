.class public Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity;
.super Lcom/ali/user/mobile/password/PasswordActivity;
.source "AliUserLoginSetLoginPasswordActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_login_password"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ali/user/mobile/password/PasswordActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterSupplyment(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V
    .locals 5

    .prologue
    .line 39
    const-string/jumbo v0, "YWUC-JTTYZH-C25"

    const-string/jumbo v1, "setLoginPassword"

    const-string/jumbo v2, "LoginSetLoginPassword"

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1}, Lcom/ali/user/mobile/password/PasswordActivity;->afterSupplyment(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V

    .line 41
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
    .line 69
    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->loginPasswordFlag:I

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
    .line 64
    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->ali_user_login_set_login_password_tip:I

    return v0
.end method

.method protected onLoginFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z
    .locals 2

    .prologue
    .line 45
    const-string/jumbo v0, "6203"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const-string/jumbo v0, "6202"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const-string/jumbo v0, "6207"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    const-string/jumbo v1, "login_response"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 50
    const/16 v1, 0x7ce

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity;->setResult(ILandroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity;->finish()V

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->onResume()V

    .line 26
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->title_back:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonText(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method protected prepareSupplyRequest()Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;

    invoke-direct {v0}, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity;->mToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->token:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity;->encryptedKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->queryPassword:Ljava/lang/String;

    .line 34
    return-object v0
.end method

.method protected requestType()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "20000008"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity;->mAppId:Ljava/lang/String;

    .line 60
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
