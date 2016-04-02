.class public Lcom/alipay/mobile/command/rpc/http/ZHttpRequestRetryHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/mobile/command/util/ConfigSwitcher;->getRetryRpcTimes()I

    move-result v2

    if-lt p2, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Ljava/net/SocketException;

    if-nez v2, :cond_3

    instance-of v2, p1, Ljavax/net/ssl/SSLException;

    if-eqz v2, :cond_0

    :cond_3
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Broken pipe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "RpcProcess"

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "exception instanceof SocketException:Broken pipe"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method
