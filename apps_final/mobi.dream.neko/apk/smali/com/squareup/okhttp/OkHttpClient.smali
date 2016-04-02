.class public final Lcom/squareup/okhttp/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# instance fields
.field private connectionPool:Lcom/squareup/okhttp/ConnectionPool;

.field private cookieHandler:Ljava/net/CookieHandler;

.field private failedRoutes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/squareup/okhttp/Route;",
            ">;"
        }
    .end annotation
.end field

.field private followProtocolRedirects:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private proxy:Ljava/net/Proxy;

.field private proxySelector:Ljava/net/ProxySelector;

.field private responseCache:Ljava/net/ResponseCache;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->failedRoutes:Ljava/util/Set;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/OkHttpClient;->followProtocolRedirects:Z

    return-void
.end method

.method private copyWithDefaults()Lcom/squareup/okhttp/OkHttpClient;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 201
    .local v0, "result":Lcom/squareup/okhttp/OkHttpClient;
    iget-object v1, p0, Lcom/squareup/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 202
    iget-object v1, p0, Lcom/squareup/okhttp/OkHttpClient;->failedRoutes:Ljava/util/Set;

    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->failedRoutes:Ljava/util/Set;

    .line 203
    iget-object v1, p0, Lcom/squareup/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    :goto_0
    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 204
    iget-object v1, p0, Lcom/squareup/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    :goto_1
    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 205
    iget-object v1, p0, Lcom/squareup/okhttp/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/squareup/okhttp/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    :goto_2
    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    .line 206
    iget-object v1, p0, Lcom/squareup/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/squareup/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    :goto_3
    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 209
    iget-object v1, p0, Lcom/squareup/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/squareup/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    :goto_4
    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 212
    iget-object v1, p0, Lcom/squareup/okhttp/OkHttpClient;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/squareup/okhttp/OkHttpClient;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    :goto_5
    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    .line 213
    iget-boolean v1, p0, Lcom/squareup/okhttp/OkHttpClient;->followProtocolRedirects:Z

    iput-boolean v1, v0, Lcom/squareup/okhttp/OkHttpClient;->followProtocolRedirects:Z

    .line 214
    return-object v0

    .line 203
    :cond_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    goto :goto_0

    .line 204
    :cond_1
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    goto :goto_1

    .line 205
    :cond_2
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v1

    goto :goto_2

    .line 206
    :cond_3
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    goto :goto_3

    .line 209
    :cond_4
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    goto :goto_4

    .line 212
    :cond_5
    invoke-static {}, Lcom/squareup/okhttp/ConnectionPool;->getDefault()Lcom/squareup/okhttp/ConnectionPool;

    move-result-object v1

    goto :goto_5
.end method

.method private okResponseCache()Lcom/squareup/okhttp/internal/http/OkResponseCache;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    instance-of v0, v0, Lcom/squareup/okhttp/HttpResponseCache;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    check-cast v0, Lcom/squareup/okhttp/HttpResponseCache;

    iget-object v0, v0, Lcom/squareup/okhttp/HttpResponseCache;->okResponseCache:Lcom/squareup/okhttp/internal/http/OkResponseCache;

    .line 117
    :goto_0
    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Lcom/squareup/okhttp/internal/http/OkResponseCacheAdapter;

    iget-object v1, p0, Lcom/squareup/okhttp/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/http/OkResponseCacheAdapter;-><init>(Ljava/net/ResponseCache;)V

    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getConnectionPool()Lcom/squareup/okhttp/ConnectionPool;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    return-object v0
.end method

.method public getCookieHandler()Ljava/net/CookieHandler;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    return-object v0
.end method

.method public getFollowProtocolRedirects()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/squareup/okhttp/OkHttpClient;->followProtocolRedirects:Z

    return v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public getResponseCache()Ljava/net/ResponseCache;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public open(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 184
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "protocol":Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/okhttp/OkHttpClient;->copyWithDefaults()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    .line 186
    .local v0, "copy":Lcom/squareup/okhttp/OkHttpClient;
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    new-instance v2, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;->okResponseCache()Lcom/squareup/okhttp/internal/http/OkResponseCache;

    move-result-object v3

    iget-object v4, v0, Lcom/squareup/okhttp/OkHttpClient;->failedRoutes:Ljava/util/Set;

    invoke-direct {v2, p1, v0, v3, v4}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/http/OkResponseCache;Ljava/util/Set;)V

    .line 189
    :goto_0
    return-object v2

    .line 188
    :cond_0
    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    new-instance v2, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;->okResponseCache()Lcom/squareup/okhttp/internal/http/OkResponseCache;

    move-result-object v3

    iget-object v4, v0, Lcom/squareup/okhttp/OkHttpClient;->failedRoutes:Ljava/util/Set;

    invoke-direct {v2, p1, v0, v3, v4}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/http/OkResponseCache;Ljava/util/Set;)V

    goto :goto_0

    .line 191
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setConnectionPool(Lcom/squareup/okhttp/ConnectionPool;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .param p1, "connectionPool"    # Lcom/squareup/okhttp/ConnectionPool;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    .line 160
    return-object p0
.end method

.method public setCookieHandler(Ljava/net/CookieHandler;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .param p1, "cookieHandler"    # Ljava/net/CookieHandler;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 89
    return-object p0
.end method

.method public setFollowProtocolRedirects(Z)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .param p1, "followProtocolRedirects"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/squareup/okhttp/OkHttpClient;->followProtocolRedirects:Z

    .line 176
    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 145
    return-object p0
.end method

.method public setProxy(Ljava/net/Proxy;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 55
    return-object p0
.end method

.method public setProxySelector(Ljava/net/ProxySelector;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 73
    return-object p0
.end method

.method public setResponseCache(Ljava/net/ResponseCache;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .param p1, "responseCache"    # Ljava/net/ResponseCache;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    .line 104
    return-object p0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 129
    return-object p0
.end method
