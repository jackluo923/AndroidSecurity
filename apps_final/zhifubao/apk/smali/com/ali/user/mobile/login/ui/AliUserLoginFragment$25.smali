.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/ali/user/mobile/login/LoginParam;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->a:Lcom/ali/user/mobile/login/LoginParam;

    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 978
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "\u767b\u5f55\u4e2d..."

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const-string/jumbo v1, "\u767b\u5f55\u4e2d..."

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->showProgress(Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->disableBackButton()V

    .line 983
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mUserLoginService:Lcom/ali/user/mobile/service/UserLoginService;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->a:Lcom/ali/user/mobile/login/LoginParam;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/service/UserLoginService;->unifyLogin(Lcom/ali/user/mobile/login/LoginParam;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    move-result-object v0

    .line 984
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->afterLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :cond_0
    return-void

    .line 985
    :catch_0
    move-exception v0

    .line 986
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->dismissProgress()V

    .line 987
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.ali.user.sdk.login.FAIL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->a(Landroid/content/Intent;)V
    invoke-static {v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->access$3(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Landroid/content/Intent;)V

    .line 988
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->handleLoginException(Lcom/alipay/mobile/common/rpc/RpcException;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 989
    throw v0
.end method
