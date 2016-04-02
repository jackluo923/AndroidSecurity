.class public abstract Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "BaseRegisterActivity.java"


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mMobileNo:Ljava/lang/String;

.field protected mRegionNo:Ljava/lang/String;

.field protected mToken:Ljava/lang/String;

.field protected mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected goEmailRegister(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    const-string/jumbo v1, "UrlKey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method protected goLogin()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->mMobileNo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->goLogin(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected goLogin(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->goLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    return-void
.end method

.method protected goLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 47
    iput-object p1, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 48
    iput-object p2, v0, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    .line 49
    iput-object p3, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 52
    const-string/jumbo v2, "login_param"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 53
    const-string/jumbo v0, "from_register"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    if-eqz p4, :cond_0

    .line 55
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    :cond_0
    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method protected goRegister()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->goRegister(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method protected goRegister(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 101
    :cond_0
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method protected goSetPassowrd(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    const-string/jumbo v1, "showOptionalInfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v1, "agreementURL"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v1, "optionStatus"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 80
    const-string/jumbo v0, "token"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string/jumbo v0, "mobile_for_sms"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->mMobileNo:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method protected goSetPassowrdActivity()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->mToken:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->goSetPasswordActivity(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method protected goSetPasswordActivity(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v1, "mobile_for_sms"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->mMobileNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->mToken:Ljava/lang/String;

    .line 29
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "mobile_for_sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->mMobileNo:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "regionNo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->mRegionNo:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->mHandler:Landroid/os/Handler;

    .line 33
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUserRegisterService()Lcom/ali/user/mobile/service/UserRegisterService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    .line 34
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->mMobileNo:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/service/UserRegisterService;->setMobileNo(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 115
    const-string/jumbo v0, "20000009"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->mAppId:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 39
    const-string/jumbo v0, "token"

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->mToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string/jumbo v0, "mobile_for_sms"

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->mMobileNo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string/jumbo v0, "regionNo"

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/BaseRegisterActivity;->mRegionNo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
