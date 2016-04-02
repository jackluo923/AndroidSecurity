.class Lcom/ali/user/mobile/common/api/AliUserLogin$5;
.super Ljava/lang/Object;
.source "AliUserLogin.java"

# interfaces
.implements Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field final synthetic this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iput-object p2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->a:Landroid/content/Context;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmUIShowed(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public onFailedResult(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 302
    const-string/jumbo v0, "AliUserLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6ca1\u6709\u83b7\u53d6\u5230SsoInfo\uff0c\u8d77\u8d26\u5bc6:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6ca1\u6709\u83b7\u53d6\u5230alipayAccountType\u7684sso, resultCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    # getter for: Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;
    invoke-static {v0}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$4(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    # getter for: Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;
    invoke-static {v0}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$4(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    move-result-object v0

    const/16 v1, -0x3e9

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/login/sso/SSOLoginCaller;->onSsoLoginFail(I)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->a:Landroid/content/Context;

    invoke-virtual {v0, v3, v1, v3}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 308
    return-void
.end method

.method public onSsoLoginClicked(Lcom/taobao/android/sso/UserInfo;)V
    .locals 2

    .prologue
    .line 296
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "\u83b7\u53d6\u5230SsoInfo"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$3(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;Lcom/taobao/android/sso/UserInfo;)V

    .line 298
    return-void
.end method
