.class public Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;
    }
.end annotation


# static fields
.field static final HTTP_TEMP_REDIRECT:I = 0x133

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final MAX_REPLAY_BUFFER_LENGTH:I = 0x2000


# instance fields
.field final connectionPool:Lcom/squareup/okhttp/ConnectionPool;

.field final cookieHandler:Ljava/net/CookieHandler;

.field final failedRoutes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/squareup/okhttp/Route;",
            ">;"
        }
    .end annotation
.end field

.field private faultRecoveringRequestBody:Lcom/squareup/okhttp/internal/FaultRecoveringOutputStream;

.field private final followProtocolRedirects:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field protected httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

.field protected httpEngineFailure:Ljava/io/IOException;

.field final proxySelector:Ljava/net/ProxySelector;

.field private final rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

.field private redirectionCount:I

.field final requestedProxy:Ljava/net/Proxy;

.field final responseCache:Lcom/squareup/okhttp/internal/http/OkResponseCache;

.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/http/OkResponseCache;Ljava/util/Set;)V
    .locals 1
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
    .line 107
    .local p4, "failedRoutes":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/okhttp/Route;>;"
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 97
    new-instance v0, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    .line 108
    invoke-virtual {p2}, Lcom/squareup/okhttp/OkHttpClient;->getFollowProtocolRedirects()Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->followProtocolRedirects:Z

    .line 109
    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->failedRoutes:Ljava/util/Set;

    .line 110
    invoke-virtual {p2}, Lcom/squareup/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->requestedProxy:Ljava/net/Proxy;

    .line 111
    invoke-virtual {p2}, Lcom/squareup/okhttp/OkHttpClient;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->proxySelector:Ljava/net/ProxySelector;

    .line 112
    invoke-virtual {p2}, Lcom/squareup/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->cookieHandler:Ljava/net/CookieHandler;

    .line 113
    invoke-virtual {p2}, Lcom/squareup/okhttp/OkHttpClient;->getConnectionPool()Lcom/squareup/okhttp/ConnectionPool;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connectionPool:Lcom/squareup/okhttp/ConnectionPool;

    .line 114
    invoke-virtual {p2}, Lcom/squareup/okhttp/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 115
    invoke-virtual {p2}, Lcom/squareup/okhttp/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 116
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->responseCache:Lcom/squareup/okhttp/internal/http/OkResponseCache;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;Ljava/io/IOException;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;
    .param p1, "x1"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->handleFailure(Ljava/io/IOException;)Z

    move-result v0

    return v0
.end method

.method private execute(Z)Z
    .locals 2
    .param p1, "readResponse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->sendRequest()V

    .line 384
    if-eqz p1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_0
    const/4 v1, 0x1

    .line 390
    :goto_0
    return v1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->handleFailure(Ljava/io/IOException;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    const/4 v1, 0x0

    goto :goto_0

    .line 392
    :cond_1
    throw v0
.end method

.method private getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->initHttpEngine()V

    .line 329
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 341
    :goto_0
    return-object v4

    .line 334
    :cond_0
    :goto_1
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->execute(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->processResponseHeaders()Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    move-result-object v2

    .line 339
    .local v2, "retry":Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;
    sget-object v4, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    if-ne v2, v4, :cond_1

    .line 340
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->automaticallyReleaseConnectionToPool()V

    .line 341
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    goto :goto_0

    .line 345
    :cond_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 346
    .local v3, "retryMethod":Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 351
    .local v0, "requestBody":Ljava/io/OutputStream;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v1

    .line 352
    .local v1, "responseCode":I
    const/16 v4, 0x12c

    if-eq v1, v4, :cond_2

    const/16 v4, 0x12d

    if-eq v1, v4, :cond_2

    const/16 v4, 0x12e

    if-eq v1, v4, :cond_2

    const/16 v4, 0x12f

    if-ne v1, v4, :cond_3

    .line 356
    :cond_2
    const-string v3, "GET"

    .line 357
    const/4 v0, 0x0

    .line 360
    :cond_3
    if-eqz v0, :cond_4

    instance-of v4, v0, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;

    if-nez v4, :cond_4

    .line 361
    new-instance v4, Ljava/net/HttpRetryException;

    const-string v5, "Cannot retry streamed HTTP body"

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseCode()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 365
    :cond_4
    sget-object v4, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    if-ne v2, v4, :cond_5

    .line 366
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->automaticallyReleaseConnectionToPool()V

    .line 369
    :cond_5
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->release(Z)V

    .line 371
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getConnection()Lcom/squareup/okhttp/Connection;

    move-result-object v5

    check-cast v0, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;

    .end local v0    # "requestBody":Ljava/io/OutputStream;
    invoke-direct {p0, v3, v4, v5, v0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    goto :goto_1
.end method

.method private handleFailure(Ljava/io/IOException;)Z
    .locals 8
    .param p1, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 403
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v3, v7, Lcom/squareup/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    .line 404
    .local v3, "routeSelector":Lcom/squareup/okhttp/internal/http/RouteSelector;
    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v7, v7, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v7, :cond_0

    .line 405
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v7, v7, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v3, v7, p1}, Lcom/squareup/okhttp/internal/http/RouteSelector;->connectFailed(Lcom/squareup/okhttp/Connection;Ljava/io/IOException;)V

    .line 408
    :cond_0
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v7}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v1

    .line 409
    .local v1, "requestBody":Ljava/io/OutputStream;
    if-eqz v1, :cond_1

    instance-of v7, v1, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->faultRecoveringRequestBody:Lcom/squareup/okhttp/internal/FaultRecoveringOutputStream;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->faultRecoveringRequestBody:Lcom/squareup/okhttp/internal/FaultRecoveringOutputStream;

    invoke-virtual {v7}, Lcom/squareup/okhttp/internal/FaultRecoveringOutputStream;->isRecoverable()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_1
    move v0, v6

    .line 412
    .local v0, "canRetryRequestBody":Z
    :goto_0
    if-nez v3, :cond_2

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v7, v7, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v7, :cond_4

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->isRecoverable(Ljava/io/IOException;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v0, :cond_6

    .line 416
    :cond_4
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    move v4, v5

    .line 430
    .end local v1    # "requestBody":Ljava/io/OutputStream;
    :goto_1
    return v4

    .end local v0    # "canRetryRequestBody":Z
    .restart local v1    # "requestBody":Ljava/io/OutputStream;
    :cond_5
    move v0, v5

    .line 409
    goto :goto_0

    .line 420
    .restart local v0    # "canRetryRequestBody":Z
    :cond_6
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/internal/http/HttpEngine;->release(Z)V

    .line 421
    instance-of v5, v1, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;

    if-eqz v5, :cond_8

    check-cast v1, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;

    .end local v1    # "requestBody":Ljava/io/OutputStream;
    move-object v2, v1

    .line 424
    .local v2, "retryableOutputStream":Lcom/squareup/okhttp/internal/http/RetryableOutputStream;
    :goto_2
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {p0, v5, v7, v4, v2}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 425
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iput-object v3, v4, Lcom/squareup/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    .line 426
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->faultRecoveringRequestBody:Lcom/squareup/okhttp/internal/FaultRecoveringOutputStream;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->faultRecoveringRequestBody:Lcom/squareup/okhttp/internal/FaultRecoveringOutputStream;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/FaultRecoveringOutputStream;->isRecoverable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 427
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->sendRequest()V

    .line 428
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->faultRecoveringRequestBody:Lcom/squareup/okhttp/internal/FaultRecoveringOutputStream;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/FaultRecoveringOutputStream;->replaceStream(Ljava/io/OutputStream;)V

    :cond_7
    move v4, v6

    .line 430
    goto :goto_1

    .end local v2    # "retryableOutputStream":Lcom/squareup/okhttp/internal/http/RetryableOutputStream;
    .restart local v1    # "requestBody":Ljava/io/OutputStream;
    :cond_8
    move-object v2, v4

    .line 421
    goto :goto_2
.end method

.method private initHttpEngine()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    throw v1

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    if-eqz v1, :cond_1

    .line 303
    :goto_0
    return-void

    .line 287
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connected:Z

    .line 289
    :try_start_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->doOutput:Z

    if-eqz v1, :cond_2

    .line 290
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    const-string v1, "POST"

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 298
    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 301
    throw v0

    .line 293
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v2, "PUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 295
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not support writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private isRecoverable(Ljava/io/IOException;)Z
    .locals 5
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 436
    instance-of v4, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/CertificateException;

    if-eqz v4, :cond_0

    move v1, v2

    .line 438
    .local v1, "sslFailure":Z
    :goto_0
    instance-of v0, p1, Ljava/net/ProtocolException;

    .line 439
    .local v0, "protocolFailure":Z
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    .end local v0    # "protocolFailure":Z
    .end local v1    # "sslFailure":Z
    :cond_0
    move v1, v3

    .line 436
    goto :goto_0

    .restart local v0    # "protocolFailure":Z
    .restart local v1    # "sslFailure":Z
    :cond_1
    move v2, v3

    .line 439
    goto :goto_1
.end method

.method private newHttpEngine(Ljava/lang/String;Lcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)Lcom/squareup/okhttp/internal/http/HttpEngine;
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "requestHeaders"    # Lcom/squareup/okhttp/internal/http/RawHeaders;
    .param p3, "connection"    # Lcom/squareup/okhttp/Connection;
    .param p4, "requestBody"    # Lcom/squareup/okhttp/internal/http/RetryableOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;-><init>(Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)V

    .line 314
    :goto_0
    return-object v0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;-><init>(Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)V

    goto :goto_0

    .line 317
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private processResponseHeaders()Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v8, v8, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v8, v8, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v8}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v8

    invoke-virtual {v8}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v7

    .line 461
    .local v7, "selectedProxy":Ljava/net/Proxy;
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v3

    .line 462
    .local v3, "responseCode":I
    sparse-switch v3, :sswitch_data_0

    .line 511
    sget-object v8, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    :goto_1
    return-object v8

    .line 458
    .end local v3    # "responseCode":I
    .end local v7    # "selectedProxy":Ljava/net/Proxy;
    :cond_0
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->requestedProxy:Ljava/net/Proxy;

    goto :goto_0

    .line 464
    .restart local v3    # "responseCode":I
    .restart local v7    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_0
    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v8, v9, :cond_1

    .line 465
    new-instance v8, Ljava/net/ProtocolException;

    const-string v9, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 469
    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v8

    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v9}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    move-result-object v9

    invoke-virtual {v9}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v9

    iget-object v10, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-static {v8, v9, v10, v7, v11}, Lcom/squareup/okhttp/internal/http/HttpAuthenticator;->processAuthHeader(ILcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/internal/http/RawHeaders;Ljava/net/Proxy;Ljava/net/URL;)Z

    move-result v0

    .line 471
    .local v0, "credentialsFound":Z
    if-eqz v0, :cond_2

    sget-object v8, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto :goto_1

    :cond_2
    sget-object v8, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto :goto_1

    .line 478
    .end local v0    # "credentialsFound":Z
    :sswitch_2
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getInstanceFollowRedirects()Z

    move-result v8

    if-nez v8, :cond_3

    .line 479
    sget-object v8, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto :goto_1

    .line 481
    :cond_3
    iget v8, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->redirectionCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->redirectionCount:I

    const/16 v9, 0x14

    if-le v8, v9, :cond_4

    .line 482
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Too many redirects: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->redirectionCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 484
    :cond_4
    const/16 v8, 0x133

    if-ne v3, v8, :cond_5

    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v9, "HEAD"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 487
    sget-object v8, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto :goto_1

    .line 489
    :cond_5
    const-string v8, "Location"

    invoke-virtual {p0, v8}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "location":Ljava/lang/String;
    if-nez v1, :cond_6

    .line 491
    sget-object v8, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1

    .line 493
    :cond_6
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 494
    .local v2, "previousUrl":Ljava/net/URL;
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v2, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 495
    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    const-string v9, "https"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 496
    sget-object v8, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1

    .line 498
    :cond_7
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 499
    .local v6, "sameProtocol":Z
    if-nez v6, :cond_8

    iget-boolean v8, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->followProtocolRedirects:Z

    if-nez v8, :cond_8

    .line 500
    sget-object v8, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1

    .line 502
    :cond_8
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 503
    .local v4, "sameHost":Z
    invoke-static {v2}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v8

    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-static {v9}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v9

    if-ne v8, v9, :cond_9

    const/4 v5, 0x1

    .line 504
    .local v5, "samePort":Z
    :goto_2
    if-eqz v4, :cond_a

    if-eqz v5, :cond_a

    if-eqz v6, :cond_a

    .line 505
    sget-object v8, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1

    .line 503
    .end local v5    # "samePort":Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    .line 507
    .restart local v5    # "samePort":Z
    :cond_a
    sget-object v8, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1

    .line 462
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x133 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_0
    if-nez p1, :cond_1

    .line 552
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method public final connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->initHttpEngine()V

    .line 127
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->execute(Z)Z

    move-result v0

    .line 128
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 129
    return-void
.end method

.method public final disconnect()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->release(Z)V

    .line 144
    :cond_1
    return-void
.end method

.method final getChunkLength()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->chunkLength:I

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 152
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v1

    .line 153
    .local v1, "response":Lcom/squareup/okhttp/internal/http/HttpEngine;
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasResponseBody()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_0

    .line 154
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 158
    .end local v1    # "response":Lcom/squareup/okhttp/internal/http/HttpEngine;
    :cond_0
    :goto_0
    return-object v2

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method getFailedRoutes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/squareup/okhttp/Route;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->failedRoutes:Ljava/util/Set;

    return-object v0
.end method

.method final getFixedContentLength()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->fixedContentLength:I

    return v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 168
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 170
    :goto_0
    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 181
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v1

    .line 182
    .local v1, "rawHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    if-nez p1, :cond_0

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v2

    .line 184
    .end local v1    # "rawHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    :goto_0
    return-object v2

    .line 182
    .restart local v1    # "rawHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    :cond_0
    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 183
    .end local v1    # "rawHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 190
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 192
    :goto_0
    return-object v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 3
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
    .line 198
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 200
    :goto_0
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHttpConnectionToCache()Ljava/net/HttpURLConnection;
    .locals 0

    .prologue
    .line 306
    return-object p0
.end method

.method public getHttpEngine()Lcom/squareup/okhttp/internal/http/HttpEngine;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->doInput:Z

    if-nez v2, :cond_0

    .line 214
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "This protocol does not support input"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v0

    .line 223
    .local v0, "response":Lcom/squareup/okhttp/internal/http/HttpEngine;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_1

    .line 224
    new-instance v2, Ljava/io/FileNotFoundException;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_1
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;

    move-result-object v1

    .line 228
    .local v1, "result":Ljava/io/InputStream;
    if-nez v1, :cond_2

    .line 229
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No response body exists; responseCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :cond_2
    return-object v1
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connect()V

    .line 237
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 238
    .local v0, "out":Ljava/io/OutputStream;
    if-nez v0, :cond_0

    .line 239
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method does not support a request body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "cannot write request body after response has been read"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->faultRecoveringRequestBody:Lcom/squareup/okhttp/internal/FaultRecoveringOutputStream;

    if-nez v1, :cond_2

    .line 245
    new-instance v1, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$1;

    const/16 v2, 0x2000

    invoke-direct {v1, p0, v2, v0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$1;-><init>(Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;ILjava/io/OutputStream;)V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->faultRecoveringRequestBody:Lcom/squareup/okhttp/internal/FaultRecoveringOutputStream;

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->faultRecoveringRequestBody:Lcom/squareup/okhttp/internal/FaultRecoveringOutputStream;

    return-object v1
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "hostName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v1

    .line 265
    .local v1, "hostPort":I
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->requestedProxy:Ljava/net/Proxy;

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 267
    .local v2, "proxyAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 270
    .end local v2    # "proxyAddress":Ljava/net/InetSocketAddress;
    :cond_0
    new-instance v3, Ljava/net/SocketPermission;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "connect, resolve"

    invoke-direct {v3, v4, v5}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 2
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
    .line 205
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseCode()I

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
    .line 530
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 539
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_0
    if-nez p1, :cond_1

    .line 542
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method public final usingProxy()Z
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->requestedProxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->requestedProxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
