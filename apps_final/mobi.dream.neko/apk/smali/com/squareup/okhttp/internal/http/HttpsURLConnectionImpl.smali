.class public final Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$1;,
        Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;,
        Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;
    }
.end annotation


# instance fields
.field private final delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/http/OkResponseCache;Ljava/util/Set;)V
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p3, "responseCache"    # Lcom/squareup/okhttp/internal/http/OkResponseCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/squareup/okhttp/OkHttpClient;",
            "Lcom/squareup/okhttp/internal/http/OkResponseCache;",
            "Ljava/util/Set",
            "<",
            "Lcom/squareup/okhttp/Route;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p4, "failedRoutes":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/okhttp/Route;>;"
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 53
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;Ljava/net/URL;Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/http/OkResponseCache;Ljava/util/Set;Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$1;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    .line 54
    return-void
.end method

.method private getSslSocket()Ljavax/net/ssl/SSLSocket;
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-wide v0, v0, Lcom/squareup/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    instance-of v0, v0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    check-cast v0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;

    # getter for: Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;->access$100(Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->connected:Z

    .line 179
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->connect()V

    .line 180
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->disconnect()V

    .line 134
    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSecureCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 58
    .local v0, "cacheResponse":Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    .line 65
    :goto_0
    return-object v2

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->getSslSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    .line 62
    .local v1, "sslSocket":Ljavax/net/ssl/SSLSocket;
    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 65
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "types"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 265
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getHttpEngine()Lcom/squareup/okhttp/internal/http/HttpEngine;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHttpEngine()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 69
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSecureCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 70
    .local v0, "cacheResponse":Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/cert/Certificate;

    .line 78
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->getSslSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    .line 75
    .local v2, "sslSocket":Ljavax/net/ssl/SSLSocket;
    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    goto :goto_0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 3

    .prologue
    .line 107
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSecureCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 108
    .local v0, "cacheResponse":Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v2

    .line 115
    :goto_0
    return-object v2

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->getSslSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    .line 112
    .local v1, "sslSocket":Ljavax/net/ssl/SSLSocket;
    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v2

    goto :goto_0

    .line 115
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSecureCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 96
    .local v0, "cacheResponse":Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v2

    .line 103
    :goto_0
    return-object v2

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->getSslSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    .line 100
    .local v1, "sslSocket":Ljavax/net/ssl/SSLSocket;
    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v2

    goto :goto_0

    .line 103
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSecureCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 83
    .local v0, "cacheResponse":Ljava/net/SecureCacheResponse;
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;

    move-result-object v1

    .line 85
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/cert/Certificate;

    .line 91
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->getSslSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    .line 88
    .local v2, "sslSocket":Ljavax/net/ssl/SSLSocket;
    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    goto :goto_0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 320
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setAllowUserInteraction(Z)V

    .line 321
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1
    .param p1, "chunkLength"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setChunkedStreamingMode(I)V

    .line 386
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setConnectTimeout(I)V

    .line 356
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 325
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDefaultUseCaches(Z)V

    .line 326
    return-void
.end method

.method public setDoInput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 330
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDoInput(Z)V

    .line 331
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 335
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDoOutput(Z)V

    .line 336
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1
    .param p1, "contentLength"    # I

    .prologue
    .line 380
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setFixedLengthStreamingMode(I)V

    .line 381
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iput-object p1, v0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 390
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1
    .param p1, "newValue"    # J

    .prologue
    .line 340
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setIfModifiedSince(J)V

    .line 341
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1
    .param p1, "followRedirects"    # Z

    .prologue
    .line 173
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setInstanceFollowRedirects(Z)V

    .line 174
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setReadTimeout(I)V

    .line 366
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setRequestMethod(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iput-object p1, v0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 398
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 350
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setUseCaches(Z)V

    .line 351
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->delegate:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->usingProxy()Z

    move-result v0

    return v0
.end method
