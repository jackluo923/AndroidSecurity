.class Lcom/ali/user/mobile/common/api/AliUserLogin$9;
.super Ljava/lang/Object;
.source "AliUserLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/taobao/android/sso/UserInfo;

.field private final synthetic b:Landroid/content/Context;

.field final synthetic this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$9;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iput-object p2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$9;->a:Lcom/taobao/android/sso/UserInfo;

    iput-object p3, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$9;->b:Landroid/content/Context;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/common/api/AliUserLogin$9;)Lcom/ali/user/mobile/common/api/AliUserLogin;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$9;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 465
    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 466
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$9;->a:Lcom/taobao/android/sso/UserInfo;

    iget-object v1, v1, Lcom/taobao/android/sso/UserInfo;->mSsoToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->ssoToken:Ljava/lang/String;

    .line 467
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$9;->a:Lcom/taobao/android/sso/UserInfo;

    iget-object v1, v1, Lcom/taobao/android/sso/UserInfo;->mAccountType:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    .line 468
    const-string/jumbo v1, "withlogintoken"

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    .line 470
    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$9;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    # getter for: Lcom/ali/user/mobile/common/api/AliUserLogin;->c:Lcom/ali/user/mobile/service/UserLoginService;
    invoke-static {v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$6(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/service/UserLoginService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/service/UserLoginService;->unifyLogin(Lcom/ali/user/mobile/login/LoginParam;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    move-result-object v0

    .line 472
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->success:Z

    if-eqz v1, :cond_0

    .line 473
    const-string/jumbo v1, "AliUserLogin"

    const-string/jumbo v2, "\u6dd8\u5b9d\u540e\u53f0sso\u514d\u767b\u6210\u529f"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    # getter for: Lcom/ali/user/mobile/common/api/AliUserLogin;->a:Lcom/ali/user/mobile/login/OnLoginCaller;
    invoke-static {}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$7()Lcom/ali/user/mobile/login/OnLoginCaller;

    move-result-object v1

    new-instance v2, Lcom/ali/user/mobile/common/api/AliUserLogin$9$1;

    invoke-direct {v2, p0}, Lcom/ali/user/mobile/common/api/AliUserLogin$9$1;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin$9;)V

    invoke-interface {v1, v0, v2}, Lcom/ali/user/mobile/login/OnLoginCaller;->postFinishLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V

    .line 489
    :goto_0
    return-void

    .line 482
    :cond_0
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "\u6dd8\u5b9d\u540e\u53f0sso\u514d\u767b\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$9;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$9;->a:Lcom/taobao/android/sso/UserInfo;

    iget-object v2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$9;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    const-string/jumbo v1, "AliUserLogin"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 487
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$9;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$9;->a:Lcom/taobao/android/sso/UserInfo;

    iget-object v2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$9;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v4}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method
