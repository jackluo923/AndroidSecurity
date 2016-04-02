.class public Lcom/alipay/mobile/security/accountmanager/service/UserInfoServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/UserInfoService;


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/UserInfoService;-><init>()V

    const-string/jumbo v0, "UserInfoServiceImpl"

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/UserInfoServiceImpl;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public queryUserInfo(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserMode;
    .locals 5

    const/4 v0, 0x0

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/security/bean/UserMode;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserMode;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/service/UserInfoServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->findUserInfo(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "UserInfoServiceImpl"

    const-string/jumbo v4, "\u7528\u6237\u4fe1\u606f\u67e5\u8be2\u5b8c\u6210"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserMode;->setUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    sget-object v0, Lcom/alipay/mobile/framework/service/ext/security/SecurityCache;->userExtInfo:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserMode;->setUserExtInfo(Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public queryphoneBindingState(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/UserInfoServiceCallBack;)V
    .locals 5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "UserInfoServiceImpl"

    const-string/jumbo v2, "\u5f00\u59cb\u67e5\u8be2\u624b\u673a\u7ed1\u5b9a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/service/UserInfoServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;->setLogonId(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;->queryBindMobile(Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->getBindMobile()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "UserInfoServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8fd4\u56de\u67e5\u8be2\u624b\u673a\u7684\u7ed1\u5b9a bindMobile="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/UserInfoServiceCallBack;->getBindMobile(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
