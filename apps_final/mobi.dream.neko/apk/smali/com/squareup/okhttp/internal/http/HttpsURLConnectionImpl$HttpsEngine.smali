.class public final Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;
.super Lcom/squareup/okhttp/internal/http/HttpEngine;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpsEngine"
.end annotation


# instance fields
.field private sslSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)V
    .locals 1
    .param p1, "policy"    # Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "requestHeaders"    # Lcom/squareup/okhttp/internal/http/RawHeaders;
    .param p4, "connection"    # Lcom/squareup/okhttp/Connection;
    .param p5, "requestBody"    # Lcom/squareup/okhttp/internal/http/RetryableOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-direct/range {p0 .. p5}, Lcom/squareup/okhttp/internal/http/HttpEngine;-><init>(Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)V

    .line 434
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 435
    return-void

    .line 434
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;)Ljavax/net/ssl/SSLSocket;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method


# virtual methods
.method protected acceptCacheResponseType(Ljava/net/CacheResponse;)Z
    .locals 1
    .param p1, "cacheResponse"    # Ljava/net/CacheResponse;

    .prologue
    .line 442
    instance-of v0, p1, Ljava/net/SecureCacheResponse;

    return v0
.end method

.method protected connected(Lcom/squareup/okhttp/Connection;)V
    .locals 1
    .param p1, "connection"    # Lcom/squareup/okhttp/Connection;

    .prologue
    .line 438
    invoke-virtual {p1}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 439
    return-void
.end method

.method protected getTunnelConfig()Lcom/squareup/okhttp/TunnelRequest;
    .locals 6

    .prologue
    .line 451
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "userAgent":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 453
    invoke-static {}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 456
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 457
    .local v0, "url":Ljava/net/URL;
    new-instance v2, Lcom/squareup/okhttp/TunnelRequest;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getProxyAuthorization()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/squareup/okhttp/TunnelRequest;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method protected includeAuthorityInRequestLine()Z
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method
