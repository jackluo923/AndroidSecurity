.class public Lcom/squareup/okhttp/internal/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# static fields
.field private static final GATEWAY_TIMEOUT_RESPONSE:Ljava/net/CacheResponse;

.field public static final HTTP_CONTINUE:I = 0x64


# instance fields
.field private automaticallyReleaseConnectionToPool:Z

.field private cacheRequest:Ljava/net/CacheRequest;

.field private cacheResponse:Ljava/net/CacheResponse;

.field private cachedResponseBody:Ljava/io/InputStream;

.field private cachedResponseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

.field protected connection:Lcom/squareup/okhttp/Connection;

.field private connectionReleased:Z

.field protected final method:Ljava/lang/String;

.field protected final policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

.field private requestBodyOut:Ljava/io/OutputStream;

.field final requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

.field private responseBodyIn:Ljava/io/InputStream;

.field responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

.field private responseSource:Lcom/squareup/okhttp/ResponseSource;

.field private responseTransferIn:Ljava/io/InputStream;

.field protected routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

.field sentRequestMillis:J

.field private transparentGzip:Z

.field private transport:Lcom/squareup/okhttp/internal/http/Transport;

.field final uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpEngine$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpEngine;->GATEWAY_TIMEOUT_RESPONSE:Ljava/net/CacheResponse;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)V
    .locals 4
    .param p1, "policy"    # Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "requestHeaders"    # Lcom/squareup/okhttp/internal/http/RawHeaders;
    .param p4, "connection"    # Lcom/squareup/okhttp/Connection;
    .param p5, "requestBodyOut"    # Lcom/squareup/okhttp/internal/http/RetryableOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 148
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    .line 149
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->method:Ljava/lang/String;

    .line 150
    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    .line 151
    iput-object p5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    .line 154
    :try_start_0
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/Platform;->toUriLenient(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    new-instance v1, Lcom/squareup/okhttp/internal/http/RequestHeaders;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->uri:Ljava/net/URI;

    new-instance v3, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v3, p3}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>(Lcom/squareup/okhttp/internal/http/RawHeaders;)V

    invoke-direct {v1, v2, v3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;-><init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;)V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    .line 160
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDefaultUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 582
    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "agent":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "agent":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "agent":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getOriginAddress(Ljava/net/URL;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 587
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 588
    .local v0, "port":I
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "result":Ljava/lang/String;
    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->getDefaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 592
    :cond_0
    return-object v1
.end method

.method private initContentStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "transferStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseTransferIn:Ljava/io/InputStream;

    .line 444
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isContentEncodingGzip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->stripContentEncoding()V

    .line 453
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->stripContentLength()V

    .line 454
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    goto :goto_0
.end method

.method private initResponseSource()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    sget-object v5, Lcom/squareup/okhttp/ResponseSource;->NETWORK:Lcom/squareup/okhttp/ResponseSource;

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseSource:Lcom/squareup/okhttp/ResponseSource;

    .line 211
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v5, v5, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->responseCache:Lcom/squareup/okhttp/internal/http/OkResponseCache;

    if-nez v5, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v5, v5, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->responseCache:Lcom/squareup/okhttp/internal/http/OkResponseCache;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->method:Ljava/lang/String;

    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v8}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/squareup/okhttp/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/squareup/okhttp/internal/http/OkResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    .line 217
    .local v0, "candidate":Ljava/net/CacheResponse;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    .line 222
    .local v4, "responseHeadersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    .line 223
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->acceptCacheResponseType(Ljava/net/CacheResponse;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    if-nez v5, :cond_3

    .line 226
    :cond_2
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 230
    :cond_3
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/http/RawHeaders;->fromMultimap(Ljava/util/Map;Z)Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v3

    .line 231
    .local v3, "rawResponseHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    new-instance v5, Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v5, v6, v3}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;)V

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cachedResponseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 233
    .local v1, "now":J
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cachedResponseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v5, v1, v2, v6}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->chooseResponseSource(JLcom/squareup/okhttp/internal/http/RequestHeaders;)Lcom/squareup/okhttp/ResponseSource;

    move-result-object v5

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseSource:Lcom/squareup/okhttp/ResponseSource;

    .line 234
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseSource:Lcom/squareup/okhttp/ResponseSource;

    sget-object v6, Lcom/squareup/okhttp/ResponseSource;->CACHE:Lcom/squareup/okhttp/ResponseSource;

    if-ne v5, v6, :cond_4

    .line 235
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    .line 236
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cachedResponseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-direct {p0, v5, v6}, Lcom/squareup/okhttp/internal/http/HttpEngine;->setResponse(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Ljava/io/InputStream;)V

    goto :goto_0

    .line 237
    :cond_4
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseSource:Lcom/squareup/okhttp/ResponseSource;

    sget-object v6, Lcom/squareup/okhttp/ResponseSource;->CONDITIONAL_CACHE:Lcom/squareup/okhttp/ResponseSource;

    if-ne v5, v6, :cond_5

    .line 238
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    goto :goto_0

    .line 239
    :cond_5
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseSource:Lcom/squareup/okhttp/ResponseSource;

    sget-object v6, Lcom/squareup/okhttp/ResponseSource;->NETWORK:Lcom/squareup/okhttp/ResponseSource;

    if-ne v5, v6, :cond_6

    .line 240
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 242
    :cond_6
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method private maybeCache()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->responseCache:Lcom/squareup/okhttp/internal/http/OkResponseCache;

    if-nez v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isCacheable(Lcom/squareup/okhttp/internal/http/RequestHeaders;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->responseCache:Lcom/squareup/okhttp/internal/http/OkResponseCache;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getHttpConnectionToCache()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/OkResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    goto :goto_0
.end method

.method private prepareRawRequestHeaders()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v3

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequestLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->setRequestLine(Ljava/lang/String;)V

    .line 497
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 498
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-static {}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 501
    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getHost()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 502
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getOriginAddress(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->setHost(Ljava/lang/String;)V

    .line 505
    :cond_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Connection;->getHttpMinorVersion()I

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getConnection()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 507
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    const-string v4, "Keep-Alive"

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->setConnection(Ljava/lang/String;)V

    .line 510
    :cond_3
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getAcceptEncoding()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 511
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transparentGzip:Z

    .line 512
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    const-string v4, "gzip"

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->setAcceptEncoding(Ljava/lang/String;)V

    .line 515
    :cond_4
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasRequestBody()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 516
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->setContentType(Ljava/lang/String;)V

    .line 519
    :cond_5
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getIfModifiedSince()J

    move-result-wide v1

    .line 520
    .local v1, "ifModifiedSince":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_6

    .line 521
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    .line 524
    :cond_6
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v0, v3, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->cookieHandler:Ljava/net/CookieHandler;

    .line 525
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_7

    .line 526
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->addCookies(Ljava/util/Map;)V

    .line 529
    :cond_7
    return-void
.end method

.method public static requestPath(Ljava/net/URL;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 557
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "fileOnly":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 559
    const-string v0, "/"

    .line 563
    .end local v0    # "fileOnly":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 560
    .restart local v0    # "fileOnly":Ljava/lang/String;
    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private requestString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 543
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 544
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->includeAuthorityInRequestLine()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 547
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestPath(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private sendSocketRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->connect()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    if-eqz v0, :cond_1

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/Connection;->newTransport(Lcom/squareup/okhttp/internal/http/HttpEngine;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/http/Transport;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    .line 257
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasRequestBody()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/Transport;->createRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    .line 262
    :cond_2
    return-void
.end method

.method private setResponse(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "headers"    # Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .param p2, "body"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 324
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    .line 325
    if-eqz p2, :cond_1

    .line 326
    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->initContentStream(Ljava/io/InputStream;)V

    .line 328
    :cond_1
    return-void
.end method


# virtual methods
.method protected acceptCacheResponseType(Ljava/net/CacheResponse;)Z
    .locals 1
    .param p1, "cacheResponse"    # Ljava/net/CacheResponse;

    .prologue
    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method public final automaticallyReleaseConnectionToPool()V
    .locals 2

    .prologue
    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->automaticallyReleaseConnectionToPool:Z

    .line 411
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connectionReleased:Z

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/ConnectionPool;->recycle(Lcom/squareup/okhttp/Connection;)V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    .line 415
    :cond_0
    return-void
.end method

.method protected final connect()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v2, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    if-nez v2, :cond_4

    .line 270
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "uriHost":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 272
    new-instance v2, Ljava/net/UnknownHostException;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 274
    :cond_2
    const/4 v3, 0x0

    .line 275
    .local v3, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v4, 0x0

    .line 276
    .local v4, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v5, "https"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 277
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v3, v2, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 278
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v4, v2, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 280
    :cond_3
    new-instance v0, Lcom/squareup/okhttp/Address;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URI;)I

    move-result v2

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v5, v5, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->requestedProxy:Ljava/net/Proxy;

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/Address;-><init>(Ljava/lang/String;ILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;)V

    .line 282
    .local v0, "address":Lcom/squareup/okhttp/Address;
    new-instance v5, Lcom/squareup/okhttp/internal/http/RouteSelector;

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v8, v2, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->proxySelector:Ljava/net/ProxySelector;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v9, v2, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    sget-object v10, Lcom/squareup/okhttp/internal/Dns;->DEFAULT:Lcom/squareup/okhttp/internal/Dns;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getFailedRoutes()Ljava/util/Set;

    move-result-object v11

    move-object v6, v0

    invoke-direct/range {v5 .. v11}, Lcom/squareup/okhttp/internal/http/RouteSelector;-><init>(Lcom/squareup/okhttp/Address;Ljava/net/URI;Ljava/net/ProxySelector;Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/internal/Dns;Ljava/util/Set;)V

    iput-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    .line 285
    .end local v0    # "address":Lcom/squareup/okhttp/Address;
    .end local v1    # "uriHost":Ljava/lang/String;
    .end local v3    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v4    # "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    :cond_4
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/RouteSelector;->next()Lcom/squareup/okhttp/Connection;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    .line 286
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Connection;->isConnected()Z

    move-result v2

    if-nez v2, :cond_5

    .line 287
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getConnectTimeout()I

    move-result v5

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getReadTimeout()I

    move-result v6

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getTunnelConfig()Lcom/squareup/okhttp/TunnelRequest;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/squareup/okhttp/Connection;->connect(IILcom/squareup/okhttp/TunnelRequest;)V

    .line 288
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v2, v2, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v2, v5}, Lcom/squareup/okhttp/ConnectionPool;->maybeShare(Lcom/squareup/okhttp/Connection;)V

    .line 289
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getFailedRoutes()Ljava/util/Set;

    move-result-object v2

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v5}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 291
    :cond_5
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->connected(Lcom/squareup/okhttp/Connection;)V

    .line 292
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v5, v5, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->requestedProxy:Ljava/net/Proxy;

    if-eq v2, v5, :cond_0

    .line 294
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequestLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/squareup/okhttp/internal/http/RawHeaders;->setRequestLine(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected connected(Lcom/squareup/okhttp/Connection;)V
    .locals 0
    .param p1, "connection"    # Lcom/squareup/okhttp/Connection;

    .prologue
    .line 303
    return-void
.end method

.method public final getCacheResponse()Ljava/net/CacheResponse;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    return-object v0
.end method

.method public final getConnection()Lcom/squareup/okhttp/Connection;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    return-object v0
.end method

.method public final getRequestBody()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseSource:Lcom/squareup/okhttp/ResponseSource;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final getRequestHeaders()Lcom/squareup/okhttp/internal/http/RequestHeaders;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    return-object v0
.end method

.method getRequestLine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 537
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Connection;->getHttpMinorVersion()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "HTTP/1.1"

    .line 539
    .local v0, "protocol":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 537
    .end local v0    # "protocol":Ljava/lang/String;
    :cond_1
    const-string v0, "HTTP/1.0"

    goto :goto_0
.end method

.method public final getResponseBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public final getResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    return-object v0
.end method

.method protected getTunnelConfig()Lcom/squareup/okhttp/TunnelRequest;
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->uri:Ljava/net/URI;

    return-object v0
.end method

.method hasRequestBody()Z
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->method:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->method:Ljava/lang/String;

    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasResponse()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasResponseBody()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 465
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseCode()I

    move-result v0

    .line 468
    .local v0, "responseCode":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->method:Ljava/lang/String;

    const-string v4, "HEAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v1

    .line 472
    :cond_1
    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v0, v3, :cond_3

    const/16 v3, 0x130

    if-eq v0, v3, :cond_3

    move v1, v2

    .line 475
    goto :goto_0

    .line 481
    :cond_3
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getContentLength()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isChunked()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    .line 482
    goto :goto_0
.end method

.method protected includeAuthorityInRequestLine()Z
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final readResponse()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 601
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseSource:Lcom/squareup/okhttp/ResponseSource;

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->setResponseSource(Lcom/squareup/okhttp/ResponseSource;)V

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseSource:Lcom/squareup/okhttp/ResponseSource;

    if-nez v2, :cond_2

    .line 606
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "readResponse() without sendRequest()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 609
    :cond_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseSource:Lcom/squareup/okhttp/ResponseSource;

    invoke-virtual {v2}, Lcom/squareup/okhttp/ResponseSource;->requiresConnection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 613
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 614
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    instance-of v2, v2, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;

    if-eqz v2, :cond_3

    .line 615
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    check-cast v2, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;->contentLength()I

    move-result v1

    .line 616
    .local v1, "contentLength":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->setContentLength(I)V

    .line 618
    .end local v1    # "contentLength":I
    :cond_3
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/http/Transport;->writeRequestHeaders()V

    .line 621
    :cond_4
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    if-eqz v2, :cond_5

    .line 622
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 623
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    instance-of v2, v2, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;

    if-eqz v2, :cond_5

    .line 624
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    check-cast v2, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;

    invoke-interface {v3, v2}, Lcom/squareup/okhttp/internal/http/Transport;->writeRequestBody(Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)V

    .line 628
    :cond_5
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/http/Transport;->flushRequest()V

    .line 630
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/http/Transport;->readResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    .line 631
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    iget-wide v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->setLocalTimestamps(JJ)V

    .line 632
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseSource:Lcom/squareup/okhttp/ResponseSource;

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->setResponseSource(Lcom/squareup/okhttp/ResponseSource;)V

    .line 634
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseSource:Lcom/squareup/okhttp/ResponseSource;

    sget-object v3, Lcom/squareup/okhttp/ResponseSource;->CONDITIONAL_CACHE:Lcom/squareup/okhttp/ResponseSource;

    if-ne v2, v3, :cond_7

    .line 635
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cachedResponseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->validate(Lcom/squareup/okhttp/internal/http/ResponseHeaders;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 636
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->release(Z)V

    .line 637
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cachedResponseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseHeaders:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->combine(Lcom/squareup/okhttp/internal/http/ResponseHeaders;)Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    move-result-object v0

    .line 638
    .local v0, "combinedHeaders":Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-direct {p0, v0, v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->setResponse(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Ljava/io/InputStream;)V

    .line 639
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v2, v2, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->responseCache:Lcom/squareup/okhttp/internal/http/OkResponseCache;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/http/OkResponseCache;->trackConditionalCacheHit()V

    .line 640
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v2, v2, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->responseCache:Lcom/squareup/okhttp/internal/http/OkResponseCache;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getHttpConnectionToCache()Ljava/net/HttpURLConnection;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/squareup/okhttp/internal/http/OkResponseCache;->update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V

    goto/16 :goto_0

    .line 643
    .end local v0    # "combinedHeaders":Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    :cond_6
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 647
    :cond_7
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasResponseBody()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 648
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->maybeCache()V

    .line 651
    :cond_8
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    invoke-interface {v2, v3}, Lcom/squareup/okhttp/internal/http/Transport;->getTransferStream(Ljava/net/CacheRequest;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->initContentStream(Ljava/io/InputStream;)V

    goto/16 :goto_0
.end method

.method public receiveHeaders(Lcom/squareup/okhttp/internal/http/RawHeaders;)V
    .locals 3
    .param p1, "headers"    # Lcom/squareup/okhttp/internal/http/RawHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 659
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v0, v1, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->cookieHandler:Ljava/net/CookieHandler;

    .line 660
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_0

    .line 661
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->uri:Ljava/net/URI;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 663
    :cond_0
    return-void
.end method

.method public final release(Z)V
    .locals 4
    .param p1, "streamCancelled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 424
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    if-ne v0, v1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 428
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connectionReleased:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v0, :cond_2

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connectionReleased:Z

    .line 431
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->transport:Lcom/squareup/okhttp/internal/http/Transport;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseTransferIn:Ljava/io/InputStream;

    invoke-interface {v0, p1, v1, v2}, Lcom/squareup/okhttp/internal/http/Transport;->makeReusable(ZLjava/io/OutputStream;Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 434
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    .line 440
    :cond_2
    :goto_0
    return-void

    .line 435
    :cond_3
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->automaticallyReleaseConnectionToPool:Z

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/ConnectionPool;->recycle(Lcom/squareup/okhttp/Connection;)V

    .line 437
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    goto :goto_0
.end method

.method public final sendRequest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseSource:Lcom/squareup/okhttp/ResponseSource;

    if-eqz v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->prepareRawRequestHeaders()V

    .line 177
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->initResponseSource()V

    .line 178
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->responseCache:Lcom/squareup/okhttp/internal/http/OkResponseCache;

    if-eqz v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->responseCache:Lcom/squareup/okhttp/internal/http/OkResponseCache;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseSource:Lcom/squareup/okhttp/ResponseSource;

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/http/OkResponseCache;->trackResponse(Lcom/squareup/okhttp/ResponseSource;)V

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->isOnlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseSource:Lcom/squareup/okhttp/ResponseSource;

    invoke-virtual {v1}, Lcom/squareup/okhttp/ResponseSource;->requiresConnection()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 187
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseSource:Lcom/squareup/okhttp/ResponseSource;

    sget-object v2, Lcom/squareup/okhttp/ResponseSource;->CONDITIONAL_CACHE:Lcom/squareup/okhttp/ResponseSource;

    if-ne v1, v2, :cond_3

    .line 188
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 190
    :cond_3
    sget-object v1, Lcom/squareup/okhttp/ResponseSource;->CACHE:Lcom/squareup/okhttp/ResponseSource;

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseSource:Lcom/squareup/okhttp/ResponseSource;

    .line 191
    sget-object v1, Lcom/squareup/okhttp/internal/http/HttpEngine;->GATEWAY_TIMEOUT_RESPONSE:Ljava/net/CacheResponse;

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    .line 192
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v1}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->fromMultimap(Ljava/util/Map;Z)Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v0

    .line 193
    .local v0, "rawResponseHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    new-instance v1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;)V

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v2}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->setResponse(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Ljava/io/InputStream;)V

    .line 196
    .end local v0    # "rawResponseHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    :cond_4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->responseSource:Lcom/squareup/okhttp/ResponseSource;

    invoke-virtual {v1}, Lcom/squareup/okhttp/ResponseSource;->requiresConnection()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 197
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->sendSocketRequest()V

    goto :goto_0

    .line 198
    :cond_5
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/ConnectionPool;->recycle(Lcom/squareup/okhttp/Connection;)V

    .line 200
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->policy:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getFailedRoutes()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    goto :goto_0
.end method

.method public writingRequestHeaders()V
    .locals 4

    .prologue
    .line 310
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 313
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpEngine;->sentRequestMillis:J

    .line 314
    return-void
.end method
