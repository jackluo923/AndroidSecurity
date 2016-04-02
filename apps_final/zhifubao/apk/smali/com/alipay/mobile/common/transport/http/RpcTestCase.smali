.class public Lcom/alipay/mobile/common/transport/http/RpcTestCase;
.super Ljava/lang/Object;
.source "RpcTestCase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asynTestSimpleRpc(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "test_rpc"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/alipay/mobile/common/transport/http/RpcTestCase$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/transport/http/RpcTestCase$1;-><init>(Lcom/alipay/mobile/common/transport/http/RpcTestCase;Landroid/content/Context;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 32
    return-void
.end method

.method public testSimpleRpc(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string/jumbo v1, "https://mobilegw.alipay.com/mgw.htm"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    .line 37
    const-string/jumbo v1, "id=29&operationType=alipay.kabao.asset.fund.open.account.query&requestData=[]&ts=1427902617937&sign=e1b2e17cdbf963f23707c53efddd87ac"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setReqData([B)V

    .line 38
    const-string/jumbo v1, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setContentType(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setResetCookie(Z)V

    .line 40
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setBgRpc(Z)V

    .line 41
    const-string/jumbo v1, "id"

    const-string/jumbo v2, "29"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v1, "operationType"

    const-string/jumbo v2, "alipay.kabao.asset.fund.open.account.query"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v1, "reqDataDigest"

    const-string/jumbo v2, "12345678"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v2, "did"

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v2, "clientId"

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v2, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v2, "TRACKERID"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    const-string/jumbo v4, "actionToken"

    invoke-interface {v3, v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 48
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/common/transport/http/HttpManager;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 51
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/Response;

    .line 52
    const-string/jumbo v1, "testSimpleRpc"

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string/jumbo v1, "testSimpleRpc"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
