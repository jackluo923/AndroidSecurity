.class public Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;
.super Ljava/lang/Object;
.source "FetchConfigAfterLogin.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "FetchConfigAfterLogin"

    sput-object v0, Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static a()Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;->b:Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;->b:Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;

    invoke-direct {v0}, Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;-><init>()V

    sput-object v0, Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;->b:Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;->b:Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-static {v2}, Lcom/alipay/mobile/base/util/ConfigUtilBiz;->a(Z)V

    sget-object v1, Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;->a:Ljava/lang/String;

    const-class v1, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq$Builder;

    invoke-direct {v1}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq$Builder;->isQueryFacePaySwitch(Ljava/lang/Boolean;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq$Builder;->build()Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;->getInitArgsPB(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ConfigFetch"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "config fetched "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->success:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/base/util/ConfigUtilBiz;->a(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/base/util/ConfigUtilBiz;->a(Z)V

    sget-object v0, Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;->a:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/alipay/mobile/base/util/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/base/util/a;-><init>(Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method
