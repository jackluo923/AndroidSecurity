.class final Lcom/alipay/mobile/security/authcenter/service/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/service/a;->a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/a;->a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;

    # invokes: Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;
    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$0(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setClientKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImei(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setTid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimei(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimsi(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/Tid;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/a;->a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$1(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v2

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$2()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u901a\u8fc7tid\u5411\u670d\u52a1\u5668\u8bf7\u6c42\u83b7\u53d6\u7528\u6237\u5217\u8868"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/a;->a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;

    # getter for: Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$3(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v3, Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;->importMspAccount(Lcom/alipay/mobilesecurity/core/model/Tid;Lcom/alipay/mobilesecurity/core/model/Tid;)Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$2()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u901a\u8fc7tid\u5411\u670d\u52a1\u5668\u8bf7\u6c42\u83b7\u53d6\u7528\u6237\u5217\u8868\u6210\u529f\u8fd4\u56de"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/a;->a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/service/a;->a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->getUserListFromResult(Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$4(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/a;->a:Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$5(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)V

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->access$2()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u901a\u8fc7tid\u5411\u670d\u52a1\u5668\u8bf7\u6c42\u83b7\u53d6\u7528\u6237\u5217\u8868\u8fd4\u56de\u5f02\u5e38  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;->getResultCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
