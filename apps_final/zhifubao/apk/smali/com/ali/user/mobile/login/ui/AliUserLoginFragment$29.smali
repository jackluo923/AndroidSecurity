.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 1265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-static {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->access$4(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 1270
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    if-nez v0, :cond_0

    .line 1271
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v1, "unifyLoginRes == null afterLogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.ali.user.sdk.login.FAIL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->a(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->access$3(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Landroid/content/Intent;)V

    .line 1273
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->enableBackButton()V

    .line 1274
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->dismissProgress()V

    .line 1279
    :goto_0
    return-void

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onLoginPreFinish(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto :goto_0
.end method
