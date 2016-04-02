.class public Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;
.super Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;
.source "AliUserRegisterWebviewEx.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_webview"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;-><init>()V

    return-void
.end method


# virtual methods
.method protected doEmailRegister(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 30
    const-string/jumbo v0, "AliUserRegisterWebviewEx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5f00\u59cb\u90ae\u7bb1\u6ce8\u518c:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :try_start_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;->showProgress(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;->mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/ali/user/mobile/service/UserRegisterService;->emailActivateV2(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;->afterEmailRegister(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;->dismissProgress()V

    .line 37
    throw v0
.end method

.method protected exitDialog()V
    .locals 7

    .prologue
    .line 43
    const-string/jumbo v1, ""

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->webview_back_msg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->yes:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 45
    new-instance v4, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx$1;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx$1;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;)V

    .line 54
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/ali/user/mobile/security/ui/R$string;->no:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    .line 43
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 55
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected goRegister()V
    .locals 2

    .prologue
    .line 59
    const-string/jumbo v0, "AliUserRegisterWebviewEx"

    const-string/jumbo v1, "\u53bb\u6ce8\u518c"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
