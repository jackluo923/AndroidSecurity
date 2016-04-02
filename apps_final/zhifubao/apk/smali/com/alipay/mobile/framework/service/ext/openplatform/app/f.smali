.class final Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private final synthetic b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->b:Landroid/os/Bundle;

    .line 1268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthFailed()V
    .locals 2

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    const-string/jumbo v1, "\u652f\u4ed8\u5b9d\u8d26\u53f7\u767b\u5f55\u5f02\u5e38"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->showToastCenter(Ljava/lang/String;)V

    .line 1281
    return-void
.end method

.method public final onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1276
    return-void
.end method

.method public final onNotNeedAuth()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1285
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAlipayApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1287
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    # invokes: Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->access$0(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1292
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1295
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    # invokes: Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->access$0(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth()Z

    move-result v0

    .line 1296
    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final onUserCancel()V
    .locals 0

    .prologue
    .line 1271
    return-void
.end method
