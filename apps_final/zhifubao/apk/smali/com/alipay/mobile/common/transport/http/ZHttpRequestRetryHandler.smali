.class public Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "ZHttpRequestRetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 29
    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    move v0, v1

    .line 55
    :goto_0
    return v0

    .line 34
    :cond_0
    const-string/jumbo v0, "http.target_host"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 36
    check-cast v0, Ljava/lang/String;

    .line 37
    const-string/jumbo v3, "mobilegw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 38
    goto :goto_0

    .line 42
    :cond_1
    instance-of v0, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v0, :cond_2

    .line 43
    sget-object v0, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "exception instanceof NoHttpResponseException"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 44
    goto :goto_0

    .line 47
    :cond_2
    instance-of v0, p1, Ljava/net/SocketException;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/apache/http/conn/ConnectionPoolTimeoutException;

    if-eqz v0, :cond_4

    .line 51
    :cond_3
    sget-object v0, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 52
    goto :goto_0

    :cond_4
    move v0, v1

    .line 55
    goto :goto_0
.end method
