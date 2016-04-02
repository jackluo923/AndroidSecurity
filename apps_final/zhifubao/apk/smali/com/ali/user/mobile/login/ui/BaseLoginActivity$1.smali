.class Lcom/ali/user/mobile/login/ui/BaseLoginActivity$1;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "\u5f00\u59cb\u540e\u53f0\u767b\u9646"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mUserLoginService:Lcom/ali/user/mobile/service/UserLoginService;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->prepareLoginParam()Lcom/ali/user/mobile/login/LoginParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/service/UserLoginService;->unifyLogin(Lcom/ali/user/mobile/login/LoginParam;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->afterBackgroundLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->handleException(Ljava/lang/Exception;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->dismissProgress()V

    .line 53
    throw v0
.end method
