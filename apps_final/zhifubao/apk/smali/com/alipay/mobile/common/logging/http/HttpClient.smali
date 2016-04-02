.class public Lcom/alipay/mobile/common/logging/http/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# static fields
.field private static a:Landroid/net/http/AndroidHttpClient;

.field private static d:I


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/logging/http/HttpClient;->a:Landroid/net/http/AndroidHttpClient;

    .line 37
    const/high16 v0, 0x200000

    sput v0, Lcom/alipay/mobile/common/logging/http/HttpClient;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->b:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->c:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private a()Ljava/net/URL;
    .locals 3

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 52
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 187
    .line 189
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 192
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :try_start_1
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 195
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v2, v1, v4, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 196
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 200
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 205
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 207
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 213
    :goto_0
    return-object v0

    .line 208
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 201
    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    if-eqz v2, :cond_0

    .line 206
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 207
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 208
    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 205
    :goto_2
    if-eqz v2, :cond_1

    .line 206
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 207
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 210
    :goto_3
    throw v0

    .line 208
    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 204
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 201
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private b()Lorg/apache/http/HttpHost;
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 174
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 176
    if-eqz v1, :cond_0

    .line 177
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 180
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/http/HttpClient;->a()Ljava/net/URL;

    move-result-object v2

    .line 106
    sget-object v3, Lcom/alipay/mobile/common/logging/http/HttpClient;->a:Landroid/net/http/AndroidHttpClient;

    if-nez v3, :cond_0

    .line 107
    const-string/jumbo v3, "alipay"

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->c:Landroid/content/Context;

    invoke-static {v3, v4}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/common/logging/http/HttpClient;->a:Landroid/net/http/AndroidHttpClient;

    .line 110
    :cond_0
    sget-object v3, Lcom/alipay/mobile/common/logging/http/HttpClient;->a:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 111
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/http/HttpClient;->b()Lorg/apache/http/HttpHost;

    move-result-object v4

    .line 112
    const-string/jumbo v5, "http.route.default-proxy"

    invoke-interface {v3, v5, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 114
    if-eqz v2, :cond_1

    const-string/jumbo v3, ""

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    :cond_1
    :goto_0
    return-object v1

    .line 117
    :cond_2
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 119
    if-eqz v3, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    const/16 v1, 0x50

    .line 122
    const-string/jumbo v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    const/16 v1, 0x1bb

    .line 125
    :cond_3
    new-instance v4, Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v1, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 127
    if-eqz p1, :cond_6

    .line 128
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/http/HttpClient;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    div-long/2addr v5, v7

    .line 133
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "curUploadDay"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c(Ljava/lang/String;)J

    move-result-wide v7

    .line 134
    cmp-long v3, v5, v7

    if-eqz v3, :cond_4

    .line 136
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "curUploadDay"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v5, v6}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;J)V

    .line 137
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "curUploadTrafic"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v3, v5, v6}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;I)V

    .line 151
    :goto_1
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v3, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 152
    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v1, v0

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 156
    :goto_2
    const-string/jumbo v1, "Content-type"

    const-string/jumbo v3, "text/xml"

    invoke-interface {v2, v1, v3}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object v1, Lcom/alipay/mobile/common/logging/http/HttpClient;->a:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v1, v4, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    goto/16 :goto_0

    .line 140
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "curUploadTrafic"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->b(Ljava/lang/String;)I

    move-result v3

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " trafic("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") total="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/String;)V

    .line 144
    sget v5, Lcom/alipay/mobile/common/logging/http/HttpClient;->d:I

    if-le v3, v5, :cond_5

    .line 145
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " upload trafic limited:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "upload log file fail "

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 147
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "curUploadTrafic"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    array-length v7, v1

    add-int/2addr v3, v7

    invoke-virtual {v5, v6, v3}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 154
    :cond_6
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public final a(Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 62
    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/http/HttpClient;->a()Ljava/net/URL;

    move-result-object v3

    .line 65
    if-nez v3, :cond_0

    .line 94
    :goto_0
    return-object v2

    .line 69
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/logging/http/HttpClient;->a:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_1

    .line 70
    const-string/jumbo v0, "alipay"

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 71
    sput-object v0, Lcom/alipay/mobile/common/logging/http/HttpClient;->a:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string/jumbo v1, "http.route.default-proxy"

    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/http/HttpClient;->b()Lorg/apache/http/HttpHost;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 74
    :cond_1
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 75
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 78
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v6, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    :cond_3
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string/jumbo v0, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1bb

    .line 85
    :goto_2
    new-instance v5, Lorg/apache/http/HttpHost;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/http/HttpClient;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "utf-8"

    invoke-static {v4, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v1, "Content-type"

    const-string/jumbo v3, "text/xml"

    invoke-virtual {v0, v1, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v1, Lcom/alipay/mobile/common/logging/http/HttpClient;->a:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v1, v5, v0}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    move-object v2, v0

    .line 94
    goto/16 :goto_0

    .line 84
    :cond_4
    const/16 v0, 0x50

    goto :goto_2

    .line 90
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_3
.end method
