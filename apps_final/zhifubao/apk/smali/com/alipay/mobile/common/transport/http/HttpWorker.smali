.class public Lcom/alipay/mobile/common/transport/http/HttpWorker;
.super Ljava/lang/Object;
.source "HttpWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/alipay/mobile/common/transport/Response;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lorg/apache/http/client/HttpRequestRetryHandler;

.field private static s:B


# instance fields
.field private b:Lorg/apache/http/client/methods/HttpUriRequest;

.field private c:Lorg/apache/http/protocol/HttpContext;

.field private d:Lorg/apache/http/client/CookieStore;

.field private e:Landroid/webkit/CookieManager;

.field private f:Lorg/apache/http/entity/AbstractHttpEntity;

.field private g:Lorg/apache/http/HttpHost;

.field private h:Ljava/net/URL;

.field private i:I

.field private j:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

.field protected mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

.field protected mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

.field mUrl:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:Ljava/net/ProxySelector;

.field private q:B

.field private r:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a:Lorg/apache/http/client/HttpRequestRetryHandler;

    .line 220
    const/4 v0, -0x1

    sput-byte v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->s:B

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    .line 140
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d:Lorg/apache/http/client/CookieStore;

    .line 170
    iput v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i:I

    .line 177
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getInstance()Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->j:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    .line 183
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->k:Z

    .line 188
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->l:Z

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:Ljava/lang/String;

    .line 201
    new-instance v0, Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 206
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->o:J

    .line 212
    iput-byte v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:B

    .line 215
    iput-byte v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->r:B

    .line 234
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    .line 236
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->context:Landroid/content/Context;

    .line 238
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->p:Ljava/net/ProxySelector;

    .line 239
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1391
    .line 1393
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->j:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCache()Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->getSerializable(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Serializable;
    :try_end_0
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1394
    :try_start_1
    instance-of v1, v2, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    if-eqz v1, :cond_0

    .line 1395
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    move-object v1, v0

    .line 1396
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->getValue()[B

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpWorker$DesKey;->get()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/security/Des;->decrypt([BLjava/lang/String;)[B

    move-result-object v4

    .line 1397
    if-nez v4, :cond_1

    .line 1399
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b(Ljava/lang/String;)V

    move-object v2, v3

    .line 1408
    :cond_0
    :goto_0
    return-object v2

    .line 1402
    :cond_1
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->setValue([B)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1405
    :catch_0
    move-exception v1

    .line 1406
    :goto_1
    const-string/jumbo v3, "HttpWorker"

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1405
    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 592
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    .line 1037
    if-nez v0, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1041
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1042
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 584
    const-string/jumbo v0, "HttpWorker"

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 585
    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 818
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    .line 819
    const-string/jumbo v2, "rpcVersion"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 820
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "2"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    const-string/jumbo v0, "Result-Status"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 823
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "8001"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    const/16 v2, 0x130

    const-string/jumbo v3, "Not Modified"

    invoke-interface {p1, v0, v2, v3}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 826
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    const-string/jumbo v3, "print headers:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    .line 833
    array-length v4, v3

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 834
    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 836
    :cond_1
    const-string/jumbo v1, "HttpWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Illegal response. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lorg/apache/http/params/HttpParams;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 800
    const-string/jumbo v0, "http.route.default-proxy"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 801
    invoke-static {v1}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 802
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->r:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 803
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:B

    .line 805
    :cond_0
    return-void
.end method

.method private a(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V
    .locals 3

    .prologue
    .line 808
    if-eqz p2, :cond_1

    const-string/jumbo v0, "PROXY"

    const-string/jumbo v1, "T"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TARGET_HOST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :goto_0
    const-string/jumbo v0, "http.route.default-proxy"

    invoke-interface {p1, v0, p2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 810
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->p:Ljava/net/ProxySelector;

    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 811
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->r:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 812
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:B

    .line 814
    :cond_0
    return-void

    .line 808
    :cond_1
    const-string/jumbo v0, "PROXY"

    const-string/jumbo v1, "F"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()Lorg/apache/http/HttpResponse;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 649
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->getInstance()Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;

    move-result-object v0

    const-string/jumbo v3, "rpc"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string/jumbo v7, "id"

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getInvokeStartTimeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/alipay/mobile/common/cache/mem/lru/LruMemCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 652
    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c()Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 653
    if-eqz v0, :cond_3

    .line 671
    :goto_1
    return-object v0

    .line 649
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->o:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "HttpWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "recordStalledTime exception. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 656
    :catch_1
    move-exception v0

    .line 657
    const-string/jumbo v3, "HttpWorker"

    new-instance v5, Lcom/alipay/mobile/common/transport/ext/ExtTransportException;

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alipay/mobile/common/transport/ext/ExtTransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3, v5}, Lcom/alipay/mobile/common/transport/utils/MonitorErrorLogHelper;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 659
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v3

    sget-object v5, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->NO_DOWN_HTTPS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)Ljava/lang/String;

    move-result-object v3

    .line 662
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 663
    const-string/jumbo v1, "HttpWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8fde\u63a5\u5931\u8d25,\u4e0d\u4f7f\u7528Https\u8fdb\u884c\u91cd\u8bd5: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    throw v0

    .line 667
    :cond_2
    const-string/jumbo v3, "HttpWorker"

    const-string/jumbo v5, "\u6269\u5c55\u4f20\u8f93\u6a21\u5757\u8fde\u63a5\u5931\u8d25,\u4f7f\u7528Https\u8fdb\u884c\u91cd\u8bd5"

    invoke-static {v3, v5, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 668
    const-string/jumbo v0, "DOWN"

    const-string/jumbo v3, "T"

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_3
    const-string/jumbo v0, "HttpWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "By Http/Https to request. operationType="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " url="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->modifyRequestToKeepAlive(Lorg/apache/http/HttpRequest;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    const-string/jumbo v0, "https"

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {v1, v0, v3}, Lcom/alipay/mobile/common/transport/TransportStrategy;->fillCurrentReqInfo(ZLjava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getReadTimeout(Landroid/content/Context;)I

    move-result v0

    invoke-static {v5, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getConnTimeout(Landroid/content/Context;)I

    move-result v0

    invoke-static {v5, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v3, "ALL_TIME"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemDot(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getPostData()Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v3, "REQ_SIZE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getPostData()Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/http/entity/AbstractHttpEntity;->getContentLength()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g()I

    move-result v3

    const/16 v6, 0x50

    if-ne v3, v6, :cond_5

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getProxy(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v6

    sget-byte v7, Lcom/alipay/mobile/common/transport/http/HttpWorker;->s:B

    if-eq v7, v2, :cond_9

    sget-byte v6, Lcom/alipay/mobile/common/transport/http/HttpWorker;->s:B

    if-ne v6, v1, :cond_8

    invoke-direct {p0, v5, v3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    move v1, v2

    :goto_2
    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "alipay"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    if-ne v3, v2, :cond_d

    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v3, v0, v4, v5}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eq v1, v2, :cond_7

    sput-byte v1, Lcom/alipay/mobile/common/transport/http/HttpWorker;->s:B

    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "ALL_TIME"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/HttpResponse;)V

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0, v5}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/params/HttpParams;)V

    move v1, v2

    move-object v3, v4

    goto :goto_2

    :cond_9
    iget-object v7, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_a

    if-ne v6, v1, :cond_c

    :cond_a
    iget-byte v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->r:B

    if-eq v6, v2, :cond_b

    iget-byte v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->r:B

    if-ne v6, v1, :cond_c

    :cond_b
    invoke-direct {p0, v5, v3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    goto :goto_2

    :cond_c
    invoke-direct {p0, v5}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/params/HttpParams;)V

    const/4 v1, 0x0

    move-object v3, v4

    goto :goto_2

    :cond_d
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h()Ljava/net/URL;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/httpdns/CacheAddressHelper;->setAddressCache(Ljava/net/URL;)V

    goto :goto_3

    :cond_e
    move v1, v2

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1419
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->k:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->l:Z

    if-nez v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->j:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCache()Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->remove(Ljava/lang/String;)V

    .line 1421
    const-string/jumbo v0, "HttpWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeEtagFromCache\uff0c\u5b8c\u6210,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    :cond_0
    return-void
.end method

.method private c()Lorg/apache/http/HttpResponse;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 678
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h()Ljava/net/URL;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string/jumbo v4, "Version"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isContainerHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 719
    :cond_1
    :goto_1
    return-object v0

    .line 678
    :cond_2
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mobilegw"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "HttpWorker"

    const-string/jumbo v3, "===> Rpc push process does not use spdy <==="

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 683
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v1

    .line 684
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->isEnableExtTransport()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getExtTransportClient(Lcom/alipay/mobile/common/transport/context/TransportContext;)Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;

    move-result-object v1

    .line 687
    :goto_2
    if-eqz v1, :cond_1

    .line 689
    const-string/jumbo v0, "HttpWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "By "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-object v3, v3, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    iget-object v3, v3, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to request. operationType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    const-string/jumbo v2, "NET_CONTEXT"

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-interface {v0, v2, v3}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 693
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d()V

    .line 694
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v2, "ALL_TIME"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemDot(Ljava/lang/String;)V

    .line 697
    :try_start_0
    invoke-interface {v1}, Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;->getModuleCategory()I

    move-result v0

    if-nez v0, :cond_7

    .line 700
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 703
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->modifyRequestToKeepAlive(Lorg/apache/http/HttpRequest;)V

    .line 710
    :goto_3
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, v0, v2, v3}, Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 711
    invoke-interface {v1}, Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;->getModuleCategory()I

    move-result v1

    if-nez v1, :cond_5

    .line 712
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "ALL_TIME"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    .line 684
    goto/16 :goto_2

    .line 707
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    const-string/jumbo v2, "originRequest"

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-interface {v0, v2, v3}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 716
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "ALL_TIME"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    throw v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 865
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 866
    const-string/jumbo v0, "STALLED_TIME"

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->o:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->addEtag2RequestHeader()V

    .line 903
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    .line 904
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 905
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 906
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Uuid"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 907
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->rpcUUID:Ljava/lang/String;

    .line 909
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 915
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->COOKIE_CACHE_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mobilegw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->getCookie()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    const-string/jumbo v2, "Cookie"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :goto_1
    return-void

    .line 915
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->REPLACE_SPANNER_COOKIE_SWITCH:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string/jumbo v2, "T"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i()Landroid/webkit/CookieManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "mobilegw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->replaceSpannerCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_4

    :goto_2
    move-object v1, v0

    :cond_3
    :goto_3
    const-string/jumbo v0, "HttpWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "add cookie="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-string/jumbo v2, "Cookie"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "HttpWorker"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private f()Lorg/apache/http/HttpHost;
    .locals 4

    .prologue
    .line 998
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g:Lorg/apache/http/HttpHost;

    .line 1005
    :goto_0
    return-object v0

    .line 1002
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h()Ljava/net/URL;

    move-result-object v0

    .line 1003
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g:Lorg/apache/http/HttpHost;

    .line 1005
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g:Lorg/apache/http/HttpHost;

    goto :goto_0
.end method

.method private g()I
    .locals 3

    .prologue
    .line 1009
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h()Ljava/net/URL;

    move-result-object v0

    .line 1010
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    .line 1012
    :goto_0
    return v0

    .line 1010
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method private h()Ljava/net/URL;
    .locals 2

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Ljava/net/URL;

    .line 1026
    :goto_0
    return-object v0

    .line 1025
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Ljava/net/URL;

    .line 1026
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Ljava/net/URL;

    goto :goto_0
.end method

.method private i()Landroid/webkit/CookieManager;
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e:Landroid/webkit/CookieManager;

    .line 1431
    :goto_0
    return-object v0

    .line 1430
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e:Landroid/webkit/CookieManager;

    .line 1431
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e:Landroid/webkit/CookieManager;

    goto :goto_0
.end method


# virtual methods
.method protected addEtag2RequestHeader()V
    .locals 4

    .prologue
    .line 1363
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isUseEtag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1364
    const-string/jumbo v0, "HttpWorker"

    const-string/jumbo v1, "addEtag2RequestHeader. don\'t use etag. go return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    :goto_0
    return-void

    .line 1368
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 1371
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:Ljava/lang/String;

    .line 1374
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1376
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/alipay/mobile/common/cache/disk/CacheException;

    if-nez v2, :cond_1

    .line 1379
    check-cast v0, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    .line 1380
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "If-None-Match"

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->getEtag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    invoke-interface {v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 1382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->k:Z

    goto :goto_0

    .line 1386
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->k:Z

    goto :goto_0
.end method

.method public call()Lcom/alipay/mobile/common/transport/Response;
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v0, 0x0

    .line 332
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isBgRpc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 338
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "The network is not available"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->getCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 426
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "HttpException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 429
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 430
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 431
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->getCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 433
    :cond_2
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->monitorLog(Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    throw v0

    .line 343
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 349
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " trafic beyond limit"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    :catch_1
    move-exception v0

    .line 436
    :try_start_3
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "URISyntaxException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Url parser error!"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 354
    :cond_5
    :try_start_4
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 355
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transport/TransportCallback;->onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V

    .line 358
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/common/transport/TransportStrategy;->configInit(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 361
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e()V

    .line 365
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    const-string/jumbo v2, "http.cookie-store"

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d:Lorg/apache/http/client/CookieStore;

    invoke-interface {v1, v2, v3}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 372
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b()Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 375
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    sub-long v1, v4, v1

    invoke-virtual {v6, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addConnectTime(J)V

    .line 379
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d:Lorg/apache/http/client/CookieStore;

    invoke-interface {v1}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    .line 380
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isResetCookie()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 381
    const-string/jumbo v1, "R_COOKIE"

    const-string/jumbo v4, "T"

    invoke-direct {p0, v1, v4}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->removeAllCookie()V

    .line 383
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 385
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x3e8

    cmp-long v1, v6, v8

    if-gez v1, :cond_8

    .line 387
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_4
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 438
    :catch_2
    move-exception v0

    .line 439
    :try_start_5
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SSLHandshakeException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 441
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 442
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 443
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 445
    :cond_7
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 392
    :cond_8
    :try_start_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 396
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 397
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string/jumbo v4, "mobilegw"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    move v1, v0

    .line 399
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 401
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 402
    if-eqz v1, :cond_a

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 407
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transport/http/GwCookieCacheHelper;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; domain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "; Secure"

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    const-string/jumbo v4, "HttpWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "set cookie. cookie="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i()Landroid/webkit/CookieManager;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_6
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 447
    :catch_3
    move-exception v0

    .line 448
    :try_start_7
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SSLPeerUnverifiedException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 450
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 451
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 452
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 454
    :cond_b
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_c
    move v1, v0

    .line 397
    goto/16 :goto_1

    .line 410
    :cond_d
    :try_start_8
    const-string/jumbo v0, ""

    goto/16 :goto_3

    .line 421
    :cond_e
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/Response;
    :try_end_8
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    .line 564
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->monitorLog(Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    :goto_4
    return-object v0

    .line 456
    :catch_4
    move-exception v0

    .line 457
    :try_start_9
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SSLException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 459
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 460
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 461
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 463
    :cond_f
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 465
    :catch_5
    move-exception v0

    .line 466
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ConnectionPoolTimeoutException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectionPoolTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 468
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 469
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 470
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 472
    :cond_10
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 474
    :catch_6
    move-exception v0

    .line 476
    iget-byte v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:B

    if-eq v1, v10, :cond_11

    .line 477
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:B

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->r:B

    .line 478
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->q:B

    .line 479
    const/4 v0, -0x1

    sput-byte v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->s:B

    .line 480
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->call()Lcom/alipay/mobile/common/transport/Response;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    .line 564
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->monitorLog(Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    goto/16 :goto_4

    .line 483
    :cond_11
    :try_start_a
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ConnectTimeoutException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 485
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 486
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 487
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 489
    :cond_12
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 491
    :catch_7
    move-exception v0

    .line 492
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SocketTimeoutException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 494
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 495
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 496
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 498
    :cond_13
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 500
    :catch_8
    move-exception v0

    .line 501
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NoHttpResponseException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/NoHttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 503
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 504
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 505
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 507
    :cond_14
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 509
    :catch_9
    move-exception v0

    .line 510
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "HttpHostConnectException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/conn/HttpHostConnectException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 512
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 513
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 514
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/16 v3, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 516
    :cond_15
    const-string/jumbo v1, "HttpManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 517
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 518
    :catch_a
    move-exception v0

    .line 519
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "UnknownHostException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 521
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 522
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 523
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/16 v3, 0x9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 525
    :cond_16
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 527
    :catch_b
    move-exception v0

    .line 528
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IOException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 530
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 531
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 532
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 534
    :cond_17
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 536
    :catch_c
    move-exception v0

    .line 537
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 538
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NullPointerException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 541
    iget v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i:I

    if-gtz v1, :cond_18

    .line 542
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->i:I

    .line 543
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->call()Lcom/alipay/mobile/common/transport/Response;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v0

    .line 564
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->monitorLog(Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    goto/16 :goto_4

    .line 545
    :cond_18
    :try_start_b
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 546
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 548
    :cond_19
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    .line 551
    :catch_d
    move-exception v0

    .line 552
    const-string/jumbo v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Throwable;)V

    .line 554
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a()V

    .line 555
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 556
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 558
    :cond_1a
    const-string/jumbo v1, "HttpManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->call()Lcom/alipay/mobile/common/transport/Response;

    move-result-object v0

    return-object v0
.end method

.method protected fillResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1221
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getPeriod(Lorg/apache/http/HttpResponse;)J

    move-result-wide v2

    .line 1222
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    .line 1225
    if-eqz v0, :cond_0

    .line 1226
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getContentType(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 1227
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/HeaderConstant;->HEADER_KEY_CHARSET:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1228
    const-string/jumbo v4, "Content-Type"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1230
    :goto_0
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setContentType(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setCharset(Ljava/lang/String;)V

    .line 1232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setCreateTime(J)V

    .line 1233
    invoke-virtual {p1, v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setPeriod(J)V

    .line 1234
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected getContentType(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1047
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1048
    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1049
    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 1051
    const/16 v0, 0x3d

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    .line 1052
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1053
    const-string/jumbo v7, "Content-Type"

    aput-object v7, v0, v2

    .line 1054
    aput-object v6, v0, v8

    .line 1057
    :goto_1
    aget-object v6, v0, v2

    aget-object v0, v0, v8

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1056
    :cond_0
    const-string/jumbo v0, "="

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1059
    :cond_1
    return-object v3
.end method

.method protected getHeaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 317
    :goto_0
    return-object v0

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getPostData()Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_1

    .line 310
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getUri()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 311
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 312
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 317
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_0

    .line 314
    :cond_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_1
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n:Ljava/lang/String;

    .line 880
    :goto_0
    return-object v0

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string/jumbo v1, "operationType"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n:Ljava/lang/String;

    .line 877
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->n:Ljava/lang/String;

    goto :goto_0

    .line 880
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected getPeriod(Lorg/apache/http/HttpResponse;)J
    .locals 5

    .prologue
    .line 1243
    const-wide/16 v0, 0x0

    .line 1244
    const-string/jumbo v2, "Cache-Control"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 1245
    if-eqz v2, :cond_1

    .line 1246
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1247
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 1249
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->parserMaxage([Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1261
    :cond_0
    :goto_0
    return-wide v0

    .line 1250
    :catch_0
    move-exception v2

    .line 1251
    const-string/jumbo v3, "HttpWorker"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1256
    :cond_1
    const-string/jumbo v2, "Expires"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 1257
    if-eqz v2, :cond_0

    .line 1258
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    .line 1259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method protected getPostData()Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 283
    :goto_0
    return-object v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getReqData()[B

    move-result-object v0

    .line 273
    if-eqz v0, :cond_1

    .line 275
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    iget-boolean v1, v1, Lcom/alipay/mobile/common/transport/context/TransportContext;->reqGzip:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCompress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 281
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;

    goto :goto_0

    .line 279
    :cond_2
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;

    goto :goto_1
.end method

.method public getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mUrl:Ljava/lang/String;

    .line 253
    :cond_0
    if-nez v0, :cond_1

    .line 254
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "url should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected handleResponse(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/mobile/common/transport/Response;
    .locals 16

    .prologue
    .line 1073
    const-string/jumbo v2, "HttpWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5f00\u59cbhandle\uff0chandleResponse-1,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 1076
    const/4 v3, 0x0

    .line 1077
    if-eqz v2, :cond_3

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    .line 1079
    const-string/jumbo v3, "HttpWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "200\uff0c\u5f00\u59cb\u5904\u7406\uff0chandleResponse-2,threadid = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const/4 v3, 0x0

    .line 1083
    :try_start_0
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1085
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1088
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v12}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)V

    .line 1089
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    .line 1091
    const-string/jumbo v2, "ETag"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 1093
    array-length v3, v2

    if-lez v3, :cond_1

    .line 1094
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpWorker$DesKey;->get()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/alipay/mobile/common/security/Des;->encrypt([BLjava/lang/String;)[B

    move-result-object v3

    .line 1095
    if-eqz v3, :cond_1

    .line 1097
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isUseEtag()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1099
    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1103
    new-instance v6, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    invoke-direct {v6}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;-><init>()V

    .line 1104
    invoke-virtual {v6, v2}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->setEtag(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {v6, v3}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->setValue([B)V

    .line 1106
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->setTypeHeader(Lorg/apache/http/Header;)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->j:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCache()Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "ETag"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:Ljava/lang/String;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide/32 v9, 0x240c8400

    const-string/jumbo v11, "Serializable"

    invoke-virtual/range {v2 .. v11}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->putSerializable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;JJLjava/lang/String;)V

    .line 1110
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->l:Z

    .line 1120
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v13

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addSocketTime(J)V

    .line 1122
    new-instance v2, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-virtual/range {p0 .. p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v3

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v2, v3, v0, v1, v15}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    .line 1124
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->fillResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V

    .line 1125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->noteTraficConsume(Lcom/alipay/mobile/common/transport/Response;Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b(Ljava/lang/String;)V

    .line 1130
    :try_start_2
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1136
    const-string/jumbo v3, "HttpWorker"

    const-string/jumbo v4, "finally,handleResponse"

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    :goto_1
    return-object v2

    .line 1116
    :cond_1
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->l:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1128
    :catchall_0
    move-exception v2

    move-object v3, v12

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b(Ljava/lang/String;)V

    .line 1130
    if-eqz v3, :cond_2

    .line 1132
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1136
    :cond_2
    const-string/jumbo v3, "HttpWorker"

    const-string/jumbo v4, "finally,handleResponse"

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1133
    :catch_0
    move-exception v2

    .line 1134
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "ArrayOutputStream close error!"

    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1133
    :catch_1
    move-exception v2

    .line 1134
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "ArrayOutputStream close error!"

    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1140
    :cond_3
    if-nez v2, :cond_5

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v4, 0x130

    if-ne v2, v4, :cond_5

    .line 1143
    const/16 v2, 0x130

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 1148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    .line 1151
    if-eqz v2, :cond_5

    .line 1152
    new-instance v4, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-virtual/range {p0 .. p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->getValue()[B

    move-result-object v5

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v4, v3, v0, v1, v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    .line 1155
    invoke-virtual/range {p0 .. p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getPeriod(Lorg/apache/http/HttpResponse;)J

    move-result-wide v5

    .line 1157
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->getTypeHeader()Lorg/apache/http/Header;

    move-result-object v7

    .line 1158
    const/4 v2, 0x0

    .line 1159
    const/4 v3, 0x0

    .line 1160
    if-eqz v7, :cond_4

    .line 1161
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getContentType(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 1162
    const-string/jumbo v2, "charset"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1163
    const-string/jumbo v7, "Content-Type"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1165
    :cond_4
    invoke-virtual {v4, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setContentType(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setCharset(Ljava/lang/String;)V

    .line 1167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setCreateTime(J)V

    .line 1168
    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setPeriod(J)V

    move-object v2, v4

    goto/16 :goto_1

    .line 1128
    :catchall_1
    move-exception v2

    goto/16 :goto_2

    :cond_5
    move-object v2, v3

    goto/16 :goto_1
.end method

.method protected handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;
    .locals 6

    .prologue
    .line 1203
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;-><init>()V

    .line 1205
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1206
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1211
    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1473
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    move-result-object v0

    .line 1474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1475
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    const-string/jumbo v2, "reqDataDigest"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1478
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1480
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1484
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1488
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->hashcode(I)I

    move-result v0

    return v0
.end method

.method hashcode(I)I
    .locals 2

    .prologue
    .line 1495
    ushr-int/lit8 v0, p1, 0x14

    ushr-int/lit8 v1, p1, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr v0, p1

    .line 1496
    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v0, v0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method protected noteTraficConsume(Lcom/alipay/mobile/common/transport/Response;Lorg/apache/http/HttpResponse;)V
    .locals 9

    .prologue
    const-wide/16 v4, -0x1

    .line 599
    .line 600
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_6

    .line 601
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 602
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    :goto_0
    move-wide v2, v0

    .line 606
    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 607
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    .line 610
    :goto_2
    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    instance-of v6, p1, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    if-eqz v6, :cond_0

    .line 611
    check-cast p1, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    .line 613
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v6

    const-string/jumbo v7, "Content-Length"

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->getHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 614
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 620
    :cond_0
    :goto_3
    cmp-long v6, v0, v4

    if-nez v6, :cond_4

    if-eqz p2, :cond_4

    .line 621
    const-string/jumbo v6, "Content-Length"

    invoke-interface {p2, v6}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v6

    .line 622
    if-eqz v6, :cond_1

    array-length v7, v6

    if-lez v7, :cond_1

    .line 624
    const/4 v7, 0x0

    :try_start_1
    aget-object v6, v6, v7

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 629
    :cond_1
    :goto_4
    cmp-long v4, v4, v0

    if-nez v4, :cond_4

    .line 630
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 631
    if-eqz v4, :cond_4

    .line 632
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    .line 637
    :goto_5
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 638
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 641
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->noteTraficConsume(Ljava/lang/String;JJ)V

    .line 642
    return-void

    :cond_3
    move-wide v0, v4

    .line 602
    goto/16 :goto_0

    .line 616
    :catch_0
    move-exception v6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "HttpWorker"

    const-string/jumbo v8, "parse Content-Length error"

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 626
    :catch_1
    move-exception v6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "HttpWorker"

    const-string/jumbo v8, "parse Content-Length error"

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move-wide v4, v0

    goto :goto_5

    :cond_5
    move-wide v0, v4

    goto/16 :goto_2

    :cond_6
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method protected parserMaxage([Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 1271
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1272
    aget-object v1, p1, v0

    .line 1273
    const-string/jumbo v2, "max-age"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p1, v1

    if-eqz v1, :cond_0

    .line 1275
    add-int/lit8 v1, v0, 0x1

    :try_start_0
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1279
    :goto_1
    return-wide v0

    :catch_0
    move-exception v1

    .line 1271
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1279
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)Lcom/alipay/mobile/common/transport/Response;
    .locals 5

    .prologue
    .line 1448
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 1449
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    .line 1451
    const-string/jumbo v2, "HttpWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " resCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    const/16 v2, 0xce

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->willHandleOtherCode(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1457
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->handleResponse(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v0

    return-object v0
.end method

.method protected willHandleOtherCode(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 1293
    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    .line 1294
    const/4 v0, 0x1

    .line 1296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)V
    .locals 11

    .prologue
    .line 1320
    if-nez p4, :cond_0

    .line 1321
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1325
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1326
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getUngzippedContent(Ljava/io/InputStream;Lorg/apache/http/Header;)Ljava/io/InputStream;

    move-result-object v1

    .line 1327
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 1330
    const/16 v4, 0x800

    :try_start_0
    new-array v4, v4, [B

    .line 1331
    :cond_1
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1332
    const/4 v6, 0x0

    invoke-virtual {p4, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 1333
    int-to-long v5, v5

    add-long/2addr p2, v5

    .line 1334
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v5

    if-eqz v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_1

    .line 1335
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mRequest:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    long-to-double v7, p2

    long-to-double v9, v2

    div-double/2addr v7, v9

    invoke-interface {v5, v6, v7, v8}, Lcom/alipay/mobile/common/transport/TransportCallback;->onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1347
    :catch_0
    move-exception v0

    .line 1348
    :try_start_1
    const-string/jumbo v2, "HttpWorker"

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1349
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "HttpWorker Request Error!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1351
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1353
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/IOUtil;->closeStream(Ljava/io/Closeable;)V

    throw v0

    .line 1338
    :cond_2
    :try_start_2
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    .line 1340
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->getReaded()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    :try_start_3
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addDataSize(J)V

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mTransportContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    if-eqz v5, :cond_3

    const-string/jumbo v5, "RES_SIZE"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1341
    :cond_3
    :goto_1
    :try_start_4
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1342
    const-string/jumbo v4, "HttpWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "operationType="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getOperationType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHttpUriRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Origin data length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->getReaded()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " , readed data length: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ",  head len : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1353
    :cond_4
    invoke-static {v1}, Lcom/alipay/mobile/common/utils/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 1354
    return-void

    :catch_1
    move-exception v4

    goto :goto_1
.end method
