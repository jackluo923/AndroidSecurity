.class Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$CurlLogger;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$CurlLogger;->a:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$CurlLogger;-><init>(Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$CurlLogger;->a:Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    invoke-static {v0}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->a(Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;)Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$LoggingConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$LoggingConfiguration;->a(Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$LoggingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {p1}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$LoggingConfiguration;->a(Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt$LoggingConfiguration;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
