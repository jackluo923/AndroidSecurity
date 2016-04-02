.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$35;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "AliUserLoginFragment.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$35;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 1377
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFail()V
    .locals 2

    .prologue
    .line 1398
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u7ed1\u5b9a\u624b\u673a\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$35;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 1400
    return-void
.end method

.method protected onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1381
    const-string/jumbo v0, "continueLogin"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$35;->getIntentExtra()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1382
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$35;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 1383
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$35;->onSuccess()V

    .line 1384
    const/4 v0, 0x1

    .line 1386
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/ali/user/mobile/h5/AUH5Plugin;->onOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSuccess()V
    .locals 2

    .prologue
    .line 1391
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u7ed1\u5b9a\u624b\u673a\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$35;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1393
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$35;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginInCurrentEnvWithToken(Ljava/lang/String;)V

    .line 1394
    return-void
.end method
