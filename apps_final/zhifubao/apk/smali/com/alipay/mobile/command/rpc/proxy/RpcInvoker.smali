.class public Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicLong;

.field private b:Lcom/alipay/mobile/command/rpc/serialize/Serializer;

.field private c:Lcom/alipay/mobile/command/rpc/proxy/Config;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/command/rpc/serialize/Serializer;Lcom/alipay/mobile/command/rpc/proxy/Config;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;->b:Lcom/alipay/mobile/command/rpc/serialize/Serializer;

    iput-object p2, p0, Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;->c:Lcom/alipay/mobile/command/rpc/proxy/Config;

    return-void
.end method

.method private a([Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "operationType"

    invoke-direct {v0, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;->b:Lcom/alipay/mobile/command/rpc/serialize/Serializer;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/command/rpc/serialize/Serializer;->encodeData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v3, "requestData"

    if-nez p1, :cond_0

    const-string/jumbo v0, "[]"

    :cond_0
    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/command/model/HttpUrlRequest;

    iget-object v2, p0, Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;->c:Lcom/alipay/mobile/command/rpc/proxy/Config;

    invoke-interface {v2}, Lcom/alipay/mobile/command/rpc/proxy/Config;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/command/model/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->setReqData(Ljava/util/ArrayList;)V

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v2, "did"

    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getmDid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v2, "operationType"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    const-string/jumbo v1, "rpc_invoke"

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "RPC start request:"

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;->c:Lcom/alipay/mobile/command/rpc/proxy/Config;

    invoke-interface {v1}, Lcom/alipay/mobile/command/rpc/proxy/Config;->getTransport()Lcom/alipay/mobile/command/rpc/http/Transport;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/command/rpc/http/Transport;->execute(Lcom/alipay/mobile/command/model/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/Response;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/command/util/exception/RpcException;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RPC end response is null"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/command/util/exception/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/mobile/command/util/exception/RpcException;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RPC end  InterruptedException"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/command/util/exception/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/Response;->getResData()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v0, "rpc_invoke"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "RPC end response:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    new-instance v1, Lcom/alipay/mobile/command/util/exception/RpcException;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/util/exception/HttpException;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/command/util/exception/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/command/util/exception/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v0, "RpcProcess"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "exe Error."

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v0, Lcom/alipay/mobile/command/util/exception/RpcException;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RPC end  ExecutionException"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/command/util/exception/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v1, "can\'t in main thread call rpc ."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-class v0, Lcom/alipay/mobile/command/rpc/proxy/OperationType;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/rpc/proxy/OperationType;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "OperationType must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v0}, Lcom/alipay/mobile/command/rpc/proxy/OperationType;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    :try_start_0
    invoke-direct {p0, p3, v1, v2, v3}, Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;->a([Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/command/rpc/proxy/RpcInvoker;->b:Lcom/alipay/mobile/command/rpc/serialize/Serializer;

    invoke-interface {v3, v2, v0}, Lcom/alipay/mobile/command/rpc/serialize/Serializer;->deCodeData(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alipay/mobile/command/util/exception/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/command/util/exception/RpcException;->setOperationType(Ljava/lang/String;)V

    const-string/jumbo v2, "rpc_invoke"

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "RPC end."

    aput-object v4, v3, v5

    invoke-static {v2, v0, v3}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    const-string/jumbo v0, "rpc_invoke"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "RPC finish: operationTypeValue="

    aput-object v3, v2, v5

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
