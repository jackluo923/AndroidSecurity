.class public Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;
.super Lcom/ali/user/mobile/password/PasswordActivity;
.source "AliUserLoginSetPayPasswordActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_pay_password"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ali/user/mobile/password/PasswordActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterSupplyment(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V
    .locals 5

    .prologue
    .line 41
    const-string/jumbo v0, "YWUC-JTTYZH-C26"

    const-string/jumbo v1, "setPayPassword"

    const-string/jumbo v2, "LoginSetPayPassword"

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Lcom/ali/user/mobile/password/PasswordActivity;->afterSupplyment(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)V

    .line 43
    return-void
.end method

.method protected afterViews()V
    .locals 5

    .prologue
    .line 26
    invoke-super {p0}, Lcom/ali/user/mobile/password/PasswordActivity;->afterViews()V

    .line 28
    const-string/jumbo v0, "YWUC-JTTYZH-C46"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "loginSetPayPasswordView"

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
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
    .line 90
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
    .line 85
    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->pay_password_tip:I

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/password/PasswordActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLoginFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z
    .locals 2

    .prologue
    .line 57
    const-string/jumbo v0, "6203"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string/jumbo v0, "6202"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const-string/jumbo v0, "6207"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    const-string/jumbo v1, "login_response"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 62
    const/16 v1, 0x7ce

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->setResult(ILandroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->finish()V

    .line 64
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSupplyFail(Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;)Z
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "6255"

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string/jumbo v0, "AliUserLoginSetPayPassword"

    const-string/jumbo v1, "\u652f\u4ed8\u5bc6\u7801\u5df2\u7ecf\u5728\u53e6\u4e00\u53f0\u624b\u673a\u8bbe\u7f6e"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwRes;->msg:Ljava/lang/String;

    const/16 v1, 0x4003

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->alertResult(Ljava/lang/String;I)V

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareSupplyRequest()Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;

    invoke-direct {v0}, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->mToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->token:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->encryptedKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/password/SupplyPassGwReq;->paymentPassword:Ljava/lang/String;

    .line 36
    return-object v0
.end method

.method protected requestType()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 80
    const-string/jumbo v0, "20000008"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity;->mAppId:Ljava/lang/String;

    .line 81
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
