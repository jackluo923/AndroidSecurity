.class final Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;
.super Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HttpUrlConnectionDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;Ljava/net/URL;Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/http/OkResponseCache;Ljava/util/Set;)V
    .locals 0
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "client"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p4, "responseCache"    # Lcom/squareup/okhttp/internal/http/OkResponseCache;
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
    .line 406
    .local p5, "failedRoutes":Ljava/util/Set;, "Ljava/util/Set<Lcom/squareup/okhttp/Route;>;"
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->this$0:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;

    .line 407
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/http/OkResponseCache;Ljava/util/Set;)V

    .line 408
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;Ljava/net/URL;Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/http/OkResponseCache;Ljava/util/Set;Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;
    .param p2, "x1"    # Ljava/net/URL;
    .param p3, "x2"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p4, "x3"    # Lcom/squareup/okhttp/internal/http/OkResponseCache;
    .param p5, "x4"    # Ljava/util/Set;
    .param p6, "x5"    # Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$1;

    .prologue
    .line 404
    invoke-direct/range {p0 .. p5}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;Ljava/net/URL;Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/http/OkResponseCache;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method protected getHttpConnectionToCache()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->this$0:Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;

    return-object v0
.end method

.method public getSecureCacheResponse()Ljava/net/SecureCacheResponse;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    instance-of v0, v0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpsEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getCacheResponse()Ljava/net/CacheResponse;

    move-result-object v0

    check-cast v0, Ljava/net/SecureCacheResponse;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
