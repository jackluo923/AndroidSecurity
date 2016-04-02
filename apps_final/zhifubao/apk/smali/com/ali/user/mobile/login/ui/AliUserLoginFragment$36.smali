.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$36;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "AliUserLoginFragment.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$36;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 1411
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFail()V
    .locals 2

    .prologue
    .line 1440
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u6362\u7ed1\u624b\u673a\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$36;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 1442
    return-void
.end method

.method protected onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1415
    const-string/jumbo v0, "continueLogin"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$36;->getIntentExtra()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1416
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$36;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "loginId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1417
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1418
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$36;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 1419
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$36;->onSuccess()V

    .line 1424
    :goto_0
    const/4 v0, 0x1

    .line 1426
    :goto_1
    return v0

    .line 1421
    :cond_0
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u6362\u7ed1\u624b\u673a\u5931\u8d25\uff0cloginId\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$36;->onFail()V

    goto :goto_0

    .line 1426
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onSuccess()V
    .locals 3

    .prologue
    .line 1431
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u6362\u7ed1\u624b\u673a\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$36;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "loginId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1433
    new-instance v1, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v1}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 1434
    iput-object v0, v1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 1435
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$36;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initLoginParam(Lcom/ali/user/mobile/login/LoginParam;Z)V

    .line 1436
    return-void
.end method
