.class public Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/LoginService;


# instance fields
.field final a:Ljava/lang/String;

.field b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/LoginService;-><init>()V

    const-string/jumbo v0, "LoginServiceImpl"

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v0, "autoLoginRpcError"

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->c:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->e:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;ZLjava/lang/String;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    .locals 5

    iput-object p4, p0, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginService;

    if-eqz p5, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "\u672c\u6b21\u767b\u5f55\u9700\u8981\u6e05\u9664cookie"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->prepareResetCookie(Ljava/lang/Object;)V

    :goto_0
    :try_start_0
    invoke-interface {v1, p2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginService;->login(Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;)Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->processLoginResult(Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "LoginServiceImpl"

    const-string/jumbo v3, "\u672c\u6b21\u767b\u5f55\u4e0d\u9700\u8981\u6e05\u9664cookie"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "autoLoginRpcError###requestLogin"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->writeLoginLog(Ljava/lang/String;)V

    throw v0
.end method

.method private a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "tokenResult=null"

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->queryTaobaoUserList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->addTaobaoUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->addTaobaoUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "LoginServiceImpl"

    const-string/jumbo v3, "\u66f4\u65b0\u6dd8\u5b9d\u7528\u6237\u4fe1\u606f\u5931\u8d25"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getTaoBaoUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getTaoBaoUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getTaoBaoUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->deleteTaobaoUserInfo(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->addTaobaoUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static a(Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;Lcom/alipay/mobile/framework/service/ext/security/RSAService;)V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    new-instance v2, Lcom/taobao/securityjni/SecurityCheck;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/taobao/securityjni/SecurityCheck;-><init>(Landroid/content/ContextWrapper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->getSafeRSATS()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setSecTS(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/taobao/securityjni/SecurityCheck;->getCheckSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setClientDigest(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecurityCheck exception"

    invoke-virtual {p0, v1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setClientDigest(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "secTS exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setSecTS(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clientDigest exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setClientDigest(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/taobao/securityjni/StaticDataStore;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/securityjni/StaticDataStore;-><init>(Landroid/content/ContextWrapper;)V

    const-string/jumbo v1, "alipaysalt"

    invoke-virtual {v0, v1}, Lcom/taobao/securityjni/StaticDataStore;->getExtraData(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/taobao/securityjni/PkgValidityCheck;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/securityjni/PkgValidityCheck;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "alipaysalt"

    sget v3, Lcom/taobao/securityjni/PkgValidityCheck;->FLAG_DEX_FILE:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/securityjni/PkgValidityCheck;->getDexHash(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "dexTime"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "dexValue"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "dexValue"

    const-string/jumbo v1, ""

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "\u67e5\u8be2\u5f53\u524d\u7528\u6237\u8be6\u7ec6\u4fe1\u606f"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_3

    :try_start_1
    new-instance v2, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "\u672a\u67e5\u8be2\u51fa\u5f53\u524d\u767b\u5f55\u76f8\u5173\u4fe1\u606f"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "LoginServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "userLoginResult.getUserId()="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setLogonId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setUserName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getMobileNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setMobileNumber(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getIsCertified()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setIsCertified(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->isWirelessUser()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setWirelessUser(Z)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->isBindCard()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setBindCard(Z)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getCustomerType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setCustomerType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getExtResAttrs()Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "LoginServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "userLoginResult.getExtResAttrs:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const-string/jumbo v0, "realNameStatus"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setRealNamed(Ljava/lang/String;)V

    const-string/jumbo v4, "true"

    const-string/jumbo v0, "isNewUser"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setNewUser(Z)V

    const-string/jumbo v0, "havanaId"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setHavanaId(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "LoginServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "memberGrade:"

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "memberGrade"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "memberGrade"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setMemberGrade(Ljava/lang/String;)V

    const-string/jumbo v0, "walletEdition"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setWalletEdition(Ljava/lang/String;)V

    const-string/jumbo v4, "true"

    const-string/jumbo v0, "showWalletEditionSwitch"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setShowWalletEditionSwitch(Z)V

    const-string/jumbo v0, "nickName"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setNick(Ljava/lang/String;)V

    const-string/jumbo v0, "realName"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setRealName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getHeadImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setUserAvatar(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginServerTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setLoginTime(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getTaobaoSid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setTaobaoSid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getExtern_token()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setExtern_token(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setLoginToken(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setSessionId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "\u767b\u5f55\u6210\u529f\uff0ctid\u672c\u5730\u5b58\u5728\uff0c\u8bbe\u7f6e\u514d\u767b\u72b6\u6001"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setAutoLogin(Z)V

    const-string/jumbo v0, "setAutoLogin=true###getLocalTid()"

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->writeLoginLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->addOrUpdateUserLogin(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "LoginServiceImpl"

    const-string/jumbo v3, "\u540c\u6b65\u81f3\u672c\u5730\u6570\u636e\u5e93\u5b8c\u6210"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v1

    :goto_2
    return v0

    :cond_2
    :try_start_4
    const-string/jumbo v0, "getLocalTid is false"

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->writeLoginLog(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoginServiceImpl"

    const-string/jumbo v2, "\u540c\u6b65\u81f3\u672c\u5730\u6570\u636e\u5e93\u5f02\u5e38"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :cond_3
    move-object v2, v3

    goto/16 :goto_0
.end method

.method private b()Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;
    .locals 5

    new-instance v1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;

    invoke-direct {v1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setUserAgent(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "LoginServiceImpl"

    const-string/jumbo v3, "\u83b7\u53d6\u8bbe\u5907\u4fe1\u606f"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/security/tid/TidGetter;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setWalletTid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->getClientKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setWalletClientKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setClientId(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setProductId(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setProductVersion(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmScreenHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setScreenHigh(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmScreenWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setScreenWidth(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmChannels()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setChannels(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setOsVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "LoginServiceImpl"

    const-string/jumbo v3, "\u8bf7\u6c42\u767b\u5f55\u5f00\u59cb"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "LoginServiceImpl"

    const-string/jumbo v3, "\u4ece\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setMspTid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setMspClientKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setMspImei(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setMspImsi(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setVimei(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setVimsi(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "LoginServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u4ece\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/SchemeService;->getLastTagId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setSourceId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;->getCacheLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setMac(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getCellId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setCellId(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getAccuracy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLocation(Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method private c()Lcom/alipay/mobile/framework/service/ext/security/AccountService;
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    return-object v0
.end method

.method private d()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoginServiceImpl"

    const-string/jumbo v2, "\u67e5\u8be2\u672c\u5730tid\uff0c\u4e0d\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "LoginServiceImpl"

    const-string/jumbo v3, "\u67e5\u8be2\u672c\u5730tid\uff0c\u4e3a\u7a7a"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "LoginServiceImpl"

    const-string/jumbo v3, "\u67e5\u8be2\u672c\u5730tid\uff0c\u4e3a\u7a7a"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private static e()V
    .locals 6

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "LoginServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "walletTid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmClientKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;->genTid(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public static writeLoginLog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const-string/jumbo v1, "UC-ZHAQ-56"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    const-string/jumbo v1, "loginTrace"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    const-string/jumbo v2, "event"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    return-void
.end method


# virtual methods
.method public autoLogin(Lcom/alipay/mobile/framework/service/ext/security/LoginCallBack;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoginServiceImpl"

    const-string/jumbo v2, "\u5f00\u59cb\u8c03\u7528\u514d\u767b\u670d\u52a1"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoginServiceImpl"

    const-string/jumbo v2, "\u67e5\u8be2\u5f53\u524d\u767b\u5f55\u7528\u6237\u4fe1\u606f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->c()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginLogonId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1, v6}, Lcom/alipay/mobile/framework/service/ext/security/LoginCallBack;->AutoLoginResult(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "LoginServiceImpl"

    const-string/jumbo v3, "\u8c03\u7528\u670d\u52a1\u5668\u8bf7\u6c42\u767b\u5f55"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/LoginCallBack;->AutoLoginResult(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;)V

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "LoginServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_1
.end method

.method public getTime()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MMddHHmmssSSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v0

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->e()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoginServiceImpl"

    const-string/jumbo v2, "\u767b\u5f55\u670d\u52a1\u5f00\u59cb"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;-><init>()V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->b()Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginId(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "LoginServiceImpl"

    const-string/jumbo v5, "\u652f\u4ed8\u5b9d\u8d26\u6237\u767b\u5f55"

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "alipay"

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginType(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v0, "without"

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginWthPwd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    if-eqz p2, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "LoginServiceImpl"

    const-string/jumbo v6, "\u5bc6\u7801\u4e0d\u4e3a\u7a7a\uff0c\u8fdb\u884c\u8d26\u5bc6\u767b\u5f55"

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v4}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v4, "withpwd"

    invoke-virtual {v2, v4}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginWthPwd(Ljava/lang/String;)V

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "wireless"

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "withmobilepwd"

    invoke-virtual {v2, v4}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginWthPwd(Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    const-string/jumbo v4, "taobao"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v2, p4}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setTbCheckCode(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setTbCheckCodeId(Ljava/lang/String;)V

    :cond_3
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "terminalName"

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmMobileModel()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "withpwd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "withmobilepwd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a(Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;Lcom/alipay/mobile/framework/service/ext/security/RSAService;)V

    invoke-static {v4}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a(Ljava/util/Map;)V

    :cond_5
    invoke-virtual {v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "without"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v5, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const-string/jumbo v5, "gestureType"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->gestureGetUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string/jumbo v0, "0"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "apdid"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string/jumbo v5, "umidToken"

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v2, v4}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setExternParams(Ljava/util/Map;)V

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;ZLjava/lang/String;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v0

    return-object v0

    :cond_9
    const-string/jumbo v0, "wireless"

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "alipay"

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "LoginServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u8d26\u6237\u767b\u5f55\u7c7b\u578b"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginType(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "LoginServiceImpl"

    const-string/jumbo v3, "\u5bc6\u7801\u52a0\u5bc6\u5f02\u5e38"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "autoLoginRpcError###\u5bc6\u7801\u52a0\u5bc6\u5f02\u5e38"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->writeLoginLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_b
    invoke-virtual {v2, p4}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginCheckCode(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "convenient"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "1"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v0, "2"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method public loginWithPWD(Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    .locals 7

    const/4 v5, 0x0

    invoke-static {}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->e()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoginServiceImpl"

    const-string/jumbo v2, "\u8d26\u5bc6\u767b\u5f55\u670d\u52a1\u5f00\u59cb"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;-><init>()V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->b()Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;

    move-result-object v2

    iget-object v0, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->logonId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginId(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "\u652f\u4ed8\u5b9d\u8d26\u6237\u8d26\u5bc6\u767b\u5f55"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "alipay"

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginType(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->pwd:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string/jumbo v3, ""

    iget-object v4, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "LoginServiceImpl"

    const-string/jumbo v6, "\u5bc6\u7801\u4e0d\u4e3a\u7a7a\uff0c\u8fdb\u884c\u8d26\u5bc6\u767b\u5f55"

    invoke-interface {v3, v4, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->pwd:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const-string/jumbo v3, "withpwd"

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginWthPwd(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "wireless"

    iget-object v4, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "withmobilepwd"

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginWthPwd(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->checkcode:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string/jumbo v3, "taobao"

    iget-object v4, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->checkcode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setTbCheckCode(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->checkCodeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setTbCheckCodeId(Ljava/lang/String;)V

    :cond_3
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyParam;

    invoke-direct {v4}, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyParam;-><init>()V

    iget-boolean v6, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->checkSafe:Z

    invoke-virtual {v4, v6}, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyParam;->setNeedCheck(Z)V

    iget-object v6, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->securityId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyParam;->setSecurityId(Ljava/lang/String;)V

    const-string/jumbo v6, "securityPolicyParam"

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "withpwd"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "withmobilepwd"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-static {v2, v0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a(Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;Lcom/alipay/mobile/framework/service/ext/security/RSAService;)V

    invoke-static {v3}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a(Ljava/util/Map;)V

    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "apdid"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string/jumbo v0, "terminalName"

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmMobileModel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setExternParams(Ljava/util/Map;)V

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->registBindType:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;ZLjava/lang/String;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v0

    return-object v0

    :cond_7
    const-string/jumbo v0, "wireless"

    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "alipay"

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "LoginServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u8d26\u6237\u8d26\u5bc6\u767b\u5f55\u7c7b\u578b"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->loginType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginType(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "LoginServiceImpl"

    const-string/jumbo v3, "\u5bc6\u7801\u52a0\u5bc6\u5f02\u5e38"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_9
    iget-object v3, p1, Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;->checkcode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginCheckCode(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public processLoginResult(Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    .locals 11

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->c()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v1

    const/16 v0, 0x3e8

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getResultStatus()I

    move-result v3

    if-ne v0, v3, :cond_c

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "\u767b\u5f55\u8fd4\u56de\u6210\u529f"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "\u68c0\u67e5\u5e94\u7528\u662f\u5426\u6709\u65b0\u7248\u672c\u66f4\u65b0"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "\u53d1\u9001\u7248\u672c\u5347\u7ea7\u6d88\u606f"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.alipay.mobile.about.UPDATE_CLIENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "_updateInfo"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "\u767b\u5f55\u6210\u529f\uff0c\u53d1\u9001\u66f4\u65b0\u68c0\u67e5\u6d88\u606f\u5b8c\u6210"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "\u670d\u52a1\u5668\u767b\u9646\u65f6\u95f4:%s\uff0c\u767b\u9646\u7c7b\u578b:%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginServerTime:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v3, "deviceLock"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v3, "loginServerTime"

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginServerTime:Ljava/lang/String;

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v3, "without"

    invoke-virtual {p3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "loginServerTimeWithpwd"

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v4, p1, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->loginServerTime:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "\u767b\u5f55\u6210\u529f\uff0c\u5c06\u7528\u6237\u6570\u636e\u540c\u6b65\u81f3\u672c\u5730\u6570\u636e\u5e93\u4e2d"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "taobao"

    invoke-virtual {p3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;-><init>()V

    invoke-virtual {p3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->setTaoBaoUserId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->setLoginTime(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "\u7ec4\u88c5\u8fd4\u56de\u6570\u636e\u5f00\u59cb"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getBarcodePayToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setBarcodePayToken(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getCurrentProductVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setCurrentProductVersion(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getDownloadURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setDownloadURL(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getExistNewVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setExistNewVersion(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getExtern_token()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setExtern_token(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getIsCertified()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setIsCertified(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginCheckCodeImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginCheckCodeImg(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginCheckCodeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginCheckCodeUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginFlag(Z)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginServerTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginServerTime(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginToken(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setMemo(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getMobileNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setMobileNo(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getResultStatus()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setResultStatus(I)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getTaobaoSid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setTaobaoSid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getTbCheckCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setTbCheckCodeId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getTbCheckCodeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setTbCheckCodeUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setUserName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getExtResAttrs()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setExtResAttrs(Ljava/util/Map;)V

    if-eqz v0, :cond_1

    const-string/jumbo v3, "securityPolicyRes"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setSecurityPolicyRes(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "\u7ec4\u88c5\u8fd4\u56de\u6570\u636e\u5b8c\u6210"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getSecurityPolicyRes()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v3

    if-nez v3, :cond_4

    :try_start_5
    const-class v3, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobileapp/core/model/login/SecurityPolicyRes;->isNeedH5()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    :goto_3
    return-object p2

    :catch_0
    move-exception v0

    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "autoLoginRpcError###processLoginResult"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->writeLoginLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    :try_start_7
    invoke-virtual {p3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginId()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "\u7d44\u88dd\u767b\u5f55\u8fd4\u56de\u6570\u636e\u5f02\u5e38"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "autoLoginRpcError###SecurityPolicyRes"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->writeLoginLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "LoginServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a(Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;)Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "\u66f4\u65b0\u5f53\u524d\u5df2\u767b\u5f55\u7528\u6237\u72b6\u6001"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->c()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginLogonId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->c()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginState(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->c()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginUserId(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :goto_4
    if-eqz p2, :cond_7

    const/16 v0, 0x3e8

    :try_start_9
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v3

    if-ne v0, v3, :cond_7

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "\u767b\u5f55\u6210\u529f,\u53d1\u9001\u767b\u5f55\u6210\u529f\u6d88\u606f"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "withpwd"

    invoke-virtual {p3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->d:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "LoginServiceImpl"

    const-string/jumbo v6, "\u81ea\u52a8\u767b\u5f55\u6210\u529f\uff0c\u53d1\u9001\u6d88\u606f\u5f00\u59cb"

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :try_start_a
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.alipay.security.login"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "logonId"

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getLoginId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getUserId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "userId"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "com.alipay.security.withPwd"

    invoke-virtual {v5, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v8, "LoginServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "registBindType "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "registbindtype"

    invoke-virtual {v5, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    if-eqz v6, :cond_8

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    const-string/jumbo v2, "switchaccount"

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sput-boolean v0, Lcom/alipay/mobile/login/constants/LastLoginStatus;->ISSWITCHACCOUNT:Z

    sput-boolean v3, Lcom/alipay/mobile/login/constants/LastLoginStatus;->ISWITHPWD:Z

    invoke-virtual {v4, v5}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "setTaoBaoSsoFlag: true"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->setTaoBaoSsoFlag(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_6
    :goto_6
    const/4 v0, 0x1

    :try_start_b
    sput-boolean v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->LOGIN_REALSTATE:Z

    :cond_7
    if-eqz v1, :cond_b

    const-string/jumbo v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->e:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/security/authcenter/service/e;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/security/authcenter/service/e;-><init>(Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :catch_4
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_5

    :catch_5
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_a
    const-string/jumbo v0, "[0-9]{11}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "****"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    move-object v0, v1

    goto :goto_7

    :cond_c
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "LoginServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u767b\u5f55\u8fd4\u56de\u5931\u8d25"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getResultStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getMemo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setMemo(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getResultStatus()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setResultStatus(I)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getCurrentProductVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setCurrentProductVersion(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getDownloadURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setDownloadURL(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginPassword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, ""

    invoke-virtual {p3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoginServiceImpl"

    const-string/jumbo v2, "\u65e0\u9700\u6e05\u9664\u672c\u5730\u767b\u5f55\u72b6\u6001"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getResultStatus()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setResultStatus(I)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setMemo(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginCheckCodeImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginCheckCodeImg(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginCheckCodeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginCheckCodeUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getTbCheckCodeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setTbCheckCodeUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getTbCheckCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setTbCheckCodeId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->setLoginId(Ljava/lang/String;)V

    :goto_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoginServiceImpl"

    const-string/jumbo v2, "\u4fee\u6539\u5f53\u524d\u7528\u6237\u767b\u5f55\u72b6\u6001\u4e3a\u672a\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->c()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginState(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "LoginServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6e05\u9664\u672c\u5730\u7528\u6236\u514d\u767b\u72c0\u614b logonId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->updateUserAutoLoginFlagByLogonId(Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_8
.end method

.method public taobaoSsoTokenLogin(Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoginServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "token\u767b\u5f55\u670d\u52a1\u5f00\u59cb,\u8bf7\u6c42\u53c2\u6570:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->getSsoToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoginServiceImpl"

    const-string/jumbo v2, "\u6dd8\u5b9dsso token\u4e3a\u7a7a\uff0ctoken\u767b\u5f55\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v4

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->e()V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;-><init>()V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->b()Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->getSsoChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setSourceId(Ljava/lang/String;)V

    const-string/jumbo v0, "taobao"

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginType(Ljava/lang/String;)V

    const-string/jumbo v0, "withtoken"

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginWthPwd(Ljava/lang/String;)V

    new-instance v5, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;

    invoke-direct {v5}, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->getSsoToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->setSsoToken(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->getTaobaoDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->setTimeStamp(J)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->getSecSign()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->setTokenSign(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->isAutoImport()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ssoByTaoSync"

    :goto_1
    invoke-virtual {v5, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/TaobaoTokenParam;->setLoginSource(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v6, "withtoken"

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setExternParams(Ljava/util/Map;)V

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;ZLjava/lang/String;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoginServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "token\u767b\u5f55\u5b8c\u6210\uff0c\u767b\u5f55\u7ed3\u679c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "ssoByTaoAndroid"

    goto :goto_1
.end method

.method public wapTokenLogin(Lcom/alipay/mobile/framework/service/ext/security/domain/WapLoginToken;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoginServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "wap token\u767b\u5f55\u670d\u52a1\u5f00\u59cb,\u8bf7\u6c42\u53c2\u6570:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/WapLoginToken;->getInnerToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoginServiceImpl"

    const-string/jumbo v2, "wap token\u4e3a\u7a7a\uff0ctoken\u767b\u5f55\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v4

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->e()V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;-><init>()V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->b()Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;

    move-result-object v2

    const-string/jumbo v0, "withinnertoken"

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setLoginWthPwd(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "withinnertoken"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;->setExternParams(Ljava/util/Map;)V

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/authcenter/service/LoginServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginReq;ZLjava/lang/String;Z)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoginServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "token\u767b\u5f55\u5b8c\u6210\uff0c\u767b\u5f55\u7ed3\u679c:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
