.class public final Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# static fields
.field public static DEFAULT_SYNC_MIN_GZIP_BYTES:J

.field private static a:[Ljava/lang/String;

.field private static final b:Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private final c:Lorg/apache/http/client/HttpClient;

.field private d:Ljava/lang/RuntimeException;

.field private volatile e:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    const-wide/16 v0, 0xa0

    sput-wide v0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "text/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "application/xml"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "application/json"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->a:[Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->b:Lorg/apache/http/HttpRequestInterceptor;

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 2

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "AndroidHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->d:Ljava/lang/RuntimeException;

    .line 182
    new-instance v0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$2;-><init>(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    .line 240
    return-void
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;)Z
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 533
    const-string/jumbo v2, "content-encoding"

    invoke-interface {p0, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 534
    if-eqz v3, :cond_2

    .line 535
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 536
    const-string/jumbo v6, "gzip"

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 552
    :cond_0
    :goto_1
    return v0

    .line 535
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 542
    :cond_2
    const-string/jumbo v2, "content-type"

    invoke-interface {p0, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 543
    if-eqz v4, :cond_0

    .line 544
    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    .line 545
    sget-object v7, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->a:[Ljava/lang/String;

    array-length v8, v7

    move v3, v1

    :goto_3
    if-ge v3, v8, :cond_4

    aget-object v9, v7, v3

    .line 546
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v0, v1

    .line 547
    goto :goto_1

    .line 545
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 544
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method static synthetic access$000()Lorg/apache/http/HttpRequestInterceptor;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->b:Lorg/apache/http/HttpRequestInterceptor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->e:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "curl "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v4, v1

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v1, v0

    if-nez p1, :cond_0

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Authorization"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Cookie"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string/jumbo v6, "--header \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\" "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    instance-of v0, p0, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v0

    instance-of v4, v0, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v4, :cond_6

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    :goto_1
    const-string/jumbo v1, "\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    cmp-long v1, v4, v6

    if-gez v1, :cond_5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-static {p0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "echo \'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' | base64 -d > /tmp/$$.bin; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " --data-binary @/tmp/$$.bin"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " --data-ascii \""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string/jumbo v0, " [TOO MUCH DATA TO INCLUDE]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public static getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 5

    .prologue
    .line 373
    const-string/jumbo v0, "RPC_PERF"

    const-string/jumbo v1, "gzip..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    array-length v0, p0

    int-to-long v0, v0

    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getMinGzipSize(Landroid/content/ContentResolver;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 376
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 386
    :goto_0
    return-object v0

    .line 378
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 379
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 380
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    .line 381
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 382
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 383
    const-string/jumbo v1, "gzip"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 384
    const-string/jumbo v1, "RPC_PERF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "gzip size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/http/entity/AbstractHttpEntity;->getContentLength()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMinGzipSize(Landroid/content/ContentResolver;)J
    .locals 2

    .prologue
    .line 394
    sget-wide v0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    return-wide v0
.end method

.method public static getUngzippedContent(Ljava/io/InputStream;Lorg/apache/http/Header;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 291
    if-nez p0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-object p0

    .line 293
    :cond_1
    if-eqz p1, :cond_0

    .line 295
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    .line 298
    const-string/jumbo v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 278
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getUngzippedContent(Ljava/io/InputStream;Lorg/apache/http/Header;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V
    .locals 2

    .prologue
    .line 249
    const-string/jumbo v0, "Accept-Encoding"

    const-string/jumbo v1, "gzip"

    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public static modifyRequestToKeepAlive(Lorg/apache/http/HttpRequest;)V
    .locals 2

    .prologue
    .line 266
    const-string/jumbo v0, "Connection"

    const-string/jumbo v1, "Keep-Alive"

    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .locals 8

    .prologue
    const/16 v7, 0x7530

    .line 132
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 136
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 138
    const/16 v0, 0x4e20

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 139
    invoke-static {v1, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 140
    const/16 v0, 0x2000

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 144
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 147
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 150
    :goto_0
    invoke-static {v1, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 151
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 152
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 153
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v4, "https"

    invoke-static {v7, v0}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v0, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 156
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 157
    const-wide/32 v2, 0xea60

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 158
    new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 159
    invoke-static {v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 160
    const/16 v2, 0x32

    invoke-static {v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 164
    new-instance v2, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    invoke-direct {v2, v0, v1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v2

    .line 147
    :cond_0
    new-instance v0, Landroid/net/SSLSessionCache;

    invoke-direct {v0, p1}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static parseDate(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 570
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/http/HttpDateTime;->parse(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->d:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->d:Ljava/lang/RuntimeException;

    .line 312
    :cond_0
    return-void
.end method

.method public final disableCurlLogging()V
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->e:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;

    .line 453
    return-void
.end method

.method public final enableCurlLogging(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    const/4 v0, 0x7

    if-le p2, v0, :cond_2

    .line 441
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Level is out of range [2..7]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_2
    new-instance v0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;ILcom/alipay/mobile/common/transport/http/AndroidHttpClient$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->e:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient$LoggingConfiguration;

    .line 446
    return-void
.end method

.method public final execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public final getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public final setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->c:Lorg/apache/http/client/HttpClient;

    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 258
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 259
    return-void
.end method
