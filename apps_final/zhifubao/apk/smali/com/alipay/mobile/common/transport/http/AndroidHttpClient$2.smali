.class Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "AndroidHttpClient.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;->this$0:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2$2;-><init>(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;)V

    .line 236
    return-object v0
.end method

.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    .prologue
    .line 197
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 198
    const-string/jumbo v1, "http.authscheme-registry"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    const-string/jumbo v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    const-string/jumbo v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 4

    .prologue
    .line 186
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 187
    # getter for: Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->b:Lorg/apache/http/HttpRequestInterceptor;
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->access$000()Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 188
    new-instance v1, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$CurlLogger;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;->this$0:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$CurlLogger;-><init>(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 190
    return-object v0
.end method

.method protected createRedirectHandler()Lorg/apache/http/client/RedirectHandler;
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2$1;-><init>(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;)V

    .line 225
    return-object v0
.end method
