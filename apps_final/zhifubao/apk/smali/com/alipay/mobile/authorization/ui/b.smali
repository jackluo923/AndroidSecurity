.class final Lcom/alipay/mobile/authorization/ui/b;
.super Landroid/os/AsyncTask;
.source "AuthorizationActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignRes;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alipay/mobile/authorization/ui/b;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignRes;
    .locals 4

    .prologue
    .line 214
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 215
    new-instance v1, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignReq;

    invoke-direct {v1}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignReq;-><init>()V

    .line 216
    iget-object v2, p0, Lcom/alipay/mobile/authorization/ui/b;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    invoke-static {v2}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->c(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignReq;->setAppId(Ljava/lang/String;)V

    .line 217
    const-string/jumbo v2, "Android"

    invoke-virtual {v1, v2}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignReq;->setPlatform(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignReq;->setUserId(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/b;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    invoke-static {v0}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->d(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignReq;->setAuthType(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 222
    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    .line 220
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignReq;->setTid(Ljava/lang/String;)V

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/b;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    invoke-static {v0}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->e(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;)Lcom/alipay/mobile/authorization/biz/AuthorizationBiz;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/authorization/biz/AuthorizationBiz;->a(Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignReq;)Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    iget-object v1, p0, Lcom/alipay/mobile/authorization/ui/b;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->dismissProgressDialog()V

    .line 230
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AuthorizationActivity"

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    throw v0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/authorization/ui/b;->a([Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignRes;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1
    check-cast p1, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignRes;

    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/b;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->dismissProgressDialog()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignRes;->getResultStatus()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignRes;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/b;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/alipay/mobileapp/biz/rpc/appauth/facade/AuthSignRes;->getAuthCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->a(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/b;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->finish()V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/b;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    invoke-static {v0}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->f(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/b;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    const-string/jumbo v1, "\u6388\u6743\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/b;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->a(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/b;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 209
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 210
    return-void
.end method
