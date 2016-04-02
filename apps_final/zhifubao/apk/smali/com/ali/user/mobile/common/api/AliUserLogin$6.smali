.class Lcom/ali/user/mobile/common/api/AliUserLogin$6;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "AliUserLogin.java"


# instance fields
.field private final synthetic a:Lcom/ali/user/mobile/login/sso/SSOInfo;

.field private final synthetic b:Landroid/content/Context;

.field final synthetic this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/ali/user/mobile/login/sso/SSOInfo;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iput-object p2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->a:Lcom/ali/user/mobile/login/sso/SSOInfo;

    iput-object p3, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->b:Landroid/content/Context;

    .line 362
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 365
    const-string/jumbo v1, "ok"

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    const-string/jumbo v1, "AliUserLogin"

    const-string/jumbo v2, "\u7528\u6237\u6388\u6743\uff0c\u8fdb\u884c\u514d\u767b"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 368
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    # getter for: Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;
    invoke-static {v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$4(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    # getter for: Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;
    invoke-static {v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$4(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    move-result-object v1

    invoke-interface {v1}, Lcom/ali/user/mobile/login/sso/SSOLoginCaller;->onSsoLoginUserConfirmed()V

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->a:Lcom/ali/user/mobile/login/sso/SSOInfo;

    const-string/jumbo v3, "alipay"

    const-string/jumbo v4, "withlogintoken"

    # invokes: Lcom/ali/user/mobile/common/api/AliUserLogin;->a(Lcom/ali/user/mobile/login/sso/SSOInfo;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$5(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/ali/user/mobile/login/sso/SSOInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_0
    return v0

    .line 373
    :cond_1
    const-string/jumbo v1, "cancel"

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 374
    const-string/jumbo v1, "AliUserLogin"

    const-string/jumbo v2, "\u7528\u6237\u53d6\u6d88\u6388\u6743\uff0c\u542f\u52a8\u8d26\u5bc6"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 376
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    # getter for: Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;
    invoke-static {v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$4(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 377
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    # getter for: Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;
    invoke-static {v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$4(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    move-result-object v1

    const/16 v2, -0x3eb

    invoke-interface {v1, v2}, Lcom/ali/user/mobile/login/sso/SSOLoginCaller;->onSsoLoginFail(I)V

    .line 379
    :cond_2
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$6;->b:Landroid/content/Context;

    invoke-virtual {v1, v4, v2, v4}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 382
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
