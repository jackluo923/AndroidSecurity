.class final Lcom/alipay/pushsdk/b/a/b;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "AndroidHttpClient.java"


# direct methods
.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;B)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/alipay/pushsdk/b/a/b;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected final createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    .prologue
    .line 183
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 184
    const-string/jumbo v1, "http.authscheme-registry"

    .line 185
    invoke-virtual {p0}, Lcom/alipay/pushsdk/b/a/b;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    .line 184
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    const-string/jumbo v1, "http.cookiespec-registry"

    .line 187
    invoke-virtual {p0}, Lcom/alipay/pushsdk/b/a/b;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    .line 186
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    const-string/jumbo v1, "http.auth.credentials-provider"

    .line 189
    invoke-virtual {p0}, Lcom/alipay/pushsdk/b/a/b;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    .line 188
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    return-object v0
.end method
