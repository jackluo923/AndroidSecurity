.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$37;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "AliUserLoginFragment.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$37;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 1448
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFail()V
    .locals 2

    .prologue
    .line 1479
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u767b\u5f55\u540e\u6362\u7ed1\u624b\u673a\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$37;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 1481
    return-void
.end method

.method protected onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1452
    const-string/jumbo v0, "continueLogin"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$37;->getIntentExtra()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1453
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$37;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "loginId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1454
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1455
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$37;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 1456
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$37;->onSuccess()V

    .line 1461
    :goto_0
    const/4 v0, 0x1

    .line 1463
    :goto_1
    return v0

    .line 1458
    :cond_0
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u767b\u5f55\u540e\u6362\u7ed1\u624b\u673a\u5931\u8d25\uff0cloginId\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$37;->onFail()V

    goto :goto_0

    .line 1463
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onSuccess()V
    .locals 3

    .prologue
    .line 1468
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u767b\u5f55\u540e\u6362\u7ed1\u624b\u673a\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$37;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "loginId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1470
    new-instance v1, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v1}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 1471
    iput-object v0, v1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 1472
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$37;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    .line 1473
    const-string/jumbo v0, "withchecktoken"

    iput-object v0, v1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    .line 1474
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$37;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initLoginParam(Lcom/ali/user/mobile/login/LoginParam;Z)V

    .line 1475
    return-void
.end method
